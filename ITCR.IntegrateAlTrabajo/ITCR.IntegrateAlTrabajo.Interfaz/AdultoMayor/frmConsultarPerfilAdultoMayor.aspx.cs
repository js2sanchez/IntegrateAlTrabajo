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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarDatosPersonales();
                cargarDataGridEstudios();
                cargarDataGridExperienciasLaborales();
                cargarIdiomas();
            }
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
            cIATPersonaNegocios Persona = new cIATPersonaNegocios(1, "A", 2, "B");

            cIATUsuarioNegocios Usuario = new cIATUsuarioNegocios(1, "A", 2, "B");

            Usuario.Nom_Usuario = Session["Nombre_Usuario"].ToString();
            DataTable TablaUsuario = Usuario.Buscar();

            Int16 IdUsuario = 0;

            if (TablaUsuario.Rows.Count > 0)
            {
                IdUsuario = Int16.Parse(TablaUsuario.Rows[0]["Id_Usuario"].ToString());
            }

            Session["Id_Usuario"] = IdUsuario;

            Persona.FK_IdUsuario = IdUsuario;
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

            Contacto.FK_IdUsuario = IdUsuario;

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
            PanelEstudios.Visible = false;

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
                PanelEstudios.Visible = true;
            }
        }

        private void cargarDataGridExperienciasLaborales()
        {
            dgExperienciasLaborales.DataSource = " ";
            PanelExperienciasLaborales.Visible = false;

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
            }

            ExperienciaLaboral.FK_IdPersona = IdPersona;
            DataTable TablaExperienciaLaboral = ExperienciaLaboral.Buscar();

            if (TablaExperienciaLaboral.Rows.Count > 0)
            {
                dgExperienciasLaborales.DataSource = TablaExperienciaLaboral;
                dgExperienciasLaborales.DataBind();
                PanelExperienciasLaborales.Visible = true;
            }
        }

        private void cargarIdiomas()
        {
            cIATIdiomaXPersonaNegocios IdiomaXPersona = new cIATIdiomaXPersonaNegocios(1, "A", 2, "B");

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
            }

            IdiomaXPersona.FK_IdPersona = IdPersona;
            DataTable TablaIdiomaXPersona = IdiomaXPersona.Buscar();

            if (TablaIdiomaXPersona.Rows.Count > 0)
            {
                String ResultadoIdiomas = "";

                for (int i = 0; i < TablaIdiomaXPersona.Rows.Count; i++)
                {
                    cIATIdiomaNegocios Idioma = new cIATIdiomaNegocios(1, "A", 2, "B");
                    Idioma.Id_Idioma = Int16.Parse(TablaIdiomaXPersona.Rows[i]["FK_IdIdioma"].ToString());
                    DataTable TablaIdioma = Idioma.Buscar();

                    if (TablaIdioma.Rows.Count > 0)
                    {
                        ResultadoIdiomas = ResultadoIdiomas + TablaIdioma.Rows[0]["Nom_Idioma"].ToString() + "   ";
                    }
                }

                lblIdiomasDato.Text = ResultadoIdiomas;
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
    }
}