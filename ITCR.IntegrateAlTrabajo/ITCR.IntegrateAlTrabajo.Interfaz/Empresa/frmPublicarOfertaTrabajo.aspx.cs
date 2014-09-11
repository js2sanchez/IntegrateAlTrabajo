using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ITCR.IntegrateAlTrabajo.Negocios;
using ITCR.IntegrateAlTrabajo.Datos;

namespace ITCR.IntegrateAlTrabajo.Interfaz.AdultoMayor
{
    public partial class frmPublicarOfertaTrabajo : System.Web.UI.Page
    {
        private static Int16 IdEmpresa = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarIdEmpresa();
                btnAgregar.Visible = true;
                cargarTodosDropDownList();                
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

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Validate("gvOfertaTrabajo");

            if (Page.IsValid)
            {
                cIATOfertaTrabajoNegocios OfertaTrabajo = new cIATOfertaTrabajoNegocios(1, "A", 2, "B");
                OfertaTrabajo.Nom_Puesto = txtNombrePuesto.Text;

                if (txtDescripcion.Text.CompareTo("") != 0)
                {
                    OfertaTrabajo.Dsc_OfertaTrabajo = txtDescripcion.Text;
                }

                OfertaTrabajo.Txt_Requisitos = txtRequisitos.Text;

                if (txtObservaciones.Text.CompareTo("") != 0)
                {
                    OfertaTrabajo.InformacionAdicional = txtObservaciones.Text;
                }
                OfertaTrabajo.Ind_Activa = true;
                OfertaTrabajo.FK_IdCategoriaOfertaTrabajo = Int16.Parse(drpCategoria.SelectedValue);
                OfertaTrabajo.FK_IdTipoOfertaTrabajo = Int16.Parse(drpTipo.SelectedValue);
                OfertaTrabajo.FK_IdEmpresa = IdEmpresa;

                OfertaTrabajo.Insertar();
                string script = @"<script type='text/javascript'>
                            retornar();</script>";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Datos de empresa", script, false);
            }
        }

        protected void dgOfertaTrabajo_ItemDataBound(object sender, DataGridItemEventArgs e)
        {
            e.Item.Cells[12].Attributes.Add("onClick", "return confirmarBorradoOfertaTrabajo();");
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
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

                OfertaTrabajo.Txt_Requisitos = txtRequisitos.Text;

                if (txtObservaciones.Text.CompareTo("") != 0)
                {
                    OfertaTrabajo.InformacionAdicional = txtObservaciones.Text;
                }
                OfertaTrabajo.Ind_Activa = true;
                OfertaTrabajo.FK_IdCategoriaOfertaTrabajo = Int16.Parse(drpCategoria.SelectedValue);
                OfertaTrabajo.FK_IdTipoOfertaTrabajo = Int16.Parse(drpTipo.SelectedValue);
                OfertaTrabajo.FK_IdEmpresa = IdEmpresa;

                OfertaTrabajo.Actualizar();
                inicializarComponentesGraficos();
            }
        }
    }
}