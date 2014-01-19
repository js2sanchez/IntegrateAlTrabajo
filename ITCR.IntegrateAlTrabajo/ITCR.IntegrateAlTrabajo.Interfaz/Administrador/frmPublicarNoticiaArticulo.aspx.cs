using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITCR.IntegrateAlTrabajo.Interfaz.Administrador
{
    public partial class frmPublicarNoticia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedValue.CompareTo("1") == 0)
            {
                mv_articulo_o_noticia.ActiveViewIndex = 0;
            }
            else
            {
                mv_articulo_o_noticia.ActiveViewIndex = 1;
            }
        }
    }
}