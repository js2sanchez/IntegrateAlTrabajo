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
    public partial class frmInteresados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack){
                if (Session["Nombre_Usuario"] == null)
                {
                    Response.Redirect("/Default.aspx");
                }
                cargarInteresadosOferta();
            }
        }

        protected void dgInteresados_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (e.CommandName == "Detalles")
            {
                Session["Id_Usuario_P"] = Int16.Parse(e.Item.Cells[0].Text);
                Response.Redirect("/Empresa/frmPerfilAdultoMayor.aspx");
            }
        }

        private void cargarInteresadosOferta()
        {
            PanelTablaDatos.Visible = false;
            dgInteresados.DataSource = null;
            cIATAplicantesOfertaNegocios Interesados = new cIATAplicantesOfertaNegocios(1, "A", 2, "B");
            Interesados.FK_IdOfertaTrabajo = Int16.Parse(Session["Id_OfertaTrabajo"].ToString());
            DataTable TablaInteresadosId = Interesados.Buscar();
            DataTable TablaInteresados = null;

            cIATPersonaNegocios persona = new cIATPersonaNegocios(1, "A", 2, "B");
            if (TablaInteresadosId.Rows.Count > 0)
            {
                foreach (DataRow row in TablaInteresadosId.Rows)
                {
                    persona.Id_Persona = Int16.Parse(row["FK_IdPersona"].ToString());
                    DataTable personas = persona.Buscar();
                    if (personas.Rows.Count > 0)
                    {
                        if (TablaInteresados == null)
                        {
                            TablaInteresados = personas;
                        }
                        else
                        {
                            TablaInteresados.ImportRow(personas.Rows[0]);
                        }
                    }
                }
            }

            if (TablaInteresados != null && TablaInteresados.Rows.Count > 0)
            {
                dgInteresados.DataSource = TablaInteresados;
                dgInteresados.DataBind();

                foreach (DataGridItem Fila in dgInteresados.Items)
                {
                    cIATContactoNegocios Contacto = new cIATContactoNegocios(1, "A", 2, "B");

                    Contacto.FK_IdUsuario = Int16.Parse(Fila.Cells[0].Text);

                    DataTable TablaContactos = Contacto.Buscar();
                    if (TablaContactos.Rows.Count > 0)
                    {
                        for (int i = 0; i < TablaContactos.Rows.Count; i++)
                        {
                            switch (Int16.Parse(TablaContactos.Rows[i]["FK_IdTipoContacto"].ToString()))
                            {
                                case 1:
                                    Fila.Cells[4].Text = TablaContactos.Rows[i]["Detalle"].ToString();
                                    break;
                                case 3:
                                    Fila.Cells[5].Text = TablaContactos.Rows[i]["Detalle"].ToString();
                                    break;
                            }
                        }
                    }
                }
                PanelTablaDatos.Visible = true;
                lblNoInteresados.Visible = false;
            }
        }
                        
    }    
}