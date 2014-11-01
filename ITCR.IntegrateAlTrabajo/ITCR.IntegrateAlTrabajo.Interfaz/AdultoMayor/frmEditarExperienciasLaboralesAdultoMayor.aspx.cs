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
    public partial class frmEditarExperienciasLaboralesAdultoMayor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Nombre_Usuario"] == null)
                {
                    Response.Redirect("/Default.aspx");
                }
                btnActualizar.Visible = false;
                btnCancelarActualizar.Visible = false;
                btnAgregar.Visible = true;
                btnCancelarAgregar.Visible = true;
                cargarDataGridExperienciasLaborales();
            }
        }

        private void cargarDataGridExperienciasLaborales()
        {
            dgExperienciasLaborales.DataSource = " ";
            PanelTablaDatosExperienciasLaborales.Visible = false;

            cIATExperienciaLaboralNegocios ExperienciaLaboral = new cIATExperienciaLaboralNegocios(1, "A", 2, "B");

            cIATUsuarioNegocios Usuario = new cIATUsuarioNegocios(1, "A", 2, "B");

            Usuario.Nom_Usuario = Session["Nombre_Usuario"].ToString();
            DataTable TablaUsuario = Usuario.Buscar();

            Int16 IdUsuario = 0;

            if (TablaUsuario.Rows.Count > 0)
            {
                IdUsuario = Int16.Parse(TablaUsuario.Rows[0]["Id_Usuario"].ToString());
            }

            cIATPersonaNegocios Persona = new cIATPersonaNegocios(1, "A", 2, "B");

            Persona.FK_IdUsuario = IdUsuario;
            DataTable TablaPersona = Persona.Buscar();

            Int16 IdPersona = 0;

            if (TablaPersona.Rows.Count > 0)
            {
                IdPersona = Int16.Parse(TablaPersona.Rows[0]["Id_Persona"].ToString());
                Session["Id_Persona"] = IdPersona.ToString();
            }

            ExperienciaLaboral.FK_IdPersona = IdPersona;
            DataTable TablaEstudio = ExperienciaLaboral.Buscar();

            if (TablaEstudio.Rows.Count > 0)
            {
                dgExperienciasLaborales.DataSource = TablaEstudio;
                dgExperienciasLaborales.DataBind();
                PanelTablaDatosExperienciasLaborales.Visible = true;
            }
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            Validate("gvExperienciasLaborales");

            if (Page.IsValid)
            {
                cIATExperienciaLaboralNegocios ExperienciaLaboral = new cIATExperienciaLaboralNegocios(1, "A", 2, "B");
                ExperienciaLaboral.Id_ExperienciaLaboral = Int16.Parse(Session["Id_ExperienciaLaboral"].ToString());
                ExperienciaLaboral.Empresa = txtEmpresa.Text;
                ExperienciaLaboral.Puesto = txtPuesto.Text;
                ExperienciaLaboral.FK_IdPersona = Int16.Parse(Session["Id_Persona"].ToString());

                ExperienciaLaboral.Actualizar();

                txtEmpresa.Text = "";
                txtPuesto.Text = "";
                txtEmpresa.Focus();

                btnAgregar.Visible = true;
                btnActualizar.Visible = false;

                cargarDataGridExperienciasLaborales();
            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Validate("gvExperienciasLaborales");

            if (Page.IsValid)
            {
                cIATExperienciaLaboralNegocios ExperienciaLaboral = new cIATExperienciaLaboralNegocios(1, "A", 2, "B");

                ExperienciaLaboral.Empresa = txtEmpresa.Text;
                ExperienciaLaboral.Puesto = txtPuesto.Text;
                ExperienciaLaboral.FK_IdPersona = Int16.Parse(Session["Id_Persona"].ToString());

                ExperienciaLaboral.Insertar();

                txtEmpresa.Text = "";
                txtPuesto.Text = "";
                txtEmpresa.Focus();
                cargarDataGridExperienciasLaborales();
            }
        }

        protected void dgExperienciasLaborales_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (e.CommandName == "Editar")
            {
                Session["Id_ExperienciaLaboral"] = e.Item.Cells[0].Text;
                txtEmpresa.Text = e.Item.Cells[1].Text;
                txtPuesto.Text = e.Item.Cells[2].Text;

                btnActualizar.Visible = true;
                btnCancelarActualizar.Visible = true;
                btnAgregar.Visible = false;
                btnCancelarAgregar.Visible = false;
                cargarDataGridExperienciasLaborales();
            }
            else if (e.CommandName == "Eliminar")
            {
                int index = Int16.Parse(e.Item.Cells[0].Text);
                string code = @"<script type='text/javascript'>eliminarExperiencia(" + index + "," + e.Item.ItemIndex + ");</script>";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alert", code, false);
            }
        }

        [WebMethod]
        public static void eliminarExperiencia(int index)
        {
            cIATExperienciaLaboralNegocios Estudio = new cIATExperienciaLaboralNegocios(1, "A", 2, "B");
            Estudio.Id_ExperienciaLaboral = index;
            Estudio.Eliminar();
        }

        protected void dgExperienciasLaborales_ItemDataBound(object sender, DataGridItemEventArgs e)
        {
            e.Item.Cells[4].Attributes.Add("onClick", "return confirmarBorradoExperienciaLaboral();");
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmConsultarPerfilAdultoMayor.aspx");
        }

        protected void btnCancelarAgregar_Click(object sender, EventArgs e)
        {
            txtPuesto.Text = "";
            txtEmpresa.Text = "";
        }

        protected void btnCancelarActualizar_Click(object sender, EventArgs e)
        {
            txtPuesto.Text = "";
            txtEmpresa.Text = "";
            btnActualizar.Visible = false;
            btnCancelarActualizar.Visible = false;
            btnAgregar.Visible = true;
            btnCancelarAgregar.Visible = true;
        }

    }
}