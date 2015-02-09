using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace ITCR.IntegrateAlTrabajo.Interfaz
{
    public partial class PaginaMaestraEmpresa : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Comprobar sesion
            if (Session["Nombre_Usuario"] == null)
            {
                Response.Redirect("~/Default.aspx");
            }
        }
        
        protected void NavigationMenu_MenuItemClick1(object sender, MenuEventArgs e)
        {
            if (e.Item.Value == "logout")
            {
                FormsAuthentication.SignOut();
                Session["Nombre_Usuario"] = null;
                Session.Abandon();
                Response.Redirect("~/Default.aspx");
            }
        }
    }
}