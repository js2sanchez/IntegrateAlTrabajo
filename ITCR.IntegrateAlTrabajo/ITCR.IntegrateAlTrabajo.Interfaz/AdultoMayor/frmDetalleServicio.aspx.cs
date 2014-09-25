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
    public partial class frmDetalleServicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarDatosServicio();
            }
        }

        private void cargarDatosServicio()
        {
            cIATServicioNegocios Servicio = new cIATServicioNegocios(1, "A", 2, "B");
            Servicio.Id_Servicio = Int16.Parse(Session["IdServicio"].ToString());

            DataTable TablaServicios = Servicio.Buscar();

            if (TablaServicios.Rows.Count > 0)
            {
                lblNombreDato.Text = TablaServicios.Rows[0]["Nom_Servicio"].ToString();
                lblDescripcionDato.Text = TablaServicios.Rows[0]["Descripcion"].ToString();
                lblTipoServicioDato.Text = obtenerDetalleTipoServicio(TablaServicios.Rows[0]["FK_IdCategoriaServicio"].ToString());
                lblCategoriaServicioDato.Text = obtenerDetalleCategoriaServicio(TablaServicios.Rows[0]["FK_IdTipoServicio"].ToString());
                lblDiasHorasDato.Text = obtenerDiasServicios(Session["IdServicio"].ToString());
            }
        }

        protected String obtenerDetalleCategoriaServicio(String Categoria)
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

        protected String obtenerDetalleTipoServicio(String Tipo)
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
                Dias = obtenerTextoDia(TablaDias.Rows[0]["Nom_Dia"].ToString()) + " (" + TablaDias.Rows[0]["Can_Horas"].ToString() + " horas" + ")";

                for (int i = 1; i < TablaDias.Rows.Count; i++)
                {
                    Dias = Dias + ", " + obtenerTextoDia(TablaDias.Rows[i]["Nom_Dia"].ToString()) + " (" + TablaDias.Rows[i]["Can_Horas"].ToString() + " horas" + ")";
                }
            }

            return Dias;
        }

        private String obtenerTextoDia(String pAbreviaturaDia)
        {
            String TextoDia = "";
            switch (pAbreviaturaDia)
            {
                case "L":
                    TextoDia = "Lunes";
                    break;
                case "K":
                    TextoDia = "Martes";
                    break;
                case "M":
                    TextoDia = "Miércoles";
                    break;
                case "J":
                    TextoDia = "Jueves";
                    break;
                case "V":
                    TextoDia = "Viernes";
                    break;
                case "S":
                    TextoDia = "Sábado";
                    break;
                case "D":
                    TextoDia = "Domingo";
                    break;
                default:
                    TextoDia = "";
                    break;
            }
            return TextoDia;
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmConsultarServiciosOfrecidos.aspx");
        }

        protected void ibtnEditarServicio_Click(object sender, ImageClickEventArgs e)
        {
            Session["IdServicio"] = Session["IdServicio"].ToString();
            Response.Redirect("frmActualizarServicio.aspx");
        }
    }
}