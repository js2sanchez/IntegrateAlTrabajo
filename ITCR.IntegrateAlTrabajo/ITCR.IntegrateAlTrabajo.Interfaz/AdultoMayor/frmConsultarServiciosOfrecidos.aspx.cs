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
                Session["Id_Servicio"] = "0";
                PanelNoDatos.Visible = false;
                mostrarServicios();
            }
        }

        protected void mostrarServicios()
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
                    Fila.Cells[4].Text = obtenerTiposServicios(Fila.Cells[4].Text);
                    Fila.Cells[5].Text = obtenerDiasServicios(Fila.Cells[0].Text);
                }
                PanelTablaDatos.Visible = true;
            }
            else
            {
                PanelNoDatos.Visible = true;
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

        protected String obtenerDiasServicios(String IdServicio)
        {
            cIATDiaServicioNegocios DiaBuscar = new cIATDiaServicioNegocios(1, "A", 2, "B");
            DiaBuscar.FK_IdServicio = Int16.Parse(IdServicio.ToString());
            DataTable TablaDias = DiaBuscar.Buscar();

            String Dias = "";
            if (TablaDias.Rows.Count > 0)
            {
                Dias = TablaDias.Rows[0]["Nom_Dia"].ToString() + "(" + TablaDias.Rows[0]["Can_Horas"].ToString() + ")";

                for (int i = 1; i < TablaDias.Rows.Count; i++)
                {
                    Dias = Dias + ", " + TablaDias.Rows[i]["Nom_Dia"].ToString() + "(" + TablaDias.Rows[i]["Can_Horas"].ToString() + ")";
                }
            }

            return Dias;
        }

        protected void dgServicios_DeleteCommand(object source, DataGridCommandEventArgs e)
        {


        }

        protected void dgServicios_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (e.CommandName == "Eliminar")
            {
                Int16 IdServicio = Int16.Parse(e.Item.Cells[0].Text.ToString());
                string code = @"<script type='text/javascript'>eliminarServicio(" + IdServicio + e.Item.ItemIndex + ");</script>";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alert", code, false);
                mostrarServicios();
            }

            if (e.CommandName == "Editar")
            {
                
            }
        }

        [WebMethod]
        public static void eliminarServicio(String pIdServicio)
        {
            //Solución al problema de "0" al final del pIdServicio
            int Tamaño = pIdServicio.Length;
            String NuevoIdServicio = pIdServicio.Substring(0, Tamaño - 1);
            int IdServicio = int.Parse(NuevoIdServicio);

            cIATDiaServicioNegocios DiaEliminar = new cIATDiaServicioNegocios(1, "A", 2, "B");
            DiaEliminar.FK_IdServicio = IdServicio;
            DataTable TablaDias = DiaEliminar.Buscar();

            for (int i = 0; i < TablaDias.Rows.Count; i++)
            {
                Int16 IdDia = Int16.Parse(TablaDias.Rows[i]["Id_DiaServicio"].ToString());
                DiaEliminar.Id_DiaServicio = IdDia;
                DiaEliminar.Eliminar();
            }

            cIATServicioNegocios ServicioEliminar = new cIATServicioNegocios(1, "A", 2, "B");
            ServicioEliminar.Id_Servicio = IdServicio;
            ServicioEliminar.Eliminar();

            
        }

        protected void dgServicios_ItemDataBound(object sender, DataGridItemEventArgs e)
        {
            string code = @"<script type='text/javascript'>endConfirmation();</script>";
            ScriptManager.RegisterStartupScript(this, typeof(Page), "alert", code, false); 
            e.Item.Cells[7].Attributes.Add("onClick", "return ConfirmarEliminarServicio();");
        }
    }
}