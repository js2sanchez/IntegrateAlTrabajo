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
    public partial class frmRegistroEmpresa : System.Web.UI.Page
    {
        private static cIATEmpresaNegocios Empresa = new cIATEmpresaNegocios(1, "A", 2, "B");
        private static cIATUsuarioNegocios Usuario = new cIATUsuarioNegocios(1, "A", 2, "B");
        private static cIATContactoNegocios Telefono = new cIATContactoNegocios(1, "A", 2, "B");
        private static cIATContactoNegocios CorreoElectronico = new cIATContactoNegocios(1, "A", 2, "B");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                mvRegistroEmpresa.ActiveViewIndex = 0;
                cargarTodosDropDownList();
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

        protected void mvRegistroEmpresa_ActiveViewChanged(object sender, EventArgs e)
        {

        }

        protected void btnSiguientePaso1_Click(object sender, EventArgs e)
        {
            Validate("gvDatosGenerales");

            if (Page.IsValid)
            {
                Empresa.Nom_Empresa = txtNombreEmpresa.Text;
                DataTable TablaNomEmpresa = Empresa.Buscar();
                Empresa.Num_CedulaJuridica = txtCedulaJuridica.Text;
                Empresa.Dsc_Empresa = txtDescripcion.Text;
                CorreoElectronico.Detalle = txtEmail.Text;
                CorreoElectronico.FK_IdTipoContacto = 3;
                Telefono.Detalle = txtTelefono.Text;
                Telefono.FK_IdTipoContacto = 1;
                Empresa.FK_IdDistrito = Int16.Parse(drpDistrito.SelectedValue);
                Empresa.PuntajePromedio = 0.00;
                if (TablaNomEmpresa.Rows.Count == 0)
                {
                    mvRegistroEmpresa.ActiveViewIndex = 1;
                }
                else 
                {
                    Response.Write(@"<SCRIPT LANGUAGE=""JavaScript"">alert('El nombre de empresa ya existe')</SCRIPT>");
                }
            }
        }

        protected void btnSiguientePaso2_Click(object sender, EventArgs e)
        {
            Validate("gvDatosCuenta");
            if (Page.IsValid)
            {
                Usuario.Nom_Usuario = txtNombreUsuario.Text;
                DataTable TablaNomUsuario = Usuario.Buscar();
                Usuario.Contrasenna = txtContraseña.Text;
                Usuario.Indicio_Contrasenna = txtIndicioContraseña.Text;
                Usuario.FK_IdTipoUsuario = 2;
                Usuario.Estado = 1;
                if (TablaNomUsuario.Rows.Count.Equals(0))
                {
                    if (txtContraseña.Text.CompareTo(txtConfirmarContraseña.Text) == 0)
                    {
                        mvRegistroEmpresa.ActiveViewIndex = 2;
                    }
                    else
                    {
                        Response.Write(@"<SCRIPT LANGUAGE=""JavaScript"">alert('Las contraseñas no coinciden')</SCRIPT>");
                       //ClientScript.RegisterStartupScript(this.GetType(), "popup", "<script type='text/javascript'>alert('You have Sucess fully Registered');</script>");
                    }
                }
                else
                {
                    Response.Write(@"<SCRIPT LANGUAGE=""JavaScript"">alert('El nombre de usuario ya existe')</SCRIPT>");
                }
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

        protected void btnFinalizar_Click(object sender, EventArgs e)
        {
            //mvRegistroEmpresa.ActiveViewIndex = 0;
            Usuario.Insertar();
            DataTable TablaUsuario = Usuario.Buscar();

            Int16 IdUsuario = 0;

            if (TablaUsuario.Rows.Count > 0)
            {
                IdUsuario = Int16.Parse(TablaUsuario.Rows[0]["Id_Usuario"].ToString());
            }

            Empresa.FK_IdUsuario = IdUsuario;
            Empresa.Insertar();
            CorreoElectronico.FK_IdUsuario = IdUsuario;
            CorreoElectronico.Insertar();
            Telefono.FK_IdUsuario = IdUsuario;
            Telefono.Insertar();
            Response.Redirect("/Autenticacion/frmAutenticacion.aspx");
            

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

        protected void btnCancelarPaso1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Autenticacion/frmAutenticacion.aspx");
        }

        protected void btnCancelarPaso2_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Autenticacion/frmAutenticacion.aspx");
        }

        protected void btnCancelarPaso3_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Autenticacion/frmAutenticacion.aspx");
        }
    }
}