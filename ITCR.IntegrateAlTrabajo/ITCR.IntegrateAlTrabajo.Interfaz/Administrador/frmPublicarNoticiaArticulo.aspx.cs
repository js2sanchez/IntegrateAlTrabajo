using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ITCR.IntegrateAlTrabajo.Negocios;

namespace ITCR.IntegrateAlTrabajo.Interfaz.Administrador
{
    public partial class frmPublicarNoticia : System.Web.UI.Page
    {
        private static cIATNoticiaNegocios Noticia = new cIATNoticiaNegocios(1, "A", 2, "B");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedValue.CompareTo("2") == 0)
            {
                mv_articulo_o_noticia.ActiveViewIndex = 0;
            }
            else
            {
                mv_articulo_o_noticia.ActiveViewIndex = 1;
            }
        }

        protected void btn_guardar_noticia_Click(object sender, EventArgs e)
        {
            Validate("gvnoticia");
            if (Page.IsValid)
            {
                Noticia.Titulo = txt_titulo.Text;
                Noticia.Dsc_Noticia = txt_contenido.Text;
                Noticia.Insertar();
                Response.Redirect("/Administrador/frmPublicarNoticiaArticulo.aspx");
            }
        }
    }
}