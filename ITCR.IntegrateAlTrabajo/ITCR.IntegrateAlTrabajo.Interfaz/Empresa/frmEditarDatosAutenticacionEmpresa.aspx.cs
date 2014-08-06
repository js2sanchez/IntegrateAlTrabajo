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
                        Usuario.Nom_Usuario = txtNombreUsuario.Text;
                        Session["Nombre_Usuario"] = Usuario.Nom_Usuario;
                        Usuario.Contrasenna = txtConfirmacion.Text;
                        Usuario.Indicio_Contrasenna = txtIndicio.Text;
                        Usuario.Estado = 1;
                        Usuario.Actualizar();
                        Response.Redirect("./frmPerfilEmpresa.aspx");
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