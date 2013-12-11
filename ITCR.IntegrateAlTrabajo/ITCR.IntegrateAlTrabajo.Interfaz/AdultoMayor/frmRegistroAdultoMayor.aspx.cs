using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ITCR.IntegrateAlTrabajo.Negocios;
using ITCR.IntegrateAlTrabajo.Datos;
using System.Security.Cryptography;
using System.Collections;

namespace ITCR.IntegrateAlTrabajo.Interfaz.AdultoMayor
{
    public partial class frmRegistroAdultoMayor : System.Web.UI.Page
    {
        private static cIATPersonaNegocios Persona = new cIATPersonaNegocios(1, "A", 2, "B");
        private static cIATUsuarioNegocios Usuario = new cIATUsuarioNegocios(1, "A", 2, "B");
        cIATEstudioNegocios Estudio = new cIATEstudioNegocios(1, "A", 2, "B");
        cIATExperienciaLaboralNegocios ExperienciaLaboral = new cIATExperienciaLaboralNegocios(1, "A", 2, "B");
        cIATIdiomaNegocios Idioma = new cIATIdiomaNegocios(1, "A", 2, "B");
        private static cIATContactoNegocios TelefonoHabitacion = new cIATContactoNegocios(1, "A", 2, "B");
        private static cIATContactoNegocios TelefonoCelular = new cIATContactoNegocios(1, "A", 2, "B");
        private static cIATContactoNegocios CorreoElectronico = new cIATContactoNegocios(1, "A", 2, "B");

        cIATIdiomaXPersonaNegocios IdiomaXPersona = new cIATIdiomaXPersonaNegocios(1, "A", 2, "B");

        DataTable TablaEstudios = new DataTable();
        private static ArrayList ListaEstudios = new ArrayList();

        DataTable TablaExperienciasLaborales = new DataTable();
        private static ArrayList ListaExperienciasLaborales = new ArrayList();

        private static ArrayList ListaIdiomas = new ArrayList();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListaEstudios.Clear();
                ListaExperienciasLaborales.Clear();
                ListaIdiomas.Clear();
                mvRegistroAdultoMayor.ActiveViewIndex = 0;
                btnFinalizar.Enabled = false;
                cargarTodosDropDownList();
            }
        }

        #region DatosIniciales

        private void cargarDropDownListSexo()
        {
            drpSexo.Items.Clear();
            ListItem ItemSexo1 = new ListItem("M");
            ListItem ItemSexo2 = new ListItem("F");
            drpSexo.Items.Add(ItemSexo1);
            drpSexo.Items.Add(ItemSexo2);
        }

        private void cargarDropDownListProvincias()
        {
            drpProvincia.Items.Clear();
            cIATProvinciaNegocios Provincia = new cIATProvinciaNegocios(1, "A", 2, "B");
            DataTable TablaProvincia = Provincia.SeleccionarTodos();

            for (int i = 0; i < TablaProvincia.Rows.Count; i++)
            {
                ListItem ItemProvincia = new ListItem(TablaProvincia.Rows[i]["Nom_Provincia"].ToString(), TablaProvincia.Rows[i]["Id_Provincia"].ToString());
                drpProvincia.Items.Add(ItemProvincia);
            }
        }

        private void cargarDropDownListCantones()
        {
            drpCanton.Items.Clear();
            cIATCantonNegocios Canton = new cIATCantonNegocios(1, "A", 2, "B");

            Canton.FK_IdProvincia = Int32.Parse(drpProvincia.SelectedValue);
            DataTable TablaCanton = Canton.Buscar();

            for (int i = 0; i < TablaCanton.Rows.Count; i++)
            {
                ListItem ItemCanton = new ListItem(TablaCanton.Rows[i]["Nom_Canton"].ToString(), TablaCanton.Rows[i]["Id_Canton"].ToString());
                drpCanton.Items.Add(ItemCanton);
            }
        }

        private void cargarDropDownListDistritos()
        {
            drpDistrito.Items.Clear();
            cIATDistritoNegocios Distrito = new cIATDistritoNegocios(1, "A", 2, "B");

            Distrito.FK_IdCanton = Int32.Parse(drpCanton.SelectedValue);
            DataTable TablaDistrito = Distrito.Buscar();

            for (int i = 0; i < TablaDistrito.Rows.Count; i++)
            {
                ListItem ItemDistrito = new ListItem(TablaDistrito.Rows[i]["Nom_Distrito"].ToString(), TablaDistrito.Rows[i]["Id_Distrito"].ToString());
                drpDistrito.Items.Add(ItemDistrito);
            }
        }

        private void cargarTodosDropDownList()
        {
            cargarDropDownListSexo();
            cargarDropDownListProvincias();
            cargarDropDownListCantones();
            cargarDropDownListDistritos();
        }

        #endregion

        protected void btnSiguiente1_Click(object sender, EventArgs e)
        {
            Validate("gvDatosPersonales");

            if (Page.IsValid)
            {
                Persona.Nom_Persona = txtNombrePersona.Text;
                Persona.Apellido1 = txtApellido1.Text;
                Persona.Apellido2 = txtApellido2.Text;
                Persona.Num_Cedula = txtCedula.Text;
                Persona.Fec_Nacimiento = DateTime.Parse(txtFechaNacimiento.Text);
                Persona.Sexo = drpSexo.SelectedValue;
                Persona.FK_IdDistrito = Int16.Parse(drpDistrito.SelectedValue);

                TelefonoHabitacion.Detalle = txtTelefonoHabitacion.Text;
                TelefonoCelular.Detalle = txtCelular.Text;
                CorreoElectronico.Detalle = txtCorreoElectronico.Text;

                mvRegistroAdultoMayor.ActiveViewIndex = 1;
            }
        }

        protected void btnSiguiente2_Click(object sender, EventArgs e)
        {
            Validate("gvDatosAutenticacion");

            if (Page.IsValid)
            {
                if (txtContraseña.Text.CompareTo(txtConfirmacionContraseña.Text) == 0)
                {
                    Usuario.Nom_Usuario = txtNombreUsuario.Text;
                    Usuario.Contrasenna = txtContraseña.Text;
                    Usuario.Indicio_Contrasenna = txtIndicioContraseña.Text;
                    Usuario.Estado = 1; //CAMBIAR
                    Usuario.FK_IdTipoUsuario = 1;
                    mvRegistroAdultoMayor.ActiveViewIndex = 2;
                }
                else
                {
                    string script = @"<script type='text/javascript'>
                            alert('La contraseña y confirmación de contraseña no coinciden.');
                            </script>";

                    ScriptManager.RegisterStartupScript(this, typeof(Page), "Datos de autenticación", script, false);
                }
            }
        }

        protected void btnSiguiente3_Click(object sender, EventArgs e)
        {
            mvRegistroAdultoMayor.ActiveViewIndex = 3;
        }

        //Experiencias laborales
        protected void btnSiguiente4_Click(object sender, EventArgs e)
        {
            mvRegistroAdultoMayor.ActiveViewIndex = 4;
        }

        //Idiomas y pasatiempos
        protected void btnSiguiente5_Click(object sender, EventArgs e)
        {
            for (int ContadorIdiomas = 0; ContadorIdiomas < chkIdiomas.Items.Count; ContadorIdiomas++)
            {
                if (chkIdiomas.Items[ContadorIdiomas].Selected)
                {
                    ListaIdiomas.Add(chkIdiomas.Items[ContadorIdiomas].Text);
                }
            }

            Persona.Pasatiempos = txtPasatiempos.Text;

            mvRegistroAdultoMayor.ActiveViewIndex = 5;
        }

        protected void drpProvincia_SelectedIndexChanged(object sender, EventArgs e)
        {
            cargarDropDownListCantones();
            cargarDropDownListDistritos();
        }

        protected void drpCanton_SelectedIndexChanged(object sender, EventArgs e)
        {
            cargarDropDownListDistritos();
        }


        protected void btnCancelar1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Autenticacion/frmAutenticacion.aspx");
        }

        protected void btnAgregarEstudio_Click(object sender, EventArgs e)
        {
            Validate("gvEstudios");

            if (Page.IsValid)
            {
                TablaEstudios.Columns.Add("AnnoInicial", typeof(int));
                TablaEstudios.Columns.Add("AnnoFinal", typeof(int));
                TablaEstudios.Columns.Add("Institucion", typeof(string));
                TablaEstudios.Columns.Add("Titulo", typeof(string));

                Estudio.AnnoInicial = Int16.Parse(txtAñoInicialEstudio.Text);
                Estudio.AnnoFinal = Int16.Parse(txtAñoFinalEstudio.Text);
                Estudio.Institucion = txtInstitucionEstudio.Text;
                Estudio.Titulo = txtTituloEstudio.Text;
                ListaEstudios.Add(Estudio);

                foreach (cIATEstudioNegocios ItemEstudio in ListaEstudios)
                {
                    DataRow FilaEstudio = TablaEstudios.NewRow();
                    FilaEstudio["AnnoInicial"] = ItemEstudio.AnnoInicial.ToString();
                    FilaEstudio["AnnoFinal"] = ItemEstudio.AnnoFinal.ToString();
                    FilaEstudio["Institucion"] = ItemEstudio.Institucion.ToString();
                    FilaEstudio["Titulo"] = ItemEstudio.Titulo.ToString();

                    TablaEstudios.Rows.Add(FilaEstudio);
                }

                dgEstudios.DataSource = TablaEstudios;
                dgEstudios.DataBind();

                txtAñoInicialEstudio.Text = "";
                txtAñoFinalEstudio.Text = "";
                txtInstitucionEstudio.Text = "";
                txtTituloEstudio.Text = "";
                txtAñoInicialEstudio.Focus();
            }
        }

        protected void btnAgregarExperienciaLaboral_Click(object sender, EventArgs e)
        {
            Validate("gvExperienciasLaborales");

            if (Page.IsValid)
            {
                TablaExperienciasLaborales.Columns.Add("AnnoInicial", typeof(int));
                TablaExperienciasLaborales.Columns.Add("AnnoFinal", typeof(int));
                TablaExperienciasLaborales.Columns.Add("Empresa", typeof(string));
                TablaExperienciasLaborales.Columns.Add("Puesto", typeof(string));

                ExperienciaLaboral.AnnoInicial = Int16.Parse(txtAñoInicialExperienciaLaboral.Text);
                ExperienciaLaboral.AnnoFinal = Int16.Parse(txtAñoFinalExperienciaLaboral.Text);
                ExperienciaLaboral.Empresa = txtEmpresa.Text;
                ExperienciaLaboral.Puesto = txtPuesto.Text;
                ListaExperienciasLaborales.Add(ExperienciaLaboral);

                foreach (cIATExperienciaLaboralNegocios ItemExperienciaLaboral in ListaExperienciasLaborales)
                {
                    DataRow FilaExperienciaLaboral = TablaExperienciasLaborales.NewRow();
                    FilaExperienciaLaboral["AnnoInicial"] = ItemExperienciaLaboral.AnnoInicial.ToString();
                    FilaExperienciaLaboral["AnnoFinal"] = ItemExperienciaLaboral.AnnoFinal.ToString();
                    FilaExperienciaLaboral["Empresa"] = ItemExperienciaLaboral.Empresa.ToString();
                    FilaExperienciaLaboral["Puesto"] = ItemExperienciaLaboral.Puesto.ToString();

                    TablaExperienciasLaborales.Rows.Add(FilaExperienciaLaboral);
                }

                dgExperienciasLaborales.DataSource = TablaExperienciasLaborales;
                dgExperienciasLaborales.DataBind();

                txtAñoInicialExperienciaLaboral.Text = "";
                txtAñoFinalExperienciaLaboral.Text = "";
                txtEmpresa.Text = "";
                txtPuesto.Text = "";
                txtAñoInicialExperienciaLaboral.Focus();
            }
        }

        protected void chkAceptarTerminos_CheckedChanged(object sender, EventArgs e)
        {
            if (chkAceptarTerminos.Checked)
            {
                btnFinalizar.Enabled = true;
            }
            else
            {
                btnFinalizar.Enabled = false;
            }
        }

        protected void btnFinalizar_Click(object sender, EventArgs e)
        {
            Usuario.Insertar();
            DataTable TablaUsuario = Usuario.Buscar();

            Int16 IdUsuario = 0;

            if (TablaUsuario.Rows.Count > 0)
            {
                IdUsuario = Int16.Parse(TablaUsuario.Rows[0]["Id_Usuario"].ToString());
            }

            Persona.FK_IdUsuario = IdUsuario;

            Persona.Insertar();

            DataTable TablaPersona = Persona.Buscar();

            Int16 IdPersona = 0;

            if (TablaPersona.Rows.Count > 0)
            {
                IdPersona = Int16.Parse(TablaPersona.Rows[0]["Id_Persona"].ToString());
            }

            foreach (cIATEstudioNegocios ItemEstudio in ListaEstudios)
            {
                Estudio.AnnoInicial = Int16.Parse(ItemEstudio.AnnoInicial.ToString());
                Estudio.AnnoFinal = Int16.Parse(ItemEstudio.AnnoFinal.ToString());
                Estudio.Institucion = ItemEstudio.Institucion.ToString();
                Estudio.Titulo = ItemEstudio.Titulo.ToString();
                Estudio.FK_IdPersona = IdPersona;
                Estudio.Insertar();
            }

            foreach (cIATExperienciaLaboralNegocios ItemExperienciaLaboral in ListaExperienciasLaborales)
            {
                ExperienciaLaboral.AnnoInicial = Int16.Parse(ItemExperienciaLaboral.AnnoInicial.ToString());
                ExperienciaLaboral.AnnoFinal = Int16.Parse(ItemExperienciaLaboral.AnnoFinal.ToString());
                ExperienciaLaboral.Empresa = ItemExperienciaLaboral.Empresa.ToString();
                ExperienciaLaboral.Puesto = ItemExperienciaLaboral.Puesto.ToString();
                ExperienciaLaboral.FK_IdPersona = IdPersona;
                ExperienciaLaboral.Insertar();
            }

            foreach (String NombreIdioma in ListaIdiomas)
            {
                Idioma.Nom_Idioma = NombreIdioma;
                DataTable TablaIdioma = Idioma.Buscar();

                Int16 IdIdioma = 0;

                if (TablaIdioma.Rows.Count > 0)
                {
                    IdIdioma = Int16.Parse(TablaIdioma.Rows[0]["Id_Idioma"].ToString());
                }

                IdiomaXPersona.FK_IdPersona = IdPersona;
                IdiomaXPersona.FK_IdIdioma = IdIdioma;
                IdiomaXPersona.Insertar();
            }

            TelefonoHabitacion.FK_IdTipoContacto = 1;
            TelefonoHabitacion.FK_IdUsuario = IdUsuario;
            TelefonoHabitacion.Insertar();

            TelefonoCelular.FK_IdTipoContacto = 2;
            TelefonoCelular.FK_IdUsuario = IdUsuario;
            TelefonoCelular.Insertar();

            CorreoElectronico.FK_IdTipoContacto = 3;
            CorreoElectronico.FK_IdUsuario = IdUsuario;
            CorreoElectronico.Insertar();

            Response.Redirect("/Autenticacion/frmAutenticacion.aspx");
        }

        protected void btnCancelar3_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Autenticacion/frmAutenticacion.aspx");
        }

        protected void btnCancelar4_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Autenticacion/frmAutenticacion.aspx");
        }

        protected void btnCancelar5_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Autenticacion/frmAutenticacion.aspx");
        }

        protected void btnCancelar6_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Autenticacion/frmAutenticacion.aspx");
        }

        protected void btnAtras_Click(object sender, EventArgs e)
        {
            mvRegistroAdultoMayor.ActiveViewIndex = 0;
        }

        protected void btnAtras1_Click(object sender, EventArgs e)
        {
            mvRegistroAdultoMayor.ActiveViewIndex = 1;
        }

        protected void btnAtras2_Click(object sender, EventArgs e)
        {
            mvRegistroAdultoMayor.ActiveViewIndex = 2;
        }

        protected void btnAtras3_Click(object sender, EventArgs e)
        {
            mvRegistroAdultoMayor.ActiveViewIndex = 3;
        }
    }
}