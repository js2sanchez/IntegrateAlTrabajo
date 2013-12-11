using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ITCR.IntegrateAlTrabajo.Negocios;
using ITCR.IntegrateAlTrabajo.Datos;

namespace ITCR.IntegrateAlTrabajo.Interfaz.Administrador
{
    public partial class frmOpinionesSobreBolsaTrabajo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            cargarDataGridViewOpiniones();
        }

        private String obtenerNombreUsuario(Int32 IdUsuario)
        {
            cIATUsuarioNegocios Usuario = new cIATUsuarioNegocios(1, "A", 2, "B");
            Usuario.Id_Usuario = IdUsuario;

            DataTable TablaUsuario = Usuario.Buscar();

            String NombreUsuario = "";

            if (TablaUsuario.Rows.Count > 0)
            {
                NombreUsuario = TablaUsuario.Rows[0]["Nom_Usuario"].ToString();
            }

            return NombreUsuario;
        }

        private void cargarDataGridViewOpiniones()
        {
            cIATOpinionNegocios Opinion = new cIATOpinionNegocios(1, "A", 2, "B");

            DataTable TablaOpinion = Opinion.Buscar();

            if (TablaOpinion.Rows.Count > 0)
            {
                dgOpinionesBolsaTrabajo.DataSource = TablaOpinion;
                dgOpinionesBolsaTrabajo.DataBind();

                foreach (DataGridItem Fila in dgOpinionesBolsaTrabajo.Items)
                {
                    Fila.Cells[1].Text = obtenerNombreUsuario(Int32.Parse(Fila.Cells[1].Text));
                }
            }
        }
    }
}