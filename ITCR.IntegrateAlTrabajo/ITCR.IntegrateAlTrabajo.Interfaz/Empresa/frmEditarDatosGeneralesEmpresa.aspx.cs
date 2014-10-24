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
    public partial class frmEditarDatosGeneralesEmpresa : System.Web.UI.Page
    {
        private static cIATEmpresaNegocios Empresa = new cIATEmpresaNegocios(1, "A", 2, "B");
        private static cIATUsuarioNegocios Usuario = new cIATUsuarioNegocios(1, "A", 2, "B");
        private static cIATContactoNegocios Telefono = new cIATContactoNegocios(1, "A", 2, "B");
        private static cIATContactoNegocios CorreoElectronico = new cIATContactoNegocios(1, "A", 2, "B");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Nombre_Usuario"] == null)
                {
                    Response.Redirect("/home.aspx");
                }
                cargarTodosDropDownList();
                cargar_datos_usuario();
                txtTelefono.Focus();
            }
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
            cargarDropDownListProvincias();
            cargarDropDownListCantones();
            cargarDropDownListDistritos();
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

        public void cargar_datos_usuario()
        {
            Usuario.Nom_Usuario = Convert.ToString(Session["Nombre_Usuario"]);
            DataTable tablaUsuario = Usuario.Buscar();
            Int16 IdUsuario = 0;

            if (tablaUsuario.Rows.Count > 0)
            {
                IdUsuario = Int16.Parse(tablaUsuario.Rows[0]["Id_Usuario"].ToString());
            }
            Empresa.FK_IdUsuario = IdUsuario;
            DataTable tablaEmpresa = Empresa.Buscar();
            if (tablaEmpresa.Rows.Count > 0)
            {
                txtNombreE.Text = tablaEmpresa.Rows[0]["Nom_Empresa"].ToString();
                txtCedulaE.Text = tablaEmpresa.Rows[0]["Num_CedulaJuridica"].ToString();
                txtDscE.Text = tablaEmpresa.Rows[0]["Dsc_Empresa"].ToString();
                cargarDireccion(Int16.Parse(tablaEmpresa.Rows[0]["Fk_IdDistrito"].ToString()));
            }
            Telefono.FK_IdUsuario = IdUsuario;
            Telefono.FK_IdTipoContacto = 1;
            DataTable tablaTelefono = Telefono.Buscar();
            if (tablaTelefono.Rows.Count > 0)
            {
                txtTelefono.Text = tablaTelefono.Rows[0]["Detalle"].ToString();
            }
            CorreoElectronico.FK_IdUsuario = IdUsuario;
            CorreoElectronico.FK_IdTipoContacto = 3;
            DataTable tablaEmail = CorreoElectronico.Buscar();
            if (tablaTelefono.Rows.Count > 0)
            {
                txtEmail.Text = tablaEmail.Rows[0]["Detalle"].ToString();
            }

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

        protected void btnAplicarCambios_Click(object sender, EventArgs e)
        {
            Validate("gvDatosGenerales");
            if (Page.IsValid)
            {
                Usuario.Nom_Usuario = Convert.ToString(Session["Nombre_Usuario"]);
                DataTable tablaUsuario = Usuario.Buscar();
                Int16 IdUsuario = 0;
                if (tablaUsuario.Rows.Count > 0)
                {
                    IdUsuario = Int16.Parse(tablaUsuario.Rows[0]["Id_Usuario"].ToString());
                }
                Usuario.Id_Usuario = IdUsuario;
                Empresa.FK_IdUsuario = IdUsuario;
                DataTable tablaEmpresa = Empresa.Buscar();
                Int16 IdEmpresa = 0;
                if (tablaEmpresa.Rows.Count > 0)
                {
                    IdEmpresa = Int16.Parse(tablaEmpresa.Rows[0]["Id_Empresa"].ToString());
                    Empresa.PuntajePromedio = float.Parse(tablaEmpresa.Rows[0]["PuntajePromedio"].ToString());
                }
                Empresa.Id_Empresa = IdEmpresa;
                Empresa.Nom_Empresa = txtNombreE.Text;
                Empresa.Num_CedulaJuridica = txtCedulaE.Text;
                Empresa.Dsc_Empresa = txtDscE.Text;
                
                //Actualización del correo electrónico
                CorreoElectronico.FK_IdUsuario = IdUsuario;
                CorreoElectronico.FK_IdTipoContacto = 3;

                DataTable TablaCorreoElectronico = CorreoElectronico.Buscar();

                if (TablaCorreoElectronico.Rows.Count > 0)
                {
                    CorreoElectronico.Id_Contacto = Int16.Parse(TablaCorreoElectronico.Rows[0]["Id_Contacto"].ToString());
                    CorreoElectronico.Detalle = txtEmail.Text;
                    CorreoElectronico.Actualizar();
                }

                //Actualización del teléfono
                Telefono.FK_IdUsuario = IdUsuario;
                Telefono.FK_IdTipoContacto = 1;

                DataTable TablaTelefono = Telefono.Buscar();

                if (TablaTelefono.Rows.Count > 0)
                {
                    Telefono.Id_Contacto = Int16.Parse(TablaTelefono.Rows[0]["Id_Contacto"].ToString());
                    Telefono.Detalle = txtTelefono.Text;
                    Telefono.Actualizar();
                }

                Empresa.FK_IdDistrito = Int16.Parse(drpDistrito.SelectedValue);
               
                Empresa.Actualizar();
                Response.Redirect("./frmPerfilEmpresa.aspx");
            }
        }

        protected void btnCancelarActualización_Click(object sender, EventArgs e)
        {
            Response.Redirect("./frmPerfilEmpresa.aspx");
        }
    }
}