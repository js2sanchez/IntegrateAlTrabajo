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
    public partial class frmOpinarSobreBolsaTrabajo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtOpinion.Focus();
        }

        private Int16 obtenerIdUsuario(String NombreUsuario)
        {
            cIATUsuarioNegocios Usuario = new cIATUsuarioNegocios(1, "A", 2, "B");
            Usuario.Nom_Usuario = NombreUsuario;

            DataTable TablaUsuario = Usuario.Buscar();

            Int16 IdUsuario = 0;

            if (TablaUsuario.Rows.Count > 0)
            {
                IdUsuario = Int16.Parse(TablaUsuario.Rows[0]["Id_Usuario"].ToString());
            }

            return IdUsuario;
        }

        protected void btnEnviarOpinión_Click(object sender, EventArgs e)
        {
            Page.Validate("gvOpinion");

            if (Page.IsValid)
            {
                cIATOpinionNegocios Opinion = new cIATOpinionNegocios(1, "A", 2, "B");

                Opinion.Detalle = txtOpinion.Text;
                Opinion.FK_IdUsuario = obtenerIdUsuario(Session["Nombre_Usuario"].ToString());

                Opinion.Insertar();
                txtOpinion.Text = "";
                txtOpinion.Focus();
            }
        }
    }
}