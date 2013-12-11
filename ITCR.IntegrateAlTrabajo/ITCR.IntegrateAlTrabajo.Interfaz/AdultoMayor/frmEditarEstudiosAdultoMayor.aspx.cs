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
    public partial class frmEditarEstudiosAdultoMayor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnAgregar.Visible = true;
                btnActualizar.Visible = false;
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
                txtAñoInicialEstudio.Text = e.Item.Cells[1].Text;
                txtAñoFinalEstudio.Text = e.Item.Cells[2].Text;
                txtInstitucionEstudio.Text = e.Item.Cells[3].Text;
                txtTituloEstudio.Text = e.Item.Cells[4].Text;

                btnActualizar.Visible = true;
                btnAgregar.Visible = false;
            }
            else if (e.CommandName == "Eliminar")
            {
                cIATEstudioNegocios Estudio = new cIATEstudioNegocios(1, "A", 2, "B");

                Estudio.Id_Estudio = Int16.Parse(e.Item.Cells[0].Text);
                Estudio.Eliminar();
                cargarDataGridEstudios();
            }
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            cIATEstudioNegocios Estudio = new cIATEstudioNegocios(1, "A", 2, "B");
            Estudio.Id_Estudio = Int16.Parse(Session["Id_Estudio"].ToString());
            Estudio.AnnoInicial = Int16.Parse(txtAñoInicialEstudio.Text);
            Estudio.AnnoFinal = Int16.Parse(txtAñoFinalEstudio.Text);
            Estudio.Institucion = txtInstitucionEstudio.Text;
            Estudio.Titulo = txtTituloEstudio.Text;
            Estudio.FK_IdPersona = Int16.Parse(Session["Id_Persona"].ToString());

            Estudio.Actualizar();

            txtAñoInicialEstudio.Text = "";
            txtAñoFinalEstudio.Text = "";
            txtInstitucionEstudio.Text = "";
            txtTituloEstudio.Text = "";
            txtAñoInicialEstudio.Focus();

            btnAgregar.Visible = true;
            btnActualizar.Visible = false;

            cargarDataGridEstudios();
        }

        protected void dgEstudios_ItemDataBound(object sender, DataGridItemEventArgs e)
        {
            e.Item.Cells[6].Attributes.Add("onClick", "return confirmarBorradoEstudio();");
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Validate("gvEstudios");

            if (Page.IsValid)
            {
                cIATEstudioNegocios Estudio = new cIATEstudioNegocios(1, "A", 2, "B");

                Estudio.AnnoInicial = Int16.Parse(txtAñoInicialEstudio.Text);
                Estudio.AnnoFinal = Int16.Parse(txtAñoFinalEstudio.Text);
                Estudio.Institucion = txtInstitucionEstudio.Text;
                Estudio.Titulo = txtTituloEstudio.Text;
                Estudio.FK_IdPersona = Int16.Parse(Session["Id_Persona"].ToString());

                Estudio.Insertar();

                txtAñoInicialEstudio.Text = "";
                txtAñoFinalEstudio.Text = "";
                txtInstitucionEstudio.Text = "";
                txtTituloEstudio.Text = "";
                txtAñoInicialEstudio.Focus();

                cargarDataGridEstudios();
            }
        }

    }
}