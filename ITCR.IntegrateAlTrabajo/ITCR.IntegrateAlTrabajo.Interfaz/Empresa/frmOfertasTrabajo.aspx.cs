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
    public partial class frmOfertasTrabajo : System.Web.UI.Page
    {
        private static Int16 IdEmpresa = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarIdEmpresa();
                cargarDataGridOfertasTrabajo();
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

        private void cargarDataGridOfertasTrabajo()
        {
            PanelTablaDatos.Visible = false;
            dgOfertaTrabajo.DataSource = null;
            cIATOfertaTrabajoNegocios OfertaTrabajo = new cIATOfertaTrabajoNegocios(1, "A", 2, "B");
            OfertaTrabajo.FK_IdEmpresa = IdEmpresa;

            DataTable TablaOfertaTrabajo = OfertaTrabajo.Buscar();

            if (TablaOfertaTrabajo.Rows.Count > 0)
            {
                dgOfertaTrabajo.DataSource = TablaOfertaTrabajo;
                dgOfertaTrabajo.DataBind();

                foreach (DataGridItem Fila in dgOfertaTrabajo.Items)
                {
                    if (Fila.Cells[4].Text == "True")
                    {
                        Fila.Cells[5].Text = "Activa";
                    }
                    else
                    {
                        Fila.Cells[5].Text = "Inactiva";
                    }
                    Fila.Cells[7].Text = obtenerNombreTipoOfertaTrabajo(Int16.Parse(Fila.Cells[6].Text));
                    Fila.Cells[9].Text = obtenerNombreCategoriaOfertaTrabajo(Int16.Parse(Fila.Cells[8].Text));
                }
                PanelTablaDatos.Visible = true;
                lblNoOfertas.Visible = false;
            }
        }

        private String obtenerNombreTipoOfertaTrabajo(Int16 IdTipoOfertaTrabajo)
        {
            cIATTipoTrabajoNegocios TipoOfertaTrabajo = new cIATTipoTrabajoNegocios(1, "A", 2, "B");
            TipoOfertaTrabajo.Id_TipoTrabajo = IdTipoOfertaTrabajo;

            DataTable TablaTipoOfertaTrabajo = TipoOfertaTrabajo.Buscar();

            String NombreTipoOfertaTrabajo = "";

            if (TablaTipoOfertaTrabajo.Rows.Count > 0)
            {
                NombreTipoOfertaTrabajo = TablaTipoOfertaTrabajo.Rows[0]["Nom_TipoTrabajo"].ToString();
            }

            return NombreTipoOfertaTrabajo;
        }

        private String obtenerNombreCategoriaOfertaTrabajo(Int16 IdCategoriaOfertaTrabajo)
        {
            cIATCategoriaTrabajoNegocios CategoriaOfertaTrabajo = new cIATCategoriaTrabajoNegocios(1, "A", 2, "B");
            CategoriaOfertaTrabajo.Id_CategoriaTrabajo = IdCategoriaOfertaTrabajo;

            DataTable TablaCategoriaOfertaTrabajo = CategoriaOfertaTrabajo.Buscar();

            String NombreCategoriaOfertaTrabajo = "";

            if (TablaCategoriaOfertaTrabajo.Rows.Count > 0)
            {
                NombreCategoriaOfertaTrabajo = TablaCategoriaOfertaTrabajo.Rows[0]["Nom_CategoriaTrabajo"].ToString();
            }

            return NombreCategoriaOfertaTrabajo;
        }

        protected void dgOfertaTrabajo_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (e.CommandName == "Detalles")
            {
                Session["Id_OfertaTrabajo"] = Int16.Parse(e.Item.Cells[0].Text);
                Response.Redirect("/Empresa/frmDetallesOferta.aspx");
            }
        }

    }    
}