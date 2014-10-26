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

namespace ITCR.IntegrateAlTrabajo.Interfaz.Empresa
{
    public partial class frmDetallesOferta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Nombre_Usuario"] == null)
                {
                    Response.Redirect("/home.aspx");
                }
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
                lblNombrePuestoDato.Text =TablaOfertaTrabajo.Rows[0]["Nom_Puesto"].ToString();
                lblDescripcionDato.Text = TablaOfertaTrabajo.Rows[0]["Dsc_OfertaTrabajo"].ToString();
                lblTipoDato.Text = obtenerNombreTipoOfertaTrabajo(Int16.Parse(TablaOfertaTrabajo.Rows[0]["FK_IdTipoOfertaTrabajo"].ToString()));
                lblCategoriaDato.Text = obtenerNombreCategoriaOfertaTrabajo(Int16.Parse(TablaOfertaTrabajo.Rows[0]["FK_IdCategoriaOfertaTrabajo"].ToString()));
                lblObservacionesDato.Text = TablaOfertaTrabajo.Rows[0]["InformacionAdicional"].ToString();
                lblVencimiento.Text = TablaOfertaTrabajo.Rows[0]["Vencimiento"].ToString();
                if (bool.Parse(TablaOfertaTrabajo.Rows[0]["Ind_Activa"].ToString()))
                {
                    lblEstado.Text = "Activa";
                }
                else
                {
                    lblEstado.Text = "Inactiva";
                }
                Session["detalles_oferta"] = TablaOfertaTrabajo;
            }
            cIATRequisitoOfertaTrabajoNegocios Requisitos = new cIATRequisitoOfertaTrabajoNegocios(1, "A", 2, "B");
            Requisitos.FK_IdOfertaTrabajo = OfertaTrabajo.Id_OfertaTrabajo;
            DataTable TablaRequisitos = Requisitos.Buscar();
            if (TablaRequisitos.Rows.Count > 0)
            {
                dgRequisitos.DataSource = TablaRequisitos;
                dgRequisitos.DataBind();
                HttpContext.Current.Session["oferta_requisitos"] = TablaRequisitos;
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

        protected void ibtnEditarOferta_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/Empresa/frmEditarOfertaTrabajo.aspx");
        }

        protected void ibtEliminarOferta_Click(object sender, ImageClickEventArgs e)
        {
            string code = @"<script type='text/javascript'>eliminarOferta('" + Int16.Parse(Session["Id_OfertaTrabajo"].ToString()) + "');</script>";
            ScriptManager.RegisterStartupScript(this, typeof(Page), "alert", code, false);
        }

        [WebMethod]
        public static void eliminarOferta(int id_oferta)
        {
            cIATRequisitoOfertaTrabajoNegocios n_req = new cIATRequisitoOfertaTrabajoNegocios(1, "A", 2, "B");
            n_req.FK_IdOfertaTrabajo = id_oferta;
            foreach (DataRow requisito in ((DataTable)HttpContext.Current.Session["oferta_requisitos"]).Rows)
            {
                n_req.Id_RequisitoOfertaTrabajo = Int16.Parse(requisito[0].ToString());
                n_req.Eliminar();
            }
            cIATOfertaTrabajoNegocios oferta = new cIATOfertaTrabajoNegocios(1, "A", 2, "B");
            oferta.Id_OfertaTrabajo = id_oferta;
            oferta.Eliminar();
        }

        protected void btnInteresados_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Empresa/frmInteresados.aspx");
        }

        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Empresa/frmOfertasTrabajo.aspx");
        }
    }
}