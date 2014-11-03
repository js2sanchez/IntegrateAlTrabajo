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
    public partial class frmActualizarOfertasTrabajo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnActualizarOfertasTrabajo_Click(object sender, EventArgs e)
        {
            cIATOfertaTrabajoNegocios OfertaGeneral = new cIATOfertaTrabajoNegocios(1, "A", 2, "B");
            OfertaGeneral.Actualizar_Estado();

            string code = @"<script type='text/javascript'>actualizarOfertasTrabajo();</script>";
            ScriptManager.RegisterStartupScript(this, typeof(Page), "alert", code, false);
        }
    }
}