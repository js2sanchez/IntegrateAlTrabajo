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
    public partial class frmConsultarServiciosOfrecidos : System.Web.UI.Page
    {
        cIATDiaServicioNegocios DiaServicio = new cIATDiaServicioNegocios(1, "A", 2, "B");
        cIATServicioNegocios Servicio = new cIATServicioNegocios(1, "A", 2, "B");
        cIATUsuarioNegocios Usuario = new cIATUsuarioNegocios(1, "A", 2, "B");
        cIATPersonaNegocios Persona = new cIATPersonaNegocios(1, "A", 2, "B");

        protected void Page_Load(object sender, EventArgs e)
        {            
            if (!IsPostBack)
            {
                if (Session["Nombre_Usuario"] == null)
                {
                    Response.Redirect("/home.aspx");
                }
                try
                {
                    Session["Id_Servicio"] = "0";
                    PanelNoDatos.Visible = false;
                    mostrarServicios();
                }
                catch
                {
                    string script = @"<script type='text/javascript'>
                            mostrarErrorSistema();
                            </script>";

                    ScriptManager.RegisterStartupScript(this, typeof(Page), "Error del sistema", script, false);
                }
            }
        }

        protected void mostrarServicios()
        {
            try
            {
                dgServicios.DataSource = "";
                PanelTablaDatos.Visible = false;
                Usuario.Nom_Usuario = Convert.ToString(Session["Nombre_Usuario"]);
                DataTable TablaUsuario = Usuario.Buscar();

                Int16 IdUsuario = 0;

                if (TablaUsuario.Rows.Count > 0)
                {
                    IdUsuario = Int16.Parse(TablaUsuario.Rows[0]["Id_Usuario"].ToString());
                }

                Persona.FK_IdUsuario = IdUsuario;
                DataTable TablaPersona = Persona.Buscar();

                Int16 IdPersona = 0;

                if (TablaPersona.Rows.Count > 0)
                {
                    IdPersona = Int16.Parse(TablaPersona.Rows[0]["Id_Persona"].ToString());
                }

                dgServicios.DataSource = null;
                cIATServicioNegocios ServicioBuscar = new cIATServicioNegocios(1, "A", 2, "B");
                ServicioBuscar.FK_IdPersona = IdPersona;

                DataTable TablaServicio = ServicioBuscar.Buscar();

                if (TablaServicio.Rows.Count > 0)
                {
                    dgServicios.DataSource = TablaServicio;
                    dgServicios.DataBind();

                    foreach (DataGridItem Fila in dgServicios.Items)
                    {
                        Fila.Cells[3].Text = obtenerCategoriasServicios(Fila.Cells[3].Text);
                        Fila.Cells[2].Text = obtenerTiposServicios(Fila.Cells[2].Text);
                    }
                    PanelTablaDatos.Visible = true;
                }
                else
                {
                    PanelNoDatos.Visible = true;
                }
            }
            catch
            {
                string script = @"<script type='text/javascript'>
                            mostrarErrorSistema();
                            </script>";

                ScriptManager.RegisterStartupScript(this, typeof(Page), "Error del sistema", script, false);
            }
        }

        protected String obtenerCategoriasServicios(String Categoria)
        {
            cIATCategoriaTrabajoNegocios CategoriaBuscar = new cIATCategoriaTrabajoNegocios(1, "A", 2, "B");
            CategoriaBuscar.Id_CategoriaTrabajo = Int16.Parse(Categoria.ToString());
            DataTable TablaCategoria = CategoriaBuscar.Buscar();

            if (TablaCategoria.Rows.Count > 0)
            {
                Categoria = TablaCategoria.Rows[0]["Nom_CategoriaTrabajo"].ToString();
            }

            return Categoria;
        }

        protected String obtenerTiposServicios(String Tipo)
        {
            cIATTipoTrabajoNegocios TipoBuscar = new cIATTipoTrabajoNegocios(1, "A", 2, "B");
            TipoBuscar.Id_TipoTrabajo = Int16.Parse(Tipo.ToString());
            DataTable TablaTipo = TipoBuscar.Buscar();

            if (TablaTipo.Rows.Count > 0)
            {
                Tipo = TablaTipo.Rows[0]["Nom_TipoTrabajo"].ToString();
            }

            return Tipo;
        }

        protected void dgServicios_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            try
            {
                if (e.CommandName == "VerDetalles")
                {
                    Session["IdServicio"] = e.Item.Cells[0].Text;
                    Response.Redirect("frmDetalleServicio.aspx");
                }
            }
            catch
            {
                string script = @"<script type='text/javascript'>
                            mostrarErrorSistema();
                            </script>";

                ScriptManager.RegisterStartupScript(this, typeof(Page), "Error del sistema", script, false);
            }
        }
    }
}