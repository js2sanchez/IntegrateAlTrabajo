using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ITCR.IntegrateAlTrabajo.Negocios;
using ITCR.IntegrateAlTrabajo.Datos;
using System.Data;

namespace ITCR.IntegrateAlTrabajo.Interfaz.AdultoMayor
{
    public partial class frmFiltrarEmpresa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarDropDownListEmpresas();
            }            
            
        }
        #region

        private void cargarDropDownListEmpresas()
        {
            drpEmpresa.Items.Clear();
            cIATEmpresaNegocios Empresa = new cIATEmpresaNegocios(1, "A", 2, "B");
            DataTable TablaEmpresa = Empresa.SeleccionarTodos();

            for (int i = 0; i < TablaEmpresa.Rows.Count; i++)
            {
                ListItem ItemEmpresa = new ListItem(TablaEmpresa.Rows[i]["Nom_Empresa"].ToString(), TablaEmpresa.Rows[i]["Id_Empresa"].ToString());
                drpEmpresa.Items.Add(ItemEmpresa);
            }
        }        
        #endregion
    }
}