using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ITCR.IntegrateAlTrabajo.Negocios;
using ITCR.IntegrateAlTrabajo.Datos;
using System.Web.Services;

namespace ITCR.IntegrateAlTrabajo.Interfaz.AdultoMayor
{
    public partial class frmPublicarOfertaTrabajo : System.Web.UI.Page
    {
        private static Int16 IdEmpresa = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Nombre_Usuario"] == null)
                {
                    Response.Redirect("/Default.aspx");
                }
                cldVencimiento.SelectedDate = DateTime.Now;
                cargarIdEmpresa();
                btnAgregar.Visible = true;
                cargarTodosDropDownList();
                DataTable Requisitos = new DataTable();
                inicializarComponentesGraficos();
                Requisitos.Columns.Add("Req_Oferta", typeof(string));
                HttpContext.Current.Session["tabla_requisitos"] = Requisitos;
            }
        }


        #region DatosIniciales

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

        private void cargarIdEmpresa()
        {
            cIATUsuarioNegocios Usuario = new cIATUsuarioNegocios(1, "A", 2, "B");

            Usuario.Nom_Usuario = Session["Nombre_Usuario"].ToString();
            DataTable TablaUsuario = Usuario.Buscar();

            Int16 IdUsuario = 0;

            if (TablaUsuario.Rows.Count > 0)
            {
                IdUsuario = Int16.Parse(TablaUsuario.Rows[0]["Id_Usuario"].ToString());
            }

            cIATEmpresaNegocios Empresa = new cIATEmpresaNegocios(1, "A", 2, "B");
            Empresa.FK_IdUsuario = IdUsuario;

            DataTable TablaEmpresa = Empresa.Buscar();

            if (TablaEmpresa.Rows.Count > 0)
            {
                IdEmpresa = Int16.Parse(TablaEmpresa.Rows[0]["Id_Empresa"].ToString());
            }
        }

        private void cargarTodosDropDownList()
        {
            cargarDropDownListTipo();
            cargarDropDownListCategorias();
        }

        #endregion

        [WebMethod]
        public static void eliminarRequisito(int index)
        {
            ((DataTable)HttpContext.Current.Session["tabla_requisitos"]).Rows.RemoveAt(index);
        }

        protected void dgRequisitos_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (e.CommandName == "Eliminar")
            {
                string code = @"<script type='text/javascript'>eliminarRequisito(" + e.Item.ItemIndex + ");</script>";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alert", code, false);
            }
        }

        private void inicializarComponentesGraficos()
        {
            txtNombrePuesto.Text = "";
            txtDescripcion.Text = "";
            txtRequisitos.Text = "";
            txtObservaciones.Text = "";
            drpCategoria.SelectedIndex = 0;
            drpTipo.SelectedIndex = 0;
            btnAgregar.Visible = true;
        }

        private Int16 encontrarProvincia()
        {
            cIATEmpresaNegocios Empresa = new cIATEmpresaNegocios(1, "A", 2, "B");
            Empresa.Id_Empresa = IdEmpresa;
            DataTable tablaEmpresa = Empresa.Buscar();
            cIATDistritoNegocios Distrito = new cIATDistritoNegocios(1, "A", 2, "B");
            if (tablaEmpresa.Rows.Count > 0)
            {
                Distrito.Id_Distrito = Int16.Parse(tablaEmpresa.Rows[0]["Fk_IdDistrito"].ToString());
            }

            DataTable TablaDistrito = Distrito.Buscar();
            Int16 IdCanton = 0;
            if (TablaDistrito.Rows.Count > 0)
            {
                IdCanton = Int16.Parse(TablaDistrito.Rows[0]["FK_IdCanton"].ToString());
            }
            cIATCantonNegocios Canton = new cIATCantonNegocios(1, "A", 2, "B");
            Canton.Id_Canton = IdCanton;
            DataTable TablaCanton = Canton.Buscar();
            Int16 IdProvincia = 0;
            if (TablaCanton.Rows.Count > 0)
            {
                IdProvincia = Int16.Parse(TablaCanton.Rows[0]["FK_IdProvincia"].ToString());
            }
            return IdProvincia;
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            dgRequisitos.DataSource = ((DataTable)HttpContext.Current.Session["tabla_requisitos"]);
            dgRequisitos.DataBind();
            Validate("gvOfertaTrabajo");

            if (Page.IsValid)
            {
                cIATOfertaTrabajoNegocios OfertaTrabajo = new cIATOfertaTrabajoNegocios(1, "A", 2, "B");
                OfertaTrabajo.Nom_Puesto = txtNombrePuesto.Text;

                if (txtDescripcion.Text.CompareTo("") != 0)
                {
                    OfertaTrabajo.Dsc_OfertaTrabajo = txtDescripcion.Text;
                }


                if (txtObservaciones.Text.CompareTo("") != 0)
                {
                    OfertaTrabajo.InformacionAdicional = txtObservaciones.Text;
                }
                OfertaTrabajo.Ind_Activa = true;
                OfertaTrabajo.Vencimiento = cldVencimiento.SelectedDate;
                OfertaTrabajo.FK_IdCategoriaOfertaTrabajo = Int16.Parse(drpCategoria.SelectedValue);
                OfertaTrabajo.FK_IdTipoOfertaTrabajo = Int16.Parse(drpTipo.SelectedValue);
                OfertaTrabajo.FK_IdEmpresa = IdEmpresa;

                OfertaTrabajo.FK_IdProvincia = encontrarProvincia();

                OfertaTrabajo.Insertar();
                cIATRequisitoOfertaTrabajoNegocios n_requisito = new cIATRequisitoOfertaTrabajoNegocios(1, "A", 2, "B");
                n_requisito.FK_IdOfertaTrabajo = OfertaTrabajo.Id_OfertaTrabajo;
                foreach (DataRow req in ((DataTable)HttpContext.Current.Session["tabla_requisitos"]).Rows)
                {
                    n_requisito.Detalle = req["Req_Oferta"].ToString();
                    n_requisito.Insertar();
                }
                string script = @"<script type='text/javascript'>
                            retornar();</script>";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Datos de empresa", script, false);
            }
        }

        protected void dgOfertaTrabajo_ItemDataBound(object sender, DataGridItemEventArgs e)
        {
            e.Item.Cells[12].Attributes.Add("onClick", "return confirmarBorradoOfertaTrabajo();");
        }

        protected void btnAgregarRequisito_Click(object sender, EventArgs e)
        {
            Validate("gvOfertaTrabajo2");

            if (Page.IsValid)
            {
                DataRow requisito = ((DataTable)HttpContext.Current.Session["tabla_requisitos"]).NewRow();
                requisito["Req_Oferta"] = txtRequisitos.Text;
                ((DataTable)HttpContext.Current.Session["tabla_requisitos"]).Rows.Add(requisito);
                dgRequisitos.DataSource = ((DataTable)HttpContext.Current.Session["tabla_requisitos"]);
                dgRequisitos.DataBind();
                txtRequisitos.Text = "";

                if (((DataTable)HttpContext.Current.Session["tabla_requisitos"]).Rows.Count > 0)
                {
                    dgRequisitos.Visible = true;
                }
                else
                {
                    dgRequisitos.Visible = false;
                }

            }
        }

    }
}