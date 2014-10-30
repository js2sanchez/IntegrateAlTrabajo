using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ITCR.IntegrateAlTrabajo.Negocios;
using ITCR.IntegrateAlTrabajo.Datos;
using System.Collections;
using System.Web.Services;

namespace ITCR.IntegrateAlTrabajo.Interfaz.Empresa
{
    public partial class frmEditarOfertaTrabajo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Nombre_Usuario"] == null)
                {
                    Response.Redirect("/home.aspx");
                }
                HttpContext.Current.Session["requisitos_borrar"] = new ArrayList();
                HttpContext.Current.Session["requisitos_agregar"] = new ArrayList();
                cargarDropDownListCategorias();
                cargarDropDownListTipo();
                cargarDatosOfertaTrabajo();

            }
        }

        private void cargarDatosOfertaTrabajo()
        {
            if (Session["detalles_oferta"] !=null)
            {
                DataTable TablaOfertaTrabajo = (DataTable)Session["detalles_oferta"];
                HttpContext.Current.Session["id_empresa"] = TablaOfertaTrabajo.Rows[0]["FK_IdEmpresa"];
                HttpContext.Current.Session["id_provincia"] = TablaOfertaTrabajo.Rows[0]["FK_IdProvincia"];
                txtNombrePuesto.Text = TablaOfertaTrabajo.Rows[0]["Nom_Puesto"].ToString();
                txtDescripcion.Text = TablaOfertaTrabajo.Rows[0]["Dsc_OfertaTrabajo"].ToString();
                drpTipo.SelectedIndex = Int16.Parse(TablaOfertaTrabajo.Rows[0]["FK_IdTipoOfertaTrabajo"].ToString())-1;
                drpCategoria.SelectedIndex = Int16.Parse(TablaOfertaTrabajo.Rows[0]["FK_IdCategoriaOfertaTrabajo"].ToString())-1;
                txtObservaciones.Text = TablaOfertaTrabajo.Rows[0]["InformacionAdicional"].ToString();
                if (bool.Parse(TablaOfertaTrabajo.Rows[0]["Ind_Activa"].ToString()))
                {
                     ckbEstado.Checked = true;
                }
                else
                {
                    ckbEstado.Checked = false;
                }
            }
            if (HttpContext.Current.Session["oferta_requisitos"] != null)
            {
                dgRequisitos.DataSource = Session["oferta_requisitos"];
                dgRequisitos.DataBind();
            }
        }

        private void cargarDropDownListTipo()
        {
            drpTipo.Items.Clear();
            cIATTipoTrabajoNegocios TipoServicio = new cIATTipoTrabajoNegocios(1, "A", 2, "B");
            DataTable TablaTipoServicio = TipoServicio.SeleccionarTodos();

            for (int i = 0; i < TablaTipoServicio.Rows.Count; i++)
            {
                ListItem ItemTipoServicio = new ListItem(TablaTipoServicio.Rows[i]["Nom_TipoTrabajo"].ToString(), TablaTipoServicio.Rows[i]["Id_TipoTrabajo"].ToString());
                drpTipo.Items.Add(ItemTipoServicio);
            }
        }

        private void cargarDropDownListCategorias()
        {
            drpCategoria.Items.Clear();
            cIATCategoriaTrabajoNegocios Categoria = new cIATCategoriaTrabajoNegocios(1, "A", 2, "B");
            DataTable TablaCategoria = Categoria.SeleccionarTodos();

            for (int i = 0; i < TablaCategoria.Rows.Count; i++)
            {
                ListItem ItemCategoria = new ListItem(TablaCategoria.Rows[i]["Nom_CategoriaTrabajo"].ToString(), TablaCategoria.Rows[i]["Id_CategoriaTrabajo"].ToString());
                drpCategoria.Items.Add(ItemCategoria);
            }
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            dgRequisitos.DataSource = ((DataTable)HttpContext.Current.Session["oferta_requisitos"]);
            dgRequisitos.DataBind();
            Validate("gvOfertaTrabajo");

            if (Page.IsValid)
            {
                cIATOfertaTrabajoNegocios OfertaTrabajo = new cIATOfertaTrabajoNegocios(1, "A", 2, "B");

                OfertaTrabajo.Id_OfertaTrabajo = Int16.Parse(Session["Id_OfertaTrabajo"].ToString());
                OfertaTrabajo.Nom_Puesto = txtNombrePuesto.Text;

                if (txtDescripcion.Text.CompareTo("") != 0)
                {
                    OfertaTrabajo.Dsc_OfertaTrabajo = txtDescripcion.Text;
                }
                
                if (txtObservaciones.Text.CompareTo("") != 0)
                {
                    OfertaTrabajo.InformacionAdicional = txtObservaciones.Text;
                }
                OfertaTrabajo.Vencimiento = cldVencimiento.SelectedDate;
                OfertaTrabajo.Ind_Activa = ckbEstado.Checked;
                OfertaTrabajo.FK_IdCategoriaOfertaTrabajo = Int16.Parse(drpCategoria.SelectedValue);
                OfertaTrabajo.FK_IdTipoOfertaTrabajo = Int16.Parse(drpTipo.SelectedValue);
                OfertaTrabajo.FK_IdEmpresa = Int16.Parse(HttpContext.Current.Session["id_empresa"].ToString());
                OfertaTrabajo.FK_IdProvincia = Int16.Parse(HttpContext.Current.Session["id_provincia"].ToString());
                cIATRequisitoOfertaTrabajoNegocios n_requisito = new cIATRequisitoOfertaTrabajoNegocios(1, "A", 2, "B");
                n_requisito.FK_IdOfertaTrabajo = OfertaTrabajo.Id_OfertaTrabajo;
                try
                {
                    foreach (object requisito in ((ArrayList)HttpContext.Current.Session["requisitos_borrar"]))
                    {
                        n_requisito.Id_RequisitoOfertaTrabajo = Int16.Parse(requisito.ToString());
                        n_requisito.Eliminar();
                    }
                    foreach (object requisito in ((ArrayList)HttpContext.Current.Session["requisitos_agregar"]))
                    {
                        n_requisito.Detalle = requisito.ToString();
                        n_requisito.Insertar();
                    }
                    OfertaTrabajo.Actualizar();
                    string script = @"<script type='text/javascript'>
                            retornar();</script>";
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "Datos de empresa", script, false);
                }
                catch
                {
                    string script = @"<script type='text/javascript'>
                            custom_alert('No se pudo establecer conexión con la base de datos. por favor, vuelvalo a intentar.');</script>";
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "Datos de empresa", script, false);
                }
            }
        }

        protected void btnAgregarRequisito_Click(object sender, EventArgs e)
        {
            DataRow requisito = ((DataTable)HttpContext.Current.Session["oferta_requisitos"]).NewRow();
            requisito["Detalle"] = txtRequisitos.Text;
            ((ArrayList)HttpContext.Current.Session["requisitos_agregar"]).Add(txtRequisitos.Text);
            txtRequisitos.Text = "";
            ((DataTable)HttpContext.Current.Session["oferta_requisitos"]).Rows.Add(requisito);
            dgRequisitos.DataSource = ((DataTable)HttpContext.Current.Session["oferta_requisitos"]);
            dgRequisitos.DataBind();
        }

        [WebMethod]
        public static void eliminarRequisito(int index)
        {
            object id_req_obj = ((DataTable)HttpContext.Current.Session["oferta_requisitos"]).Rows[index][0];
            try
            {
                int id_req = Int16.Parse(id_req_obj.ToString());
                ((ArrayList)HttpContext.Current.Session["requisitos_borrar"]).Add(id_req);
            }
            catch
            {
                ((ArrayList)HttpContext.Current.Session["requisitos_agregar"]).Remove(((DataTable)HttpContext.Current.Session["oferta_requisitos"]).Rows[index][1]);
            }
            ((DataTable)HttpContext.Current.Session["oferta_requisitos"]).Rows.RemoveAt(index);            
        }

        protected void dgRequisitos_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (e.CommandName == "Eliminar")
            {
                string code = @"<script type='text/javascript'>eliminarRequisito(" + e.Item.ItemIndex + ");</script>";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alert", code, false);
            }
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            dgRequisitos.DataSource = ((DataTable)HttpContext.Current.Session["oferta_requisitos"]);
            dgRequisitos.DataBind();
            string code = @"<script type='text/javascript'>endConfirmation();</script>";
            ScriptManager.RegisterStartupScript(this, typeof(Page), "alert", code, false);
        }
        

    }
}