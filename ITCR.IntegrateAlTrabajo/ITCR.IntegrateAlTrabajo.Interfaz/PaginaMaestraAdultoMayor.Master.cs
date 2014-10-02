using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace ITCR.IntegrateAlTrabajo.Interfaz
{
    public partial class PaginaMaestraAdultoMayor : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {            
        }

        

        protected void NavigationMenu_MenuItemClick(object sender, MenuEventArgs e)
        {
            if (e.Item.Value == "logout")
            {
                FormsAuthentication.SignOut();
                Session.Abandon();
                Response.Redirect("/HOME.aspx");
            }
        }
    }
}