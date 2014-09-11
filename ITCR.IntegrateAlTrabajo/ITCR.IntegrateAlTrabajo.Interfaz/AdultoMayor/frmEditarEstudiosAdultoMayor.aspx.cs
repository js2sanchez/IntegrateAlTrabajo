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
    public partial class frmEditarEstudiosAdultoMayor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnAgregar.Visible = true;
                btnActualizar.Visible = false;
                btnCancelarAgregar.Visible = true;
                btnCancelarActualizar.Visible = false;                
                HttpContext.Current.Session["onChangeRow"] = -1;
                cargarDataGridEstudios();
            }            
        }

        private void cargarDataGridEstudios()
        {
            dgEstudios.DataSource = " ";
            PanelTablaDatosEstudios.Visible = false;

            cIATEstudioNegocios Estudio = new cIATEstudioNegocios(1, "A", 2, "B");

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

            Estudio.FK_IdPersona = IdPersona;
            DataTable TablaEstudio = Estudio.Buscar();

            if (TablaEstudio.Rows.Count > 0)
            {
                dgEstudios.DataSource = TablaEstudio;
                dgEstudios.DataBind();
                PanelTablaDatosEstudios.Visible = true;
            }
        }

        protected void dgEstudios_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (e.CommandName == "Editar")
            {
                Session["Id_Estudio"] = e.Item.Cells[0].Text;
                txtInstitucionEstudio.Text = e.Item.Cells[1].Text;
                txtTituloEstudio.Text = e.Item.Cells[2].Text;
                btnActualizar.Visible = true;
                btnCancelarActualizar.Visible = true;
                btnAgregar.Visible = false;
                btnCancelarAgregar.Visible = false;
                cargarDataGridEstudios();
            }
            else if (e.CommandName == "Eliminar")
            {
                int index = Int16.Parse(e.Item.Cells[0].Text);
                string code = @"<script type='text/javascript'>eliminarEstudio(" + index +","+  e.Item.ItemIndex + ");</script>";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alert", code, false);
            }
        }

        [WebMethod]
        public static void eliminarEstudio(int index)
        {
            cIATEstudioNegocios Estudio = new cIATEstudioNegocios(1, "A", 2, "B");
            Estudio.Id_Estudio = index;
            Estudio.Eliminar();
        }
         
        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            Validate("gvEstudios");

            if (Page.IsValid)
            {
                cIATEstudioNegocios Estudio = new cIATEstudioNegocios(1, "A", 2, "B");
                Estudio.Id_Estudio = Int16.Parse(Session["Id_Estudio"].ToString());
                Estudio.Institucion = txtInstitucionEstudio.Text;
                Estudio.Titulo = txtTituloEstudio.Text;
                Estudio.FK_IdPersona = Int16.Parse(Session["Id_Persona"].ToString());

                Estudio.Actualizar();

                txtInstitucionEstudio.Text = "";
                txtTituloEstudio.Text = "";
                txtInstitucionEstudio.Focus();

                btnAgregar.Visible = true;
                btnActualizar.Visible = false;

                cargarDataGridEstudios();
            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Validate("gvEstudios");

            if (Page.IsValid)
            {
                cIATEstudioNegocios Estudio = new cIATEstudioNegocios(1, "A", 2, "B");

                Estudio.Institucion = txtInstitucionEstudio.Text;
                Estudio.Titulo = txtTituloEstudio.Text;
                Estudio.FK_IdPersona = Int16.Parse(Session["Id_Persona"].ToString());

                Estudio.Insertar();

                txtInstitucionEstudio.Text = "";
                txtTituloEstudio.Text = "";
                txtInstitucionEstudio.Focus();

                cargarDataGridEstudios();
            }
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmConsultarPerfilAdultoMayor.aspx");
        }

        protected void btnCancelarAgregar_Click(object sender, EventArgs e)
        {
            txtTituloEstudio.Text = "";
            txtInstitucionEstudio.Text = "";
        }

        protected void btnCancelarActualizar_Click(object sender, EventArgs e)
        {
            txtTituloEstudio.Text = "";
            txtInstitucionEstudio.Text = "";
            btnActualizar.Visible = false;
            btnCancelarActualizar.Visible = false;
            btnAgregar.Visible = true;
            btnCancelarAgregar.Visible = true;
        }

    }
}
