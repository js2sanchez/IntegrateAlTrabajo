using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ITCR.IntegrateAlTrabajo.Negocios;
using System.Data;

namespace ITCR.IntegrateAlTrabajo.Interfaz.AdultoMayor
{
    public partial class frmNoticiaArticulo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarDataGridNoticias();
            }
        }
        private void cargarDataGridNoticias()
        {
            dgNoticia.DataSource = null;
            cIATNoticiaNegocios Noticia = new cIATNoticiaNegocios(1, "A", 2, "B");
     

            DataTable TablaNoticia = Noticia.Buscar();

            if (TablaNoticia.Rows.Count > 0)
            {
                dgNoticia.DataSource = TablaNoticia;
                dgNoticia.DataBind();
            }
        }


        protected void dgNoticia_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (e.CommandName == "Ver")
            {
                Session["idNoticia"] = e.Item.Cells[0].Text;
                Response.Redirect("");
            }
        }
    }
}