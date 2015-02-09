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
    public partial class frmConsultarPerfilAdultoMayor : System.Web.UI.Page
    {
        cIATPersonaNegocios Persona = new cIATPersonaNegocios(1, "A", 2, "B");
        cIATUsuarioNegocios Usuario = new cIATUsuarioNegocios(1, "A", 2, "B");
        List<string> ListaIdiomas = new List<string>();

        protected void Page_Load(object sender, EventArgs e)
        {            
            if (!IsPostBack)
            {
                //Edicion
                txtPasatiempo.Visible = false;                
                ibtnActualizarIdiomas.Visible = false;
                ibtnActualizarPasatiempo.Visible = false;
                //Comprobar sesion
                if (Session["Nombre_Usuario"] == null)
                {
                    Response.Redirect("/Default.aspx");
                }
                //Cargas
                cargarUsuario();
                cargarDatosPersonales();                
                cargarDataGridEstudios();
                cargarDataGridExperienciasLaborales();
                cargarIdiomas();
                chkIdiomas.Enabled = false;
            }
        }

        private void cargarUsuario()
        {
            Usuario.Nom_Usuario = Session["Nombre_Usuario"].ToString();
            DataTable TablaUsuario = Usuario.Buscar();

            Int16 IdUsuario = 0;

            if (TablaUsuario.Rows.Count > 0)
            {
                IdUsuario = Int16.Parse(TablaUsuario.Rows[0]["Id_Usuario"].ToString());
                Usuario.Id_Usuario = IdUsuario;
            }

            Session["Id_Usuario"] = IdUsuario;

            Persona.FK_IdUsuario = IdUsuario;
        }
        private void cargarDireccion(Int16 IdDistrito)
        {
            cIATDistritoNegocios Distrito = new cIATDistritoNegocios(1, "A", 2, "B");

            Distrito.Id_Distrito = IdDistrito;
            DataTable TablaDistrito = Distrito.Buscar();

            Int16 IdCanton = 0;

            if (TablaDistrito.Rows.Count > 0)
            {
                lblDistritoDato.Text = TablaDistrito.Rows[0]["Nom_Distrito"].ToString();
                IdCanton = Int16.Parse(TablaDistrito.Rows[0]["FK_IdCanton"].ToString());
            }

            cIATCantonNegocios Canton = new cIATCantonNegocios(1, "A", 2, "B");
            
            Canton.Id_Canton = IdCanton;
            DataTable TablaCanton = Canton.Buscar();

            Int16 IdProvincia = 0;

            if (TablaCanton.Rows.Count > 0)
            {
                lblCantonDato.Text = TablaCanton.Rows[0]["Nom_Canton"].ToString();
                IdProvincia = Int16.Parse(TablaCanton.Rows[0]["FK_IdProvincia"].ToString());
            }

            cIATProvinciaNegocios Provincia = new cIATProvinciaNegocios(1, "A", 2, "B");

            Provincia.Id_Provincia = IdProvincia;
            DataTable TablaProvincia = Provincia.Buscar();

            if (TablaProvincia.Rows.Count > 0)
            {
                lblProvinciaDato.Text = TablaProvincia.Rows[0]["Nom_Provincia"].ToString();
            }
        }

        public string arreglarFecha(string fecha)
        {
            string nuevaFecha;
            try
            {
                nuevaFecha = DateTime.Parse(fecha).ToShortDateString();
            }
            catch
            {
                int dia = int.Parse(fecha.Substring(0, 2));
                int mes = int.Parse(fecha.Substring(3, 2));
                int anno = int.Parse(fecha.Substring(6, 4));
                nuevaFecha = new DateTime(anno, mes, dia).ToShortDateString();
            }
            return nuevaFecha;
        }

        private void cargarDatosPersonales()
        {                     
            DataTable TablaPersona = Persona.Buscar();

            if (TablaPersona.Rows.Count > 0)
            {
                lblNombreDato.Text = TablaPersona.Rows[0]["Nom_Persona"].ToString();
                lblApellido1Dato.Text = TablaPersona.Rows[0]["Apellido1"].ToString();
                lblApellido2Dato.Text = TablaPersona.Rows[0]["Apellido2"].ToString();
                lblSexoDato.Text = TablaPersona.Rows[0]["Sexo"].ToString();
                lblCedulaDato.Text = TablaPersona.Rows[0]["Num_Cedula"].ToString();
                lblFechaNacimientoDato.Text = arreglarFecha(TablaPersona.Rows[0]["Fec_Nacimiento"].ToString());
                lblDistritoDato.Text = TablaPersona.Rows[0]["Fk_IdDistrito"].ToString();
                lblPasatiemposDato.Text = TablaPersona.Rows[0]["Pasatiempos"].ToString();
            }

            cIATContactoNegocios Contacto = new cIATContactoNegocios(1, "A", 2, "B");

            Contacto.FK_IdUsuario = Usuario.Id_Usuario;

            DataTable TablaContactos = Contacto.Buscar();

            if (TablaContactos.Rows.Count > 0)
            {
                for (int i = 0; i < TablaContactos.Rows.Count; i++)
                {
                    switch (Int16.Parse(TablaContactos.Rows[i]["FK_IdTipoContacto"].ToString()))
                    {
                        case 1:
                            lblTelefonoHabitacionDato.Text = TablaContactos.Rows[i]["Detalle"].ToString();
                            break;
                        case 2:
                            lblTelefonoCelularDato.Text = TablaContactos.Rows[i]["Detalle"].ToString();
                            break;
                        case 3:
                            lblCorreoElectronicoDato.Text = TablaContactos.Rows[i]["Detalle"].ToString();
                            break;
                    }
                }
            }

            cargarDireccion(Int16.Parse(lblDistritoDato.Text));

        }

        private void cargarDataGridEstudios()
        {
            dgEstudios.DataSource = " ";
            PanelEstudios.Visible = true;

            cIATEstudioNegocios Estudio = new cIATEstudioNegocios(1, "A", 2, "B");

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
            }
        }

        private void cargarDataGridExperienciasLaborales()
        {
            dgExperienciasLaborales.DataSource = " ";
            PanelExperienciasLaborales.Visible = true;

            cIATExperienciaLaboralNegocios ExperienciaLaboral = new cIATExperienciaLaboralNegocios(1, "A", 2, "B");

            DataTable TablaPersona = Persona.Buscar();

            Int16 IdPersona = 0;

            if (TablaPersona.Rows.Count > 0)
            {
                IdPersona = Int16.Parse(TablaPersona.Rows[0]["Id_Persona"].ToString());
            }

            ExperienciaLaboral.FK_IdPersona = IdPersona;
            DataTable TablaExperienciaLaboral = ExperienciaLaboral.Buscar();

            if (TablaExperienciaLaboral.Rows.Count > 0)
            {
                dgExperienciasLaborales.DataSource = TablaExperienciaLaboral;
                dgExperienciasLaborales.DataBind();
            }
        }

        private void cargarIdiomas()
        {
            cIATIdiomaXPersonaNegocios IdiomaXPersona = new cIATIdiomaXPersonaNegocios(1, "A", 2, "B");

            DataTable TablaPersona = Persona.Buscar();

            Int16 IdPersona = 0;

            if (TablaPersona.Rows.Count > 0)
            {                
                IdPersona = Int16.Parse(TablaPersona.Rows[0]["Id_Persona"].ToString());
            }

            IdiomaXPersona.FK_IdPersona = IdPersona;
            DataTable TablaIdiomaXPersona = IdiomaXPersona.Buscar();

            if (TablaIdiomaXPersona.Rows.Count > 0)
            {
                for (int i = 0; i < TablaIdiomaXPersona.Rows.Count; i++)
                {
                    cIATIdiomaNegocios Idioma = new cIATIdiomaNegocios(1, "A", 2, "B");
                    Idioma.Id_Idioma = Int16.Parse(TablaIdiomaXPersona.Rows[i]["FK_IdIdioma"].ToString());
                    DataTable TablaIdioma = Idioma.Buscar();

                    if (TablaIdioma.Rows.Count > 0)
                    {
                        foreach (ListItem idioma in chkIdiomas.Items)
                        {
                            if (idioma.Text.CompareTo(TablaIdioma.Rows[0]["Nom_Idioma"].ToString()) == 0)
                            {
                                idioma.Selected = true;
                                ListaIdiomas.Add(TablaIdioma.Rows[0]["Nom_Idioma"].ToString());
                            }
                        }
                    }
                }
            }
        }

        protected void ibtnEditarDatosPersonales_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("frmEditarEstudiosAdultoMayor.aspx");
        }

        protected void ibtnEditarDatosPersonales_Click1(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("frmEditarDatosPersonalesAdultoMayor.aspx");
        }

        protected void ibtnEditarExperienciasLaborales_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("frmEditarExperienciasLaboralesAdultoMayor.aspx");
        }
    
        protected void btnEditarIdiomas_Click(object sender, ImageClickEventArgs e)
        {
            ibtnActualizarIdiomas.Visible = true;
            ibtnEditarIdiomas.Visible = false;
            chkIdiomas.Enabled = true;
        }

        protected void btnActualizarIdiomas_Click(object sender, ImageClickEventArgs e)
        {
            ibtnActualizarIdiomas.Visible = false;
            ibtnEditarIdiomas.Visible = true;
            //Base de datos
            cIATIdiomaXPersonaNegocios IdiomaXPersona = new cIATIdiomaXPersonaNegocios(1, "A", 2, "B");
            cargarUsuario();
            DataTable TablaPersona = Persona.Buscar();

            Int16 IdPersona = 0;

            if (TablaPersona.Rows.Count > 0)
            {
                IdPersona = Int16.Parse(TablaPersona.Rows[0]["Id_Persona"].ToString());
            }

            cIATIdiomaNegocios Idioma = new cIATIdiomaNegocios(1, "A", 2, "B");
            foreach (ListItem idiomat in chkIdiomas.Items)
            {
                if (!ListaIdiomas.Contains(idiomat.Text) && idiomat.Selected)
                {
                    Idioma.Nom_Idioma = idiomat.Text;
                    DataTable TablaIdioma = Idioma.Buscar();

                    Int16 IdIdioma = 0;

                    if (TablaIdioma.Rows.Count > 0)
                    {
                        IdIdioma = Int16.Parse(TablaIdioma.Rows[0]["Id_Idioma"].ToString());
                        IdiomaXPersona.FK_IdPersona = IdPersona;
                        IdiomaXPersona.FK_IdIdioma = IdIdioma;
                        IdiomaXPersona.Insertar();
                        ListaIdiomas.Add(idiomat.Text);
                    }
                }
            }
            cargarIdiomas();
            chkIdiomas.Enabled = false;
            // 
        }

        protected void btnEditarPasatiempo_Click(object sender, ImageClickEventArgs e)
        {
            txtPasatiempo.Text = lblPasatiemposDato.Text;
            txtPasatiempo.Visible = true;
            ibtnEditarPasatiempo.Visible = false;
            ibtnActualizarPasatiempo.Visible = true;
            lblPasatiemposDato.Visible = false;
        }

        protected void btnActualizarPasatiempo_Click(object sender, ImageClickEventArgs e)
        {
            lblPasatiemposDato.Text = txtPasatiempo.Text;
            txtPasatiempo.Visible = false;
            ibtnEditarPasatiempo.Visible = true;
            ibtnActualizarPasatiempo.Visible = false;
            lblPasatiemposDato.Visible = true;
            cargarUsuario();
            DataTable TablaPersona = Persona.Buscar();

            if (TablaPersona.Rows.Count > 0)
            {
                Persona.Id_Persona = Int16.Parse(TablaPersona.Rows[0]["Id_Persona"].ToString());
            }

            Persona.Nom_Persona = TablaPersona.Rows[0]["Nom_Persona"].ToString(); ;
            Persona.Apellido1 = TablaPersona.Rows[0]["Apellido1"].ToString();
            Persona.Apellido2 = TablaPersona.Rows[0]["Apellido2"].ToString();
            Persona.Sexo = TablaPersona.Rows[0]["Sexo"].ToString();
            Persona.Num_Cedula = TablaPersona.Rows[0]["Num_Cedula"].ToString();
            Persona.Fec_Nacimiento = DateTime.Parse(TablaPersona.Rows[0]["Fec_Nacimiento"].ToString());
            Persona.FK_IdDistrito = Int16.Parse(TablaPersona.Rows[0]["Fk_IdDistrito"].ToString());
            Persona.Pasatiempos = txtPasatiempo.Text;

            Persona.Actualizar();
        }
    }
}