using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ITCR.IntegrateAlTrabajo.Negocios;
using ITCR.IntegrateAlTrabajo.Datos;

namespace ITCR.IntegrateAlTrabajo.Interfaz.Autenticacion
{
    public partial class frmAutenticacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                txtNombreUsuario.Focus();
            }
        }

        protected void btnIniciarSesion_Click(object sender, EventArgs e)
        {
            if (txtNombreUsuario.Text.CompareTo("") != 0 || txtContraseña.Text.CompareTo("") != 0)
            {
                cIATUsuarioNegocios Usuario = new cIATUsuarioNegocios(1, "A", 2, "B");
                Usuario.Nom_Usuario = txtNombreUsuario.Text;

                DataTable TablaUsuario = Usuario.Buscar();

                if (TablaUsuario.Rows.Count > 0)
                {
                    String NombreUsuario = TablaUsuario.Rows[0]["Nom_Usuario"].ToString();
                    String Contraseña = TablaUsuario.Rows[0]["Contrasenna"].ToString();
                    Int16 TipoUsuario = Int16.Parse(TablaUsuario.Rows[0]["FK_IdTipoUsuario"].ToString());
                    Int16 Estado = Int16.Parse(TablaUsuario.Rows[0]["Estado"].ToString());

                    if (NombreUsuario.CompareTo(txtNombreUsuario.Text) != 0 && Contraseña.CompareTo(txtContraseña.Text) != 0)
                    {
                        string script = @"<script type='text/javascript'>
                            alert('Nombre de usuario y contraseña inválidos.');
                            </script>";

                        ScriptManager.RegisterStartupScript(this, typeof(Page), "Autenticación", script, false);
                        txtNombreUsuario.Focus();
                    }
                    else if (NombreUsuario.CompareTo(txtNombreUsuario.Text) != 0)
                    {
                        string script = @"<script type='text/javascript'>
                            alert('Nombre de usuario inválido.');
                            </script>";

                        ScriptManager.RegisterStartupScript(this, typeof(Page), "Autenticación", script, false);
                        txtNombreUsuario.Focus();
                    }
                    else if (Contraseña.CompareTo(txtContraseña.Text) != 0)
                    {
                        string script = @"<script type='text/javascript'>
                            alert('Contraseña inválida.');
                            </script>";

                        ScriptManager.RegisterStartupScript(this, typeof(Page), "Autenticación", script, false);
                        txtContraseña.Focus();
                    }
                    else if (Estado == 2)
                    {
                        string script = @"<script type='text/javascript'>
                            alert('Su cuenta aún no ha sido activada.');
                            </script>";

                        ScriptManager.RegisterStartupScript(this, typeof(Page), "Autenticación", script, false);
                        txtNombreUsuario.Focus();
                    }
                    else if (Estado == 3)
                    {
                        string script = @"<script type='text/javascript'>
                            alert('Su cuenta ha sido eliminada.');
                            </script>"; 

                        ScriptManager.RegisterStartupScript(this, typeof(Page), "Autenticación", script, false);
                        txtNombreUsuario.Focus();
                    }
                    else
                    {
                        Session["Nombre_Usuario"] = txtNombreUsuario.Text;
                        if (TipoUsuario == 1)
                        {
                            Response.Redirect("/AdultoMayor/frmConsultarPerfilAdultoMayor.aspx");
                        }
                        else if (TipoUsuario == 2)
                        {
                            Response.Redirect("/Empresa/frmPerfilEmpresa.aspx");
                        }
                        else if (TipoUsuario == 3)
                        {
                            Response.Redirect("/Administrador/frmCambiarEstadoPerfil.aspx");
                        }
                    }
                }
                else
                {
                    string script = @"<script type='text/javascript'>
                            alert('Nombre de usuario inválido.');
                            </script>";

                    ScriptManager.RegisterStartupScript(this, typeof(Page), "Autenticación", script, false);
                    txtNombreUsuario.Focus();
                }
            }
            else
            {
                string script = @"<script type='text/javascript'>
                            alert('Nombres de usuario y contraseña requeridos para autenticación.');
                            </script>";

                ScriptManager.RegisterStartupScript(this, typeof(Page), "Autenticación", script, false);
                txtNombreUsuario.Focus();
            }
        }
    }
}