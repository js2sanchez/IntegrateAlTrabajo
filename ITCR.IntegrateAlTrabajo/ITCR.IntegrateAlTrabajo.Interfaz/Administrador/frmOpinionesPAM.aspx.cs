using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ITCR.IntegrateAlTrabajo.Negocios;
using ITCR.IntegrateAlTrabajo.Datos;
using System.Web.Services;

namespace ITCR.IntegrateAlTrabajo.Interfaz.Administrador
{
    public partial class frmOpinionesSobreBolsaTrabajo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarDataGridViewOpiniones();
            }
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
            Opinion.Ind_PAM = true;
            Opinion.Ind_Seguimiento = false;

            DataTable TablaOpinion = Opinion.Buscar();

            if (TablaOpinion.Rows.Count > 0)
            {
                dgOpinionesBolsaTrabajo.DataSource = TablaOpinion;
                dgOpinionesBolsaTrabajo.DataBind();

                foreach (DataGridItem Fila in dgOpinionesBolsaTrabajo.Items)
                {
                    cIATPersonaNegocios Persona = new cIATPersonaNegocios(1, "A", 2, "B");
                    Persona.FK_IdUsuario = Int32.Parse(Fila.Cells[2].Text);

                    DataTable TablaPersona = Persona.Buscar();

                    if (TablaPersona.Rows.Count > 0)
                    {
                        String Nombre = TablaPersona.Rows[0]["Nom_Persona"].ToString();
                        String Apellido1 = TablaPersona.Rows[0]["Apellido1"].ToString();
                        String Apellido2 = TablaPersona.Rows[0]["Apellido2"].ToString();
                        Fila.Cells[2].Text = Nombre + " " + Apellido1 + " " + Apellido2;
                    }

                }
            }
        }

        protected void dgOpinionesBolsaTrabajo_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (e.CommandName == "Procesar")
            {
                cIATOpinionNegocios Opinion = new cIATOpinionNegocios(1, "A", 2, "B");
                Opinion.Id_Opinion = Int16.Parse(e.Item.Cells[0].Text);

                DataTable TablaOpiniones = Opinion.Buscar();

                if (TablaOpiniones.Rows.Count > 0)
                {
                    Opinion.Id_Opinion = Int16.Parse(TablaOpiniones.Rows[0]["Id_Opinion"].ToString());
                    Opinion.Detalle = TablaOpiniones.Rows[0]["Detalle"].ToString();
                    Opinion.FK_IdUsuario = Int16.Parse(TablaOpiniones.Rows[0]["FK_IdUsuario"].ToString());

                    if (TablaOpiniones.Rows[0]["Ind_PAM"].ToString().CompareTo("1") == 0)
                    {
                        Opinion.Ind_PAM = true;
                    }
                    else
                    {
                        Opinion.Ind_PAM = false;
                    }

                    Opinion.Ind_Seguimiento = true;

                    Opinion.Actualizar();
                    Response.Redirect("frmOpinionesPAM.aspx");
                }
            }

            if (e.CommandName == "Eliminar")
            {
                int index = Int16.Parse(e.Item.Cells[0].Text);
                string code = @"<script type='text/javascript'>eliminarOpinion(" + index + ");</script>";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alert", code, false); 
            }
        }

        [WebMethod]
        public static void eliminarOpinion(int index)
        {
            cIATOpinionNegocios Opinion = new cIATOpinionNegocios(1, "A", 2, "B");
            Opinion.Id_Opinion = index;
            Opinion.Eliminar();
        }
    }
}