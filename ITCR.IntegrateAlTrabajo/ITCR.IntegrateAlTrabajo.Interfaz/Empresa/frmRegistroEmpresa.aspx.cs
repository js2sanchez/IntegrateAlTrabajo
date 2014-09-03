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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                mvRegistroEmpresa.ActiveViewIndex = 0;
                cargarTodosDropDownList();
                txtNombreEmpresa.Focus();
                HttpContext.Current.Session["Empresa"] = new cIATEmpresaNegocios(1, "A", 2, "B");
                HttpContext.Current.Session["Usuario"] = new cIATUsuarioNegocios(1, "A", 2, "B");
                HttpContext.Current.Session["Telefono"] = new cIATContactoNegocios(1, "A", 2, "B");
                HttpContext.Current.Session["CorreoElectronico"] = new cIATContactoNegocios(1, "A", 2, "B");
                if (mvRegistroEmpresa.ActiveViewIndex == 0) { Session["Proceso"] = 0; }
            }
            if (((int)Session["Proceso"]) == 1)
            {
                Response.Redirect("/Autenticacion/frmAutenticacion.aspx");
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
                ((cIATEmpresaNegocios)HttpContext.Current.Session["Empresa"]).Nom_Empresa = txtNombreEmpresa.Text;
                ((cIATEmpresaNegocios)HttpContext.Current.Session["Empresa"]).Num_CedulaJuridica = txtCedulaJuridica.Text;
                DataTable TablaNomEmpresa = ((cIATEmpresaNegocios)HttpContext.Current.Session["Empresa"]).Buscar();
                ((cIATEmpresaNegocios)HttpContext.Current.Session["Empresa"]).Dsc_Empresa = txtDescripcion.Text;
                ((cIATContactoNegocios)HttpContext.Current.Session["CorreoElectronico"]).Detalle = txtEmail.Text;
                ((cIATContactoNegocios)HttpContext.Current.Session["CorreoElectronico"]).FK_IdTipoContacto = 3;
                ((cIATContactoNegocios)HttpContext.Current.Session["Telefono"]).Detalle = txtTelefono.Text;
                ((cIATContactoNegocios)HttpContext.Current.Session["Telefono"]).FK_IdTipoContacto = 1;
                ((cIATEmpresaNegocios)HttpContext.Current.Session["Empresa"]).FK_IdDistrito = Int16.Parse(drpDistrito.SelectedValue);
                ((cIATEmpresaNegocios)HttpContext.Current.Session["Empresa"]).PuntajePromedio = 0.00;
                if (TablaNomEmpresa.Rows.Count == 0)
                {
                    mvRegistroEmpresa.ActiveViewIndex = 1;
                    txtNombreUsuario.Focus();
                }
                else 
                {
                    String datos = "";
                    foreach (DataRow _row in TablaNomEmpresa.Rows)
                    {
                        if (txtNombreEmpresa.Text.CompareTo(_row["Nom_Empresa"].ToString()) == 0)
                        {
                            datos += "\\n-Nombre de la empresa";
                        }
                        if (txtCedulaJuridica.Text.CompareTo(_row["Num_CedulaJuridica"].ToString()) == 0)
                        {
                            datos += "\\n-Cédula Jurídica";
                        }
                    }
                    string script = @"<script type='text/javascript'>
                            alertify.alert('Los siguientes datos ya estan registrados:" +datos+ "');</script>";
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "Datos de empresa", script, false);
                }
            }
        }

        protected void btnSiguientePaso2_Click(object sender, EventArgs e)
        {
            Validate("gvDatosCuenta");
            if (Page.IsValid)
            {
                ((cIATUsuarioNegocios)HttpContext.Current.Session["Usuario"]).Nom_Usuario = txtNombreUsuario.Text;
                int validacionUsuario = ((cIATUsuarioNegocios)HttpContext.Current.Session["Usuario"]).Validar(txtContraseña.Text);                
                if (validacionUsuario==0)
                {
                    ((cIATUsuarioNegocios)HttpContext.Current.Session["Usuario"]).Contrasenna = txtContraseña.Text;
                    ((cIATUsuarioNegocios)HttpContext.Current.Session["Usuario"]).Indicio_Contrasenna = txtIndicioContraseña.Text;
                    ((cIATUsuarioNegocios)HttpContext.Current.Session["Usuario"]).FK_IdTipoUsuario = 2;
                    ((cIATUsuarioNegocios)HttpContext.Current.Session["Usuario"]).Estado = 1;
                    mvRegistroEmpresa.ActiveViewIndex = 2;
                }
                else
                {
                    string script = @"<script type='text/javascript'>
                            alertify.alert('El nombre de usuario ya existe. Escriba otro por favor.');
                            </script>";
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "Datos de cuenta", script, false);
                    txtNombreUsuario.Focus();
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
            if (chkAceptarTerminos.Checked)
            {
                ((cIATUsuarioNegocios)HttpContext.Current.Session["Usuario"]).Insertar();
                DataTable TablaUsuario = ((cIATUsuarioNegocios)HttpContext.Current.Session["Usuario"]).Buscar();

                Int16 IdUsuario = 0;

                if (TablaUsuario.Rows.Count > 0)
                {
                    IdUsuario = Int16.Parse(TablaUsuario.Rows[0]["Id_Usuario"].ToString());
                }

                ((cIATEmpresaNegocios)HttpContext.Current.Session["Empresa"]).FK_IdUsuario = IdUsuario;
                ((cIATEmpresaNegocios)HttpContext.Current.Session["Empresa"]).Insertar();
                ((cIATContactoNegocios)HttpContext.Current.Session["CorreoElectronico"]).FK_IdUsuario = IdUsuario;
                ((cIATContactoNegocios)HttpContext.Current.Session["CorreoElectronico"]).Insertar();
                ((cIATContactoNegocios)HttpContext.Current.Session["Telefono"]).FK_IdUsuario = IdUsuario;
                ((cIATContactoNegocios)HttpContext.Current.Session["Telefono"]).Insertar();
                Session["Proceso"] = 1;
                string script = @"<script type='text/javascript'>
                            finalizar();
                            </script>";

                ScriptManager.RegisterStartupScript(this, typeof(Page), "Registro", script, false);
            }
            else
            {
                string script = @"<script type='text/javascript'>
                            aceptarTerminos();
                            </script>";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Registro", script, false);
            }
        }

        protected void chkAceptarTerminos_CheckedChanged(object sender, EventArgs e)
        {
            bool _checked = chkAceptarTerminos.Checked;
            if (_checked)
            {
                btnFinalizar.Attributes.Remove("disabled");
                btnFinalizar.Attributes["onclick"] = "btnFinalizar_Click";
            }
            else
            {
                btnFinalizar.Attributes["disabled"] = "true";
            }
        }

        private void salirSinGuardar()
        {
            string code = @"<script type='text/javascript'>endConfirmation();</script>";
            ScriptManager.RegisterStartupScript(this, typeof(Page), "alert", code, false);
        }

        protected void btnCancelarPaso1_Click(object sender, EventArgs e)
        {
            salirSinGuardar();
        }

        protected void btnCancelarPaso2_Click(object sender, EventArgs e)
        {
            salirSinGuardar();
        }

        protected void btnCancelarPaso3_Click(object sender, EventArgs e)
        {
            salirSinGuardar();
        }

        protected void btnAtras_Click(object sender, EventArgs e)
        {
            mvRegistroEmpresa.ActiveViewIndex = 0;
        }

        protected void btnAtras1_Click(object sender, EventArgs e)
        {
            mvRegistroEmpresa.ActiveViewIndex = 1;
        }

        protected void validarUsuarioServer(object sender, ServerValidateEventArgs e)
        {
            e.IsValid = 5 <= txtNombreUsuario.Text.Length
                && txtNombreUsuario.Text.Length <= 50;
        }

        protected void validarContrasennaServer(object source, ServerValidateEventArgs args)
        {
            args.IsValid = txtContraseña.Text.Length >= 8;
        }

        protected void validarTelefonoServer(object source, ServerValidateEventArgs args)
        {
            args.IsValid = txtTelefono.Text.Length == 8
                || txtTelefono.Text.Length == 0;
        }
    }
}