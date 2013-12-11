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
    public partial class frmFiltrarOfertasTrabajo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarDropDownListProvincias();
                cargarDropDownListTipoTrabajo();
                cargarDropDownListCategoriaServicios();
            }
        }
        #region

        private void cargarDropDownListProvincias()
        {
            drpprovincia.Items.Clear();
            cIATProvinciaNegocios Provincia = new cIATProvinciaNegocios(1, "A", 2, "B");
            DataTable TablaProvincia = Provincia.SeleccionarTodos();

            for (int i = 0; i < TablaProvincia.Rows.Count; i++)
            {
                ListItem ItemProvincia = new ListItem(TablaProvincia.Rows[i]["Nom_Provincia"].ToString(), TablaProvincia.Rows[i]["Id_Provincia"].ToString());
                drpprovincia.Items.Add(ItemProvincia);
            }
        }

        private void cargarDropDownListTipoTrabajo()
        {
            drpTipo.Items.Clear();
            cIATTipoTrabajoNegocios tipo_trabajo = new cIATTipoTrabajoNegocios(1, "A", 2, "B");
            DataTable TablaTipoTrabajo = tipo_trabajo.SeleccionarTodos();

            for (int i = 0; i < TablaTipoTrabajo.Rows.Count; i++)
            {
                ListItem ItemTipoTrabajo = new ListItem(TablaTipoTrabajo.Rows[i]["Nom_TipoTrabajo"].ToString(), TablaTipoTrabajo.Rows[i]["Id_TipoTrabajo"].ToString());
                drpTipo.Items.Add(ItemTipoTrabajo);
            }
        }

        private void cargarDropDownListCategoriaServicios()
        {
            drpCategoria.Items.Clear();
            cIATCategoriaTrabajoNegocios categoria_trabajo = new cIATCategoriaTrabajoNegocios(1, "A", 2, "B");
            DataTable TablaCategoriaTrabajo = categoria_trabajo.SeleccionarTodos();

            for (int i = 0; i < TablaCategoriaTrabajo.Rows.Count; i++)
            {
                ListItem ItemCategoriaTrabajo = new ListItem(TablaCategoriaTrabajo.Rows[i]["Nom_CategoriaTrabajo"].ToString(), TablaCategoriaTrabajo.Rows[i]["Id_CategoriaTrabajo"].ToString());
                drpCategoria.Items.Add(ItemCategoriaTrabajo);
            }
        }
        #endregion
        protected void chk_Busqueda_CheckedChanged(object sender, EventArgs e)
        {

            if (chk_Provincia.Checked || chk_Categoria.Checked || chk_tipo.Checked)
            {
                btn_buscar.Enabled = true;
            }
            else
            {
                btn_buscar.Enabled = false;
            }
            chk_provincia_activado(sender, e);
            chk_tipo_activado(sender, e);
            chk_categoria_activado(sender, e);

        }

        protected void chk_provincia_activado(object sender, EventArgs e)
        {
            if (chk_Provincia.Checked)
            {
                drpprovincia.Enabled = true;
            }
            else
            {
                drpprovincia.Enabled = false;
            }
        }
        protected void chk_tipo_activado(object sender, EventArgs e)
        {
            if (chk_tipo.Checked)
            {
                drpTipo.Enabled = true;
            }
            else
            {
                drpTipo.Enabled = false;
            }
        }
        protected void chk_categoria_activado(object sender, EventArgs e)
        {
            if (chk_Categoria.Checked)
            {
                drpCategoria.Enabled = true;
            }
            else
            {
                drpCategoria.Enabled = false;
            }
        }
        protected void btn_buscar_Click(object sender, EventArgs e)
        {
            dgResultados.DataSource = " ";
            cIATOfertaTrabajoNegocios busqueda = new cIATOfertaTrabajoNegocios(1, "A", 2, "B");
            if (chk_tipo.Checked)
            {
                busqueda.FK_IdTipoOfertaTrabajo = Int16.Parse(drpTipo.SelectedValue);
            }
            if (chk_Categoria.Checked)
            {
                busqueda.FK_IdCategoriaOfertaTrabajo = Int16.Parse(drpCategoria.SelectedValue);
            }
            if (chk_Provincia.Checked)
            {
                busqueda.id_Provincia = Int16.Parse(drpprovincia.SelectedValue);
            }
            DataTable Filtro = busqueda.Buscar_por_Filtrado();
            if (Filtro.Rows.Count > 0)
            {
                dgResultados.DataSource = Filtro;
                dgResultados.DataBind();
                pnl_resultados.Visible = true;
                lbl_resultados.Visible = true;
            }
        }
        protected void dgResultados_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (e.CommandName == "Perfil")
            {
                Session["Id_Oferta"] = e.Item.Cells[0].Text.ToString();
                Response.Redirect("/AdultoMayor/frmAplicarOfertaTrabajo.aspx");
            }
        }

    }
}