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
using System.Web.Services;

namespace ITCR.IntegrateAlTrabajo.Interfaz.AdultoMayor
{
    public partial class frmRegistroAdultoMayor : System.Web.UI.Page
    {
        #region Variables
        cIATEstudioNegocios Estudio = new cIATEstudioNegocios(1, "A", 2, "B");
        cIATExperienciaLaboralNegocios ExperienciaLaboral = new cIATExperienciaLaboralNegocios(1, "A", 2, "B");
        cIATIdiomaNegocios Idioma = new cIATIdiomaNegocios(1, "A", 2, "B");
        cIATIdiomaXPersonaNegocios IdiomaXPersona = new cIATIdiomaXPersonaNegocios(1, "A", 2, "B");
        DataTable TablaEstudios = new DataTable();
        DataTable TablaExperienciasLaborales = new DataTable();
        #endregion

        #region Constantes

        protected readonly static string[] MESES_ESPANIOL = {"Enero","Febrero","Marzo","Abril","Mayo",
                                                            "Junio","Julio","Agosto","Setiembre","Octubre",
                                                            "Noviembre","Diciembre"};
        protected const int CARACTERES_MINIMOS = 5, CARACTERES_MAXIMOS = 50;
        protected const int LARGO_TELEFONO_CR = 8;
        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Inicializar variables de sesion
                HttpContext.Current.Session["Persona"] = new cIATPersonaNegocios(1, "A", 2, "B");
                HttpContext.Current.Session["Usuario"] = new cIATUsuarioNegocios(1, "A", 2, "B");
                HttpContext.Current.Session["TelefonoHabitacion"] = new cIATContactoNegocios(1, "A", 2, "B");
                HttpContext.Current.Session["TelefonoCelular"] = new cIATContactoNegocios(1, "A", 2, "B");
                HttpContext.Current.Session["CorreoElectronico"] = new cIATContactoNegocios(1, "A", 2, "B");
                //Inicializar interfaz
                HttpContext.Current.Session["ListaEstudios"] = new ArrayList();
                ((ArrayList)HttpContext.Current.Session["ListaEstudios"]).Clear();
                HttpContext.Current.Session["ListaExperienciasLaborales"] = new ArrayList();
                ((ArrayList)HttpContext.Current.Session["ListaExperienciasLaborales"]).Clear();
                HttpContext.Current.Session["ListaIdiomas"] = new ArrayList();
                ((ArrayList)HttpContext.Current.Session["ListaIdiomas"]).Clear();
                mvRegistroAdultoMayor.ActiveViewIndex = 0;
                txtCedulaExt.Visible = false;
                cargarTodosDropDownList();
                ViewState["MesValido"] = ViewState["DiaValido"] = true;
                HttpContext.Current.Session["onChangeRow"] = -1;
            }
        }

        #region DatosIniciales

        private void cargarDropDownListSexo()
        {
            drpSexo.Items.Clear();
            ListItem ItemSexo1 = new ListItem("Masculino");
            ListItem ItemSexo2 = new ListItem("Femenino");
            drpSexo.Items.Add(ItemSexo1);
            drpSexo.Items.Add(ItemSexo2);
        }

        private void cargarDropDownListNacionalidad()
        {
            ddlNacionalidad.Items.Clear();
            ListItem ItemNacionalidad1 = new ListItem("Costarricense");
            ListItem ItemNacionalidad2 = new ListItem("Extranjero");
            ddlNacionalidad.Items.Add(ItemNacionalidad1);
            ddlNacionalidad.Items.Add(ItemNacionalidad2);
            ddlNacionalidad.SelectedIndex = 0;
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

        private void cargarDropDownListFechas(bool pPrimerAnnio)
        {
            int currmes = DdlMesNacimiento.SelectedIndex;
            DdlMesNacimiento.Items.Clear();
            int meses = 12;
            if(pPrimerAnnio)
            {
                meses = DateTime.Now.Month;
            }
            for(int mes = 0;mes<meses;mes++)
            {
                ListItem mesItem =new ListItem(MESES_ESPANIOL[mes]);
                DdlMesNacimiento.Items.Add(mesItem);
            }
            if (meses>currmes)
            {
                DdlMesNacimiento.SelectedIndex = currmes;
            }
            bool ultimoMes = meses == 1;
            if (currmes < 0) { currmes = 0; }
            cargarDropDownListDias(currmes+1,int.Parse(DdlAnioNacimiento.SelectedItem.Text),pPrimerAnnio&&ultimoMes);
            
        }

        private void cargarDropDownListDias(int pMes,int pYear,bool pPrimerAnioUltimoMes)
        {
            int seleccion = 0;
            if (DdlDiaNacimiento.Items.Count > 0)
            {
                seleccion = DdlDiaNacimiento.SelectedIndex;
            }
            DdlDiaNacimiento.Items.Clear();
            int dias = DateTime.DaysInMonth(pYear, pMes);
            if(pPrimerAnioUltimoMes)
            {
                dias = DateTime.Now.Day;
            }
            for (int dia = 1; dia<=dias; dia++)
            {
                ListItem diaItem = new ListItem(dia + "");
                DdlDiaNacimiento.Items.Add(diaItem);
            }
            if((dias-1)>=seleccion)
            {
                DdlDiaNacimiento.SelectedIndex = seleccion;
            }
        }

        private void cargarDropDownListAnios()
        {
            DdlAnioNacimiento.Items.Clear();
            int anioMaximo = int.Parse(DateTime.Now.Year.ToString()) - 65;
            int anioMinimo = anioMaximo - 50;
            for (; anioMaximo > anioMinimo;anioMaximo--)
            {
                ListItem anio = new ListItem(anioMaximo+"");
                DdlAnioNacimiento.Items.Add(anio);
            }
        }

        private void cargarTodosDropDownList()
        {
            cargarDropDownListSexo();
            cargarDropDownListNacionalidad();
            cargarDropDownListProvincias();
            cargarDropDownListCantones();
            cargarDropDownListDistritos();
            cargarDropDownListAnios();
            cargarDropDownListFechas(true);
        }

        #endregion

        #region MetodosOnClick

        protected void btnSiguiente1_Click(object sender, EventArgs e)
        {
            Validate("gvDatosPersonales");

            if (Page.IsValid)
            {
                ((cIATPersonaNegocios)HttpContext.Current.Session["Persona"]).Nom_Persona = txtNombrePersona.Text;
                ((cIATPersonaNegocios)HttpContext.Current.Session["Persona"]).Apellido1 = txtApellido1.Text;
                ((cIATPersonaNegocios)HttpContext.Current.Session["Persona"]).Apellido2 = txtApellido2.Text;
                string ced;
                if (ddlNacionalidad.SelectedIndex == 0)
                {
                    ced =txtCedula.Text + txtCedula2.Text + txtCedula3.Text;
                }
                else
                {
                    ced = txtCedulaExt.Text;
                }
                ((cIATPersonaNegocios)HttpContext.Current.Session["Persona"]).Num_Cedula = ced;
                ((cIATPersonaNegocios)HttpContext.Current.Session["Persona"]).Fec_Nacimiento = DateTime.Parse(DdlDiaNacimiento.Text+"/"+(DdlMesNacimiento.SelectedIndex+1)
                    +"/"+DdlAnioNacimiento.Text);
                ((cIATPersonaNegocios)HttpContext.Current.Session["Persona"]).Sexo = drpSexo.SelectedValue;
                ((cIATPersonaNegocios)HttpContext.Current.Session["Persona"]).FK_IdDistrito = Int16.Parse(drpDistrito.SelectedValue);

                ((cIATContactoNegocios)HttpContext.Current.Session["TelefonoHabitacion"]).Detalle = txtTelefonoHabitacion.Text;
                ((cIATContactoNegocios)HttpContext.Current.Session["TelefonoCelular"]).Detalle = txtCelular.Text;
                ((cIATContactoNegocios)HttpContext.Current.Session["CorreoElectronico"]).Detalle = txtCorreoElectronico.Text;

                mvRegistroAdultoMayor.ActiveViewIndex = 1;
            }
        }

        protected void btnSiguiente2_Click(object sender, EventArgs e)
        {
            Validate("gvDatosAutenticacion");
            cIATUsuarioNegocios Usuario = ((cIATUsuarioNegocios)HttpContext.Current.Session["Usuario"]);
            if (Page.IsValid)
            {
                if (txtContraseña.Text.CompareTo(txtConfirmacionContraseña.Text) == 0)
                {
                    Usuario.Nom_Usuario = txtNombreUsuario.Text;
                    Usuario.Contrasenna = txtContraseña.Text;
                    Usuario.Indicio_Contrasenna = txtIndicioContraseña.Text;
                    Usuario.Estado = 1; //CAMBIAR
                    Usuario.FK_IdTipoUsuario = 1;
                    btnCancelarActualizarEstudio.Visible = false;
                    mvRegistroAdultoMayor.ActiveViewIndex = 2;
                }
                else
                {
                    string script = @"<script type='text/javascript'>
                            alertify.alert('La contraseña y confirmación de contraseña no coinciden.');
                            </script>";

                    ScriptManager.RegisterStartupScript(this, typeof(Page), "Datos de autenticación", script, false);
                }
            }
        }

        protected void btnSiguiente3_Click(object sender, EventArgs e)
        {
            actualizarDgEstudios();
            HttpContext.Current.Session["onChangeRow"] = -1;
            btnCancelarActualizarExperiencia.Visible = false;
            mvRegistroAdultoMayor.ActiveViewIndex = 3;
        }

        //Experiencias laborales
        protected void btnSiguiente4_Click(object sender, EventArgs e)
        {
            actualizarDgExperienciasLaborales();
            HttpContext.Current.Session["onChangeRow"] = -1;
            mvRegistroAdultoMayor.ActiveViewIndex = 4;
        }

        //Idiomas y pasatiempos
        protected void btnSiguiente5_Click(object sender, EventArgs e)
        {

            for (int ContadorIdiomas = 0; ContadorIdiomas < chkIdiomas.Items.Count; ContadorIdiomas++)
            {
                if (chkIdiomas.Items[ContadorIdiomas].Selected)
                {
                    ((ArrayList)HttpContext.Current.Session["ListaIdiomas"]).Add(chkIdiomas.Items[ContadorIdiomas].Text);
                }
            }

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
            salirSinGuardar();
        }

        protected void btnAgregarEstudio_Click(object sender, EventArgs e)
        {
            Validate("gvEstudios");

            if (Page.IsValid)
            {
                Estudio.Institucion = txtInstitucionEstudio.Text;
                Estudio.Titulo = txtTituloEstudio.Text;
                ((ArrayList)HttpContext.Current.Session["ListaEstudios"]).Add(Estudio);
                actualizarDgEstudios();               
                
                txtInstitucionEstudio.Text = "";
                txtTituloEstudio.Text = "";
                txtInstitucionEstudio.Focus();
            }
        }

        protected void btnFinalizar_Click(object sender, EventArgs e)
        {
            cIATUsuarioNegocios Usuario = ((cIATUsuarioNegocios)HttpContext.Current.Session["Usuario"]);
            if (chkAceptarTerminos.Checked)
            {
                Usuario.Insertar();
                DataTable TablaUsuario = Usuario.Buscar();

                Int16 IdUsuario = 0;

                if (TablaUsuario.Rows.Count > 0)
                {
                    IdUsuario = Int16.Parse(TablaUsuario.Rows[0]["Id_Usuario"].ToString());
                }

                ((cIATPersonaNegocios)HttpContext.Current.Session["Persona"]).FK_IdUsuario = IdUsuario;

                ((cIATPersonaNegocios)HttpContext.Current.Session["Persona"]).Insertar();

                DataTable TablaPersona = ((cIATPersonaNegocios)HttpContext.Current.Session["Persona"]).Buscar();

                Int16 IdPersona = 0;

                if (TablaPersona.Rows.Count > 0)
                {
                    IdPersona = Int16.Parse(TablaPersona.Rows[0]["Id_Persona"].ToString());
                }
                ArrayList ListaEstudios = ((ArrayList)HttpContext.Current.Session["ListaEstudios"]);
                foreach (cIATEstudioNegocios ItemEstudio in ListaEstudios)
                {
                    Estudio.Institucion = ItemEstudio.Institucion.ToString();
                    Estudio.Titulo = ItemEstudio.Titulo.ToString();
                    Estudio.FK_IdPersona = IdPersona;
                    Estudio.Insertar();
                }
                ArrayList ListaExperienciasLaborales = ((ArrayList)HttpContext.Current.Session["ListaExperienciasLaborales"]);
                foreach (cIATExperienciaLaboralNegocios ItemExperienciaLaboral in ListaExperienciasLaborales)
                {
                    ExperienciaLaboral.Empresa = ItemExperienciaLaboral.Empresa.ToString();
                    ExperienciaLaboral.Puesto = ItemExperienciaLaboral.Puesto.ToString();
                    ExperienciaLaboral.FK_IdPersona = IdPersona;
                    ExperienciaLaboral.Insertar();
                }
                ArrayList ListaIdiomas = ((ArrayList)HttpContext.Current.Session["ListaIdiomas"]);
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

                ((cIATContactoNegocios)HttpContext.Current.Session["TelefonoHabitacion"]).FK_IdTipoContacto = 1;
                ((cIATContactoNegocios)HttpContext.Current.Session["TelefonoHabitacion"]).FK_IdUsuario = IdUsuario;
                ((cIATContactoNegocios)HttpContext.Current.Session["TelefonoHabitacion"]).Insertar();

                cIATContactoNegocios TelefonoCelular = ((cIATContactoNegocios)HttpContext.Current.Session["TelefonoCelular"]);
                TelefonoCelular.FK_IdTipoContacto = 2;
                TelefonoCelular.FK_IdUsuario = IdUsuario;
                TelefonoCelular.Insertar();

                cIATContactoNegocios CorreoElectronico = ((cIATContactoNegocios)HttpContext.Current.Session["CorreoElectronico"]);
                CorreoElectronico.FK_IdTipoContacto = 3;
                CorreoElectronico.FK_IdUsuario = IdUsuario;
                CorreoElectronico.Insertar();

                string script = @"<script type='text/javascript'>
                            finalizar();
                            </script>";

                ScriptManager.RegisterStartupScript(this, typeof(Page), "Registro", script, false);
            }
            else
            {
                string script = @"<script type='text/javascript'>
                            alertify.alert('Debe aceptar los términos y condiciones antes de finalizar. Si no desea aceptarlos, presione el botón de salir sin guardar');
                            </script>";

                ScriptManager.RegisterStartupScript(this, typeof(Page), "Registro", script, false);
            }
        }

        protected void btnCancelar3_Click(object sender, EventArgs e)
        {
            salirSinGuardar();
        }

        protected void btnCancelar4_Click(object sender, EventArgs e)
        {
            salirSinGuardar();
        }

        protected void btnCancelar5_Click(object sender, EventArgs e)
        {
            salirSinGuardar();
        }

        protected void btnCancelar6_Click(object sender, EventArgs e)
        {
            salirSinGuardar();
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

        protected void btnCancelarActualizarEstudio_Click(object sender, EventArgs e)
        {
            txtInstitucionEstudio.Text = "";
            txtTituloEstudio.Text = "";
            btnActualizarEstudio.Visible = false;
            btnAgregarEstudio.Visible = true;
        }

        protected void btnCancelarAgregarEstudio_Click(object sender, EventArgs e)
        {
            txtInstitucionEstudio.Text = "";
            txtTituloEstudio.Text = "";
        }

        protected void btnCancelarActualizarExperiencia_Click(object sender, EventArgs e)
        {
            txtEmpresa.Text = "";
            txtPuesto.Text = "";
            btnActualizarExperienciaLaboral.Visible = false;
            btnAgregarExperienciaLaboral.Visible = true;
        }

        protected void btnCancelarAgregarExperiencia_Click(object sender, EventArgs e)
        {
            txtEmpresa.Text = "";
            txtPuesto.Text = "";
        }

        protected void btnSiguiente7_Click(object sender, EventArgs e)
        {
            Validate("gvPasatiempos");

            if (Page.IsValid)
            {
                ((cIATPersonaNegocios)HttpContext.Current.Session["Persona"]).Pasatiempos = txtPasatiempos.Text;
                mvRegistroAdultoMayor.ActiveViewIndex = 6;
            }
        }

        protected void btnAtras7_Click(object sender, EventArgs e)
        {
            mvRegistroAdultoMayor.ActiveViewIndex = 4;
        }

        protected void btnCancelar7_Click(object sender, EventArgs e)
        {
            salirSinGuardar();
        }

        protected void btnActualizarEstudio_Click(object sender, EventArgs e)
        {
            Validate("gvEstudios");

            if (Page.IsValid)
            {
                int EstudioEnModificacion = (int)HttpContext.Current.Session["EstudioEnModificacion"];
                ArrayList ListaEstudios = ((ArrayList)HttpContext.Current.Session["ListaEstudios"]);
                ((cIATEstudioNegocios)ListaEstudios[EstudioEnModificacion]).Institucion = txtInstitucionEstudio.Text;
                ((cIATEstudioNegocios)ListaEstudios[EstudioEnModificacion]).Titulo = txtTituloEstudio.Text;
                actualizarDgEstudios();
                btnAgregarEstudio.Visible = true;
                btnActualizarEstudio.Visible = false;
                btnCancelarAgregarEstudio.Visible = true;
                btnCancelarActualizarEstudio.Visible = false;
                txtInstitucionEstudio.Text = "";
                txtTituloEstudio.Text = "";
            }
        }

        protected void btnAtras6_Click(object sender, EventArgs e)
        {
            mvRegistroAdultoMayor.ActiveViewIndex = 5;
        }

        protected void btnCancelar2_Click(object sender, EventArgs e)
        {
            salirSinGuardar();
        }

        protected void btnActualizarExperienciaLaboral_Click(object sender, EventArgs e)
        {
            Validate("gvExperienciasLaborales");

            if (Page.IsValid)
            {
                ArrayList ListaExperienciasLaborales = ((ArrayList)HttpContext.Current.Session["ListaExperienciasLaborales"]);
                int ExperienciaEnModificacion = ((int)HttpContext.Current.Session["ExperienciaEnModificacion"]);
                ((cIATExperienciaLaboralNegocios)ListaExperienciasLaborales[ExperienciaEnModificacion]).Empresa = txtEmpresa.Text;
                ((cIATExperienciaLaboralNegocios)ListaExperienciasLaborales[ExperienciaEnModificacion]).Puesto = txtPuesto.Text;
                actualizarDgExperienciasLaborales();
                btnAgregarExperienciaLaboral.Visible = true;
                btnActualizarExperienciaLaboral.Visible = false;
                btnCancelarAgregarExperiencia.Visible = true;
                btnCancelarActualizarExperiencia.Visible = false;
                txtEmpresa.Text = "";
                txtPuesto.Text = "";
            }

        }

        protected void btnAgregarExperienciaLaboral_Click(object sender, EventArgs e)
        {
            Validate("gvExperienciasLaborales");

            if (Page.IsValid)
            {
                ExperienciaLaboral.Empresa = txtEmpresa.Text;
                ExperienciaLaboral.Puesto = txtPuesto.Text;
                ((ArrayList)HttpContext.Current.Session["ListaExperienciasLaborales"]).Add(ExperienciaLaboral);
                actualizarDgExperienciasLaborales();

                txtEmpresa.Text = "";
                txtPuesto.Text = "";
                txtEmpresa.Focus();
            }
        }
    
        #endregion

        #region ActualizarDataGrids

        protected void actualizarDgEstudios()
        {            
            TablaEstudios.Columns.Add("Institucion", typeof(string));
            TablaEstudios.Columns.Add("Titulo", typeof(string));
            ArrayList ListaEstudios = ((ArrayList)HttpContext.Current.Session["ListaEstudios"]);
            foreach (cIATEstudioNegocios ItemEstudio in ListaEstudios)
            {
                DataRow FilaEstudio = TablaEstudios.NewRow();
                FilaEstudio["Institucion"] = ItemEstudio.Institucion.ToString();
                FilaEstudio["Titulo"] = ItemEstudio.Titulo.ToString();
                TablaEstudios.Rows.Add(FilaEstudio);
            }            
            dgEstudios.DataSource = TablaEstudios;
            dgEstudios.DataBind();

        }

        protected void actualizarDgExperienciasLaborales()
        {
            TablaExperienciasLaborales.Columns.Add("Empresa", typeof(string));
            TablaExperienciasLaborales.Columns.Add("Puesto", typeof(string));
            ArrayList ListaExperienciasLaborales = ((ArrayList)HttpContext.Current.Session["ListaExperienciasLaborales"]);
            foreach (cIATExperienciaLaboralNegocios ItemExperienciaLaboral in ListaExperienciasLaborales)
            {
                DataRow FilaExperienciaLaboral = TablaExperienciasLaborales.NewRow();
                FilaExperienciaLaboral["Empresa"] = ItemExperienciaLaboral.Empresa.ToString();
                FilaExperienciaLaboral["Puesto"] = ItemExperienciaLaboral.Puesto.ToString();

                TablaExperienciasLaborales.Rows.Add(FilaExperienciaLaboral);
            }
            dgExperienciasLaborales.DataSource = TablaExperienciasLaborales;
            dgExperienciasLaborales.DataBind();
            
        }

        protected void dgEstudios_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (e.CommandName == "Editar")
            {
                HttpContext.Current.Session["EstudioEnModificacion"] = e.Item.ItemIndex;
                if (((int)HttpContext.Current.Session["onChangeRow"]) >= 0 &&
                    ((int)HttpContext.Current.Session["onChangeRow"]) < e.Item.ItemIndex)
                {
                    HttpContext.Current.Session["EstudioEnModificacion"] = ((int)HttpContext.Current.Session["EstudioEnModificacion"]) - 1;
                }
                actualizarDgEstudios();
                txtInstitucionEstudio.Text = e.Item.Cells[0].Text;
                txtTituloEstudio.Text = e.Item.Cells[1].Text;
                btnActualizarEstudio.Visible = true;
                btnAgregarEstudio.Visible = false;
                btnCancelarAgregarEstudio.Visible = false;
                btnCancelarActualizarEstudio.Visible = true;
                HttpContext.Current.Session["onChangeRow"] = -1;
            }
            else if (e.CommandName == "Eliminar")
            {
                string code = @"<script type='text/javascript'>eliminarEstudio(" + e.Item.ItemIndex + ");</script>";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alert", code, false);
            }
        }

        [WebMethod]
        public static void eliminarEstudio(int index)
        {
            ((ArrayList)HttpContext.Current.Session["ListaEstudios"]).RemoveAt(index);
            HttpContext.Current.Session["onChangeRow"] = index;
        }

        [WebMethod]
        public static void eliminarExperiencia(int index)
        {
            ((ArrayList)HttpContext.Current.Session["ListaExperienciasLaborales"]).RemoveAt(index);
            HttpContext.Current.Session["onChangeRow"] = index;
        }

        protected void dgExperienciasLaborales_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (e.CommandName == "Editar")
            {
                HttpContext.Current.Session["ExperienciaEnModificacion"] = e.Item.ItemIndex;
                if (((int)HttpContext.Current.Session["onChangeRow"]) >= 0 &&
                    ((int)HttpContext.Current.Session["onChangeRow"]) < e.Item.ItemIndex)
                {
                    HttpContext.Current.Session["ExperienciaEnModificacion"] = ((int)HttpContext.Current.Session["ExperienciaEnModificacion"]) - 1;
                }
                actualizarDgExperienciasLaborales();
                txtEmpresa.Text = e.Item.Cells[0].Text;
                txtPuesto.Text = e.Item.Cells[1].Text;
                btnActualizarExperienciaLaboral.Visible = true;
                btnAgregarExperienciaLaboral.Visible = false;
                btnCancelarActualizarExperiencia.Visible = true;
                btnCancelarAgregarExperiencia.Visible = false;
                HttpContext.Current.Session["onChangeRow"] = -1;
            }
            else if (e.CommandName == "Eliminar")
            {
                string code = @"<script type='text/javascript'>eliminarExperiencia(" + e.Item.ItemIndex + ");</script>";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alert", code, false);
            }
        }

        #endregion

        #region MetodosOnChange

        protected void DdlAnnoNacimiento_SelectedIndexChanged(object sender, EventArgs e)
        {
            bool primerAnnio = DdlAnioNacimiento.SelectedIndex == 0;
            int dia = DdlDiaNacimiento.SelectedIndex;
            int mes = DdlMesNacimiento.SelectedIndex;
            cargarDropDownListFechas(primerAnnio);
            if (DdlDiaNacimiento.Items.Count - 1 >= dia)
            {
                DdlDiaNacimiento.SelectedIndex = dia;
                ViewState["DiaValido"] = true;
            }
            else { ViewState["DiaValido"] = false; }
            if (DdlMesNacimiento.Items.Count - 1 >= mes)
            {
                DdlMesNacimiento.SelectedIndex = mes;
                ViewState["MesValido"] = true;
            }
            else { ViewState["MesValido"] = false; }
        }

        protected void DdlMesNacimiento_SelectedIndexChanged(object sender, EventArgs e)
        {
            bool primerAnnio = DdlAnioNacimiento.SelectedIndex == 0;
            bool ultimoMes = DdlMesNacimiento.SelectedIndex == DdlMesNacimiento.Items.Count - 1;
            int dia = DdlDiaNacimiento.SelectedIndex;
            cargarDropDownListDias(DdlMesNacimiento.SelectedIndex + 1,
                                       int.Parse(DdlAnioNacimiento.SelectedItem.Text), primerAnnio&&ultimoMes);
            ViewState["MesValido"] = true;
            if (DdlDiaNacimiento.Items.Count - 1 >= dia)
            {
                DdlDiaNacimiento.SelectedIndex = dia;
                ViewState["DiaValido"] = true;
            }
            else
            {
                ViewState["DiaValido"] = false;
            }
        }

        protected void ddlNacionalidad_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlNacionalidad.SelectedIndex == 0)
            {
                txtCedulaExt.Visible = false;
                txtCedula.Visible = txtCedula2.Visible = txtCedula3.Visible = true;
            }
            else
            {
                txtCedulaExt.Visible = true;
                txtCedula.Visible = txtCedula2.Visible = txtCedula3.Visible = false;
            }
        }

        private string setId(String id)
        {
            for (int cero = id.Length; cero < 4; cero++)
            {
                id = '0' + id;
            }
            return id;
        }

        protected void txtCedula2_TextChanged(object sender, EventArgs e)
        {
            txtCedula2.Text = setId(txtCedula2.Text);
        }

        protected void txtCedula3_TextChanged(object sender, EventArgs e)
        {
            txtCedula3.Text = setId(txtCedula3.Text);
        }

        #endregion

        #region Validaciones

        protected void validarTelefonosServer(object sender, ServerValidateEventArgs e)
        {
            e.IsValid = txtTelefonoHabitacion.Text != "" || txtCelular.Text != "";
        }

        protected void validarUsuarioServer(object sender, ServerValidateEventArgs e)
        {
            e.IsValid = CARACTERES_MINIMOS <= txtNombreUsuario.Text.Length
                && txtNombreUsuario.Text.Length <= CARACTERES_MAXIMOS;
        }

        protected void validarLargoHabitacionServer(object source, ServerValidateEventArgs args)
        {
            args.IsValid = txtTelefonoHabitacion.Text.Length == LARGO_TELEFONO_CR 
                || txtTelefonoHabitacion.Text.Length == 0;
        }

        protected void validarLargoMovilServer(object source, ServerValidateEventArgs args)
        {
            args.IsValid = txtCelular.Text.Length == LARGO_TELEFONO_CR
                || txtCelular.Text.Length == 0;
        }

        protected void validarCedulaServer(object source, ServerValidateEventArgs args)
        {
            if (ddlNacionalidad.SelectedIndex == 1)
            {
                args.IsValid = txtCedulaExt.Text.Length > 0;
            }
            else
            {
                args.IsValid = txtCedula.Text.Length > 0 && txtCedula2.Text.Length > 0 && txtCedula3.Text.Length > 0 &&
                    txtCedula.Text.Length + txtCedula2.Text.Length + txtCedula3.Text.Length == 9;
            }
        }

        protected void validarNacimientoServer(object source, ServerValidateEventArgs args)
        {
            args.IsValid = (bool)(ViewState["DiaValido"]) && (bool)(ViewState["MesValido"]);
        }

        protected void validarContrasennaServer(object source, ServerValidateEventArgs args)
        {
            args.IsValid = txtContraseña.Text.Length >= 8;
        }

        #endregion
        
        private void mensajeConfirmacion(string acceptText, string cancelText, string message){
            string code = @"<script type='text/javascript'>alertBoxCustom("+ acceptText+','+ cancelText+','+ message+");</script>";
            ScriptManager.RegisterStartupScript(this, typeof(Page), "alert", code, false);                
        }

        private void salirSinGuardar()
        {
            string code = @"<script type='text/javascript'>endConfirmation();</script>";
            ScriptManager.RegisterStartupScript(this, typeof(Page), "alert", code, false);  
        }

    }
}