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
    public partial class frmEditarDatosAutenticacionEmpresa : System.Web.UI.Page
    {
        private static cIATUsuarioNegocios Usuario = new cIATUsuarioNegocios(1, "A", 2, "B");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Nombre_Usuario"] == null)
                {
                    Response.Redirect("/Default.aspx");
                }
                CargarDatosAutenticacion();
                txtNombreUsuario.Focus();
            }
        }

        public void CargarDatosAutenticacion()
        {
            Usuario.Nom_Usuario = Convert.ToString(Session["Nombre_Usuario"]);
            DataTable tablaUsuario = Usuario.Buscar();
            Int16 IdUsuario = 0;
            if (tablaUsuario.Rows.Count > 0)
            {
                IdUsuario = Int16.Parse(tablaUsuario.Rows[0]["Id_Usuario"].ToString());
                txtNombreUsuario.Text = tablaUsuario.Rows[0]["Nom_Usuario"].ToString();
                txtIndicio.Text = tablaUsuario.Rows[0]["Indicio_Contrasenna"].ToString();
            }
        }

        protected void btnCancelarActualización_Click(object sender, EventArgs e)
        {
            Response.Redirect("./frmPerfilEmpresa.aspx");
        }

        protected void btnAplicarCambios_Click(object sender, EventArgs e)
        {
            Validate("gvDatosCuenta");
            if (Page.IsValid)
            {
                Usuario.Nom_Usuario = Convert.ToString(Session["Nombre_Usuario"]);
                DataTable tablaUsuario = Usuario.Buscar();
                Int16 IdUsuario = 0;
                string contraseña = "";
                if (tablaUsuario.Rows.Count > 0)
                {
                    IdUsuario = Int16.Parse(tablaUsuario.Rows[0]["Id_Usuario"].ToString());
                    contraseña = tablaUsuario.Rows[0]["Contrasenna"].ToString();
                    Usuario.FK_IdTipoUsuario = Int16.Parse(tablaUsuario.Rows[0]["FK_IdTipoUsuario"].ToString());
                }

                Usuario.Id_Usuario = IdUsuario;
                Usuario.Nom_Usuario = Session["Nombre_Usuario"].ToString();

                int AntiguaContraseñaValida = Usuario.Validar(txtAntiguaContraseña.Text);

                if (AntiguaContraseñaValida == 2)
                {
                    if (txtNuevaContraseña.Text.CompareTo(txtConfirmacion.Text) == 0)
                    {
                        bool valido = true;
                        if(!(Session["Nombre_Usuario"].ToString().Equals(txtNombreUsuario.Text))){
                            var disponibilidad = new cIATUsuarioNegocios(1, "A", 2, "B");
                            disponibilidad.Nom_Usuario = txtNombreUsuario.Text;
                            valido = disponibilidad.Validar("") == 0;
                        }
                        if(valido){
                            Usuario.Nom_Usuario = txtNombreUsuario.Text;
                            Session["Nombre_Usuario"] = Usuario.Nom_Usuario;
                            Usuario.Contrasenna = txtConfirmacion.Text;
                            Usuario.Indicio_Contrasenna = txtIndicio.Text;
                            Usuario.Estado = 1;
                            Usuario.Actualizar();
                            Response.Redirect("./frmPerfilEmpresa.aspx");
                        }
                        else{
                            string script = @"<script type='text/javascript'>
                            custom_alert('El nombre de usuario no está disponible.');
                            </script>";
                            ScriptManager.RegisterStartupScript(this, typeof(Page), "Autenticación", script, false);
                        }
                    }
                    else
                    {
                        Response.Write(@"<SCRIPT LANGUAGE=""JavaScript"">alert('La contraseña no se confirmó correctamente.')</SCRIPT>");
                    }
                }
                else
                {
                    Response.Write(@"<SCRIPT LANGUAGE=""JavaScript"">alert('La contraseña actual no es correcta.')</SCRIPT>");
                }
            }
        }
    }
}