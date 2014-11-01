using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ITCR.IntegrateAlTrabajo.Negocios;
using ITCR.IntegrateAlTrabajo.Datos;
using System.Data;
using System.Web.Services;

namespace ITCR.IntegrateAlTrabajo.Interfaz.Administrador
{
    public partial class frmPerfilEmpresa : System.Web.UI.Page
    {
        private static cIATEmpresaNegocios Empresa = new cIATEmpresaNegocios(1, "A", 2, "B");
        private static cIATUsuarioNegocios Usuario = new cIATUsuarioNegocios(1, "A", 2, "B");
        private static cIATContactoNegocios Telefono = new cIATContactoNegocios(1, "A", 2, "B");
        private static cIATContactoNegocios CorreoElectronico = new cIATContactoNegocios(1, "A", 2, "B");
        private static cIATCalificacionEmpresaNegocios Calificacion = new cIATCalificacionEmpresaNegocios(1, "A", 2, "B");
        private static cIATOfertaTrabajoNegocios Oferta = new cIATOfertaTrabajoNegocios(1, "A", 2, "B");
        private static cIATOpinionNegocios Opinion = new cIATOpinionNegocios(1, "A", 2, "B");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Nombre_Usuario"] == null)
                {
                    Response.Redirect("/Default.aspx");
                }
                cargar_datos_usuario();
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
                lblContenidoDistrito.Text = TablaDistrito.Rows[0]["Nom_Distrito"].ToString();
                IdCanton = Int16.Parse(TablaDistrito.Rows[0]["FK_IdCanton"].ToString());
            }

            cIATCantonNegocios Canton = new cIATCantonNegocios(1, "A", 2, "B");

            Canton.Id_Canton = IdCanton;
            DataTable TablaCanton = Canton.Buscar();

            Int16 IdProvincia = 0;

            if (TablaCanton.Rows.Count > 0)
            {
                lblContenidoCant.Text = TablaCanton.Rows[0]["Nom_Canton"].ToString();
                IdProvincia = Int16.Parse(TablaCanton.Rows[0]["FK_IdProvincia"].ToString());
            }

            cIATProvinciaNegocios Provincia = new cIATProvinciaNegocios(1, "A", 2, "B");

            Provincia.Id_Provincia = IdProvincia;
            DataTable TablaProvincia = Provincia.Buscar();

            if (TablaProvincia.Rows.Count > 0)
            {
                lblContenidoProvincia.Text = TablaProvincia.Rows[0]["Nom_Provincia"].ToString();
            }
        }

        public void cargar_datos_usuario()
        {
            Usuario.Id_Usuario = Int16.Parse(Session["Id_Usuario_P"].ToString());

            DataTable tablaUsuario = Usuario.Buscar();
            Int16 IdUsuario = 0;

            if (tablaUsuario.Rows.Count > 0)
            {
                IdUsuario = Int16.Parse(tablaUsuario.Rows[0]["Id_Usuario"].ToString());
                Usuario.Id_Usuario = IdUsuario;
            }

            Empresa.FK_IdUsuario = IdUsuario;
            DataTable tablaEmpresa = Empresa.Buscar();
            if (tablaEmpresa.Rows.Count > 0)
            {
                lblContenidoNombreEmpresa.Text = tablaEmpresa.Rows[0]["Nom_Empresa"].ToString();
                lblContenidoCedulaJuridica.Text = tablaEmpresa.Rows[0]["Num_CedulaJuridica"].ToString();
                lblContenidoDescripcion.Text = tablaEmpresa.Rows[0]["Dsc_Empresa"].ToString();
                lblContenidoDistrito.Text = tablaEmpresa.Rows[0]["Fk_IdDistrito"].ToString();
            }
            Telefono.FK_IdUsuario = IdUsuario;
            Telefono.FK_IdTipoContacto = 1;
            DataTable tablaTelefono = Telefono.Buscar();
            if (tablaTelefono.Rows.Count > 0)
            {
                lblContenidoTelefono.Text = tablaTelefono.Rows[0]["Detalle"].ToString();
            }
            CorreoElectronico.FK_IdUsuario = IdUsuario;
            CorreoElectronico.FK_IdTipoContacto = 3;
            DataTable tablaEmail = CorreoElectronico.Buscar();
            if (tablaTelefono.Rows.Count > 0)
            {
                lblContenidoEmail.Text = tablaEmail.Rows[0]["Detalle"].ToString();
            }
            cargarDireccion(Int16.Parse(lblContenidoDistrito.Text));
        }

        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Administrador/frmCambiarEstadoPerfilEmpresa.aspx");
        }
    }
}