using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ITCR.IntegrateAlTrabajo.Negocios;
using ITCR.IntegrateAlTrabajo.Datos;

namespace ITCR.IntegrateAlTrabajo.Interfaz.Empresa
{
    public partial class frmDatosServicio : System.Web.UI.Page
    {
        cIATServicioNegocios Servicio = new cIATServicioNegocios(1, "A", 2, "B");

        //cIATPersonaNegocios Persona = new cIATPersonaNegocios(1, "A", 2, "B");
        //cIATUsuarioNegocios Usuario = new cIATUsuarioNegocios(1, "A", 2, "B");
        //List<string> ListaIdiomas = new List<string>();

        protected void Page_Load(object sender, EventArgs e)
        {            
            if (!IsPostBack)
            {
                //Edicion
                //txtPasatiempo.Visible = false;             
                //Comprobar sesion
                if (Session["Nombre_Usuario"] == null)
                {
                    Response.Redirect("/HOME.aspx");
                }
                //Cargas
                //cargarServicio();
                cargarDatosServicio();                
                cargarDataGridDiasServicio();
                //cargarDataGridExperienciasLaborales();
                //cargarIdiomas();
                //chkIdiomas.Enabled = false;
            }
        }

        private void cargarDatosServicio()
        {
            Servicio.Id_Servicio = Int16.Parse(Session["Id_servicio"].ToString());

            DataTable TablaServicio = Servicio.Buscar();

            Int16 IdCategoria = 0;
            Int16 IdTipo = 0;

            if (TablaServicio.Rows.Count > 0)
            {
                lblNombreDato.Text = TablaServicio.Rows[0]["Nom_Servicio"].ToString();
                lblDescripcionDato.Text = TablaServicio.Rows[0]["Descripcion"].ToString();
                IdCategoria = Int16.Parse(TablaServicio.Rows[0]["FK_IdCategoriaServicio"].ToString());
                IdTipo = Int16.Parse(TablaServicio.Rows[0]["FK_IdTipoServicio"].ToString());
            }

            cIATCategoriaTrabajoNegocios Categoria = new cIATCategoriaTrabajoNegocios(1, "A", 2, "B");
            cIATTipoTrabajoNegocios Tipo = new cIATTipoTrabajoNegocios(1, "A", 2, "B");

            Categoria.Id_CategoriaTrabajo = IdCategoria;
            Tipo.Id_TipoTrabajo = IdTipo;

            DataTable TablaTipo = Tipo.Buscar();

            if (TablaTipo.Rows.Count > 0)
            {
                lblTipoDato.Text = TablaTipo.Rows[0]["Nom_TipoTrabajo"].ToString();
            }

            DataTable TablaCategoria = Categoria.Buscar();

            if (TablaCategoria.Rows.Count > 0)
            {
                lblCategoriaDato.Text = TablaCategoria.Rows[0]["Nom_CategoriaTrabajo"].ToString();
            }
        }

        private void cargarDataGridDiasServicio()
        {
            dgDiasServicio.DataSource = " ";
            PanelDiasServicio.Visible = true;

            cIATDiaServicioNegocios Dia = new cIATDiaServicioNegocios(1, "A", 2, "B");

            Dia.FK_IdServicio = Int16.Parse(Session["Id_servicio"].ToString());

            DataTable TablaDia = Dia.Buscar();

            if (TablaDia.Rows.Count > 0)
            {
                dgDiasServicio.DataSource = TablaDia;
                dgDiasServicio.DataBind();
            }
        }
    }
}