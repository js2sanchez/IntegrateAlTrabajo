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
    public partial class frmDetallesOferta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarDatosOfertaTrabajo();
            }
        }

        private void cargarDatosOfertaTrabajo()
        {
            cIATOfertaTrabajoNegocios OfertaTrabajo = new cIATOfertaTrabajoNegocios(1, "A", 2, "B");
            OfertaTrabajo.Id_OfertaTrabajo = Int16.Parse(Session["Id_OfertaTrabajo"].ToString());
            DataTable TablaOfertaTrabajo = OfertaTrabajo.Buscar();
            if (TablaOfertaTrabajo.Rows.Count > 0)
            {
                lblNombrePuestoDato.Text = TablaOfertaTrabajo.Rows[0]["Nom_Puesto"].ToString();
                lblDescripcionDato.Text = TablaOfertaTrabajo.Rows[0]["Dsc_OfertaTrabajo"].ToString();
                lblTipoDato.Text = obtenerNombreTipoOfertaTrabajo(Int16.Parse(TablaOfertaTrabajo.Rows[0]["FK_IdTipoOfertaTrabajo"].ToString()));
                lblCategoriaDato.Text = obtenerNombreCategoriaOfertaTrabajo(Int16.Parse(TablaOfertaTrabajo.Rows[0]["FK_IdCategoriaOfertaTrabajo"].ToString()));
                lblObservacionesDato.Text = TablaOfertaTrabajo.Rows[0]["InformacionAdicional"].ToString();
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
    }
}