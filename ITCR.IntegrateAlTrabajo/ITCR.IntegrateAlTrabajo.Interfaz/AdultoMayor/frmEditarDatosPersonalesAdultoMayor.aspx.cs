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
    public partial class frmEditarDatosPersonalesAdultoMayor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarTodosDropDownList();
                cargarDatosPersonales();
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
        }

        #endregion

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

        private void cargarDireccion(Int16 IdDistrito)
        {
            cIATDistritoNegocios Distrito = new cIATDistritoNegocios(1, "A", 2, "B");

            Distrito.Id_Distrito = IdDistrito;
            DataTable TablaDistrito = Distrito.Buscar();

            Int16 IdCanton = 0;

            if (TablaDistrito.Rows.Count > 0)
            {
                IdCanton = Int16.Parse(TablaDistrito.Rows[0]["FK_IdCanton"].ToString());
            }

            cIATCantonNegocios Canton = new cIATCantonNegocios(1, "A", 2, "B");

            Canton.Id_Canton = IdCanton;
            DataTable TablaCanton = Canton.Buscar();

            Int16 IdProvincia = 0;

            if (TablaCanton.Rows.Count > 0)
            {
                IdProvincia = Int16.Parse(TablaCanton.Rows[0]["FK_IdProvincia"].ToString());
            }

            cIATProvinciaNegocios Provincia = new cIATProvinciaNegocios(1, "A", 2, "B");

            cargarDropDownListProvincias();
            drpProvincia.SelectedValue = IdProvincia.ToString();
            cargarDropDownListCantones();
            drpCanton.SelectedValue = IdCanton.ToString();
            cargarDropDownListDistritos();
            drpDistrito.SelectedValue = IdDistrito.ToString();
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

            Persona.FK_IdUsuario = IdUsuario;
            DataTable TablaPersona = Persona.Buscar();

            if (TablaPersona.Rows.Count > 0)
            {
                txtNombre.Text = TablaPersona.Rows[0]["Nom_Persona"].ToString();
                txtApellido1.Text = TablaPersona.Rows[0]["Apellido1"].ToString();
                txtApellido2.Text = TablaPersona.Rows[0]["Apellido2"].ToString();
                txtCedula.Text = TablaPersona.Rows[0]["Num_Cedula"].ToString();
                txtFechaNacimiento.Text = arreglarFecha(TablaPersona.Rows[0]["Fec_Nacimiento"].ToString());
                drpSexo.SelectedValue = TablaPersona.Rows[0]["Sexo"].ToString();
                cargarDireccion(Int16.Parse(TablaPersona.Rows[0]["Fk_IdDistrito"].ToString()));
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
                            txtTelefonoHabitacion.Text = TablaContactos.Rows[i]["Detalle"].ToString();
                            break;
                        case 2:
                            txtTelefonoCelular.Text = TablaContactos.Rows[i]["Detalle"].ToString();
                            break;
                        case 3:
                            txtCorreoElectronico.Text = TablaContactos.Rows[i]["Detalle"].ToString();
                            break;
                    }
                }
            }
        }

        protected void drpProvincia_TextChanged(object sender, EventArgs e)
        {
            cargarDropDownListCantones();
            cargarDropDownListDistritos();
        }

        protected void drpCanton_TextChanged(object sender, EventArgs e)
        {
            cargarDropDownListDistritos();
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            cIATPersonaNegocios Persona = new cIATPersonaNegocios(1, "A", 2, "B");

            Persona.FK_IdUsuario = Int16.Parse(Session["Id_Usuario"].ToString());
            DataTable TablaPersona = Persona.Buscar();

            if (TablaPersona.Rows.Count > 0)
            {
                Persona.Id_Persona = Int16.Parse(TablaPersona.Rows[0]["Id_Persona"].ToString());
                Persona.Pasatiempos = TablaPersona.Rows[0]["Pasatiempos"].ToString();
            }

            Persona.Nom_Persona = txtNombre.Text;
            Persona.Apellido1 = txtApellido1.Text;
            Persona.Apellido2 = txtApellido2.Text;
            Persona.Num_Cedula = txtCedula.Text;
            Persona.Fec_Nacimiento = DateTime.Parse(txtFechaNacimiento.Text);
            Persona.Sexo = drpSexo.SelectedValue;
            Persona.FK_IdDistrito = Int16.Parse(drpDistrito.SelectedValue);

            Persona.Actualizar();

            //Teléfono de habitación
            cIATContactoNegocios ContactoTelefonoHabitacion = new cIATContactoNegocios(1, "A", 2, "B");
            ContactoTelefonoHabitacion.FK_IdTipoContacto = 1;
            ContactoTelefonoHabitacion.FK_IdUsuario = Persona.FK_IdUsuario;
            DataTable TablaTelefonoHabitacion = ContactoTelefonoHabitacion.Buscar();

            if (TablaTelefonoHabitacion.Rows.Count > 0)
            {
                ContactoTelefonoHabitacion.Id_Contacto = Int16.Parse(TablaTelefonoHabitacion.Rows[0]["Id_Contacto"].ToString());
                ContactoTelefonoHabitacion.Detalle = txtTelefonoHabitacion.Text;
                ContactoTelefonoHabitacion.Actualizar();
            }

            //Teléfono celular
            cIATContactoNegocios ContactoTelefonoCelular = new cIATContactoNegocios(1, "A", 2, "B");
            ContactoTelefonoCelular.FK_IdTipoContacto = 2;
            ContactoTelefonoCelular.FK_IdUsuario = Persona.FK_IdUsuario;
            DataTable TablaTelefonoCelular = ContactoTelefonoCelular.Buscar();

            if (TablaTelefonoCelular.Rows.Count > 0)
            {
                ContactoTelefonoCelular.Id_Contacto = Int16.Parse(TablaTelefonoCelular.Rows[0]["Id_Contacto"].ToString());
                ContactoTelefonoCelular.Detalle = txtTelefonoCelular.Text;
                ContactoTelefonoCelular.Actualizar();
            }

            //Correo electrónico
            cIATContactoNegocios ContactoCorreoElectronico = new cIATContactoNegocios(1, "A", 2, "B");
            ContactoCorreoElectronico.FK_IdTipoContacto = 3;
            ContactoCorreoElectronico.FK_IdUsuario = Persona.FK_IdUsuario;
            DataTable TablaCorreoElectronico = ContactoCorreoElectronico.Buscar();

            if (TablaCorreoElectronico.Rows.Count > 0)
            {
                ContactoCorreoElectronico.Id_Contacto = Int16.Parse(TablaCorreoElectronico.Rows[0]["Id_Contacto"].ToString());
                ContactoCorreoElectronico.Detalle = txtCorreoElectronico.Text;
                ContactoCorreoElectronico.Actualizar();
            }

            Response.Redirect("frmConsultarPerfilAdultoMayor.aspx");
        }
    }
}