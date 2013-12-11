using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ITCR.IntegrateAlTrabajo.Negocios;
using ITCR.IntegrateAlTrabajo.Datos;

namespace ITCR.IntegrateAlTrabajo.Interfaz.AdultoMayor
{
    public partial class frmOfrecerServicios : System.Web.UI.Page
    {
        cIATDiaServicioNegocios DiaServicio = new cIATDiaServicioNegocios(1, "A", 2, "B");
        cIATServicioNegocios Servicio = new cIATServicioNegocios(1, "A", 2, "B");
        cIATUsuarioNegocios Usuario = new cIATUsuarioNegocios(1, "A", 2, "B");
        cIATPersonaNegocios Persona = new cIATPersonaNegocios(1, "A", 2, "B");        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Session["Nombre_Usuario"] = "sat";
                mvOfrecerServicios.ActiveViewIndex = 0;
                cargarTodosDropDownList();
            }
        }

        #region DatosIniciales

        private void cargarDropDownListTipo()
        {
            drpTipoServicio.Items.Clear();
            cIATTipoTrabajoNegocios TipoServicio = new cIATTipoTrabajoNegocios(1, "A", 2, "B");
            DataTable TablaTipoServicio = TipoServicio.SeleccionarTodos();

            for (int i = 0; i < TablaTipoServicio.Rows.Count; i++)
            {
                ListItem ItemTipoServicio = new ListItem(TablaTipoServicio.Rows[i]["Nom_TipoTrabajo"].ToString(), TablaTipoServicio.Rows[i]["Id_TipoTrabajo"].ToString());
                drpTipoServicio.Items.Add(ItemTipoServicio);
            }
        }

        private void cargarDropDownListCategorias()
        {
            drpCategoriaServicio.Items.Clear();
            cIATCategoriaTrabajoNegocios Categoria = new cIATCategoriaTrabajoNegocios(1, "A", 2, "B");
            DataTable TablaCategoria = Categoria.SeleccionarTodos();

            for (int i = 0; i < TablaCategoria.Rows.Count; i++)
            {
                ListItem ItemCategoria = new ListItem(TablaCategoria.Rows[i]["Nom_CategoriaTrabajo"].ToString(), TablaCategoria.Rows[i]["Id_CategoriaTrabajo"].ToString());
                drpCategoriaServicio.Items.Add(ItemCategoria);
            }
        }

        private void cargarDropDownListHoras()
        {
            drpHora1.Items.Clear();
            drpHora2.Items.Clear();
            drpHora3.Items.Clear();
            drpHora4.Items.Clear();
            drpHora5.Items.Clear();
            drpHora6.Items.Clear();
            for (int i = 4; i <= 8; i++) {
                ListItem ItemTipoHora = new ListItem(i.ToString());
                drpHora1.Items.Add(ItemTipoHora);
                drpHora2.Items.Add(ItemTipoHora);
                drpHora3.Items.Add(ItemTipoHora);
                drpHora4.Items.Add(ItemTipoHora);
                drpHora5.Items.Add(ItemTipoHora);
                drpHora6.Items.Add(ItemTipoHora);
            }
        }

        private void cargarTodosDropDownList()
        {
            cargarDropDownListTipo();
            cargarDropDownListHoras();
            cargarDropDownListCategorias();
        }

        #endregion

        protected void dgEstudios_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnCancelar3_Click(object sender, EventArgs e)
        {

        }

        protected void btnSiguiente2_Click(object sender, EventArgs e)
        {

        }

        protected void btnAgregarServicio_Click(object sender, EventArgs e)
        {
            Validate("gvServicios");

            if (Page.IsValid)
            {
                Servicio.Nom_Servicio = txtNombreServicios.Text;
                Servicio.Descripcion = txtDescripcionServicios.Text;
                Servicio.FK_IdCategoriaServicio = Int16.Parse(drpCategoriaServicio.SelectedValue);
                Servicio.FK_IdTipoServicio = Int16.Parse(drpTipoServicio.SelectedValue);

                Usuario.Nom_Usuario = Convert.ToString(Session["Nombre_Usuario"]);
                DataTable TablaUsuario = Usuario.Buscar();

                Int16 IdUsuario = 0;

                if (TablaUsuario.Rows.Count > 0)
                {
                    IdUsuario = Int16.Parse(TablaUsuario.Rows[0]["Id_Usuario"].ToString());
                }

                Persona.FK_IdUsuario = IdUsuario;
                DataTable TablaPersona = Persona.Buscar();

                Int16 IdPersona = 0;

                if (TablaPersona.Rows.Count > 0)
                {
                    IdPersona = Int16.Parse(TablaPersona.Rows[0]["Id_Persona"].ToString());
                }
                
                Servicio.FK_IdPersona = IdPersona;

                Servicio.Insertar();
                DataTable TablaServicio = Servicio.Buscar();

                Int16 IdServicio = 0;

                if (TablaServicio.Rows.Count > 0)
                {
                    IdServicio = Int16.Parse(TablaServicio.Rows[0]["Id_Servicio"].ToString());
                }

                if(chkLunes.Checked){
                    DiaServicio.Nom_Dia = "L";
                    DiaServicio.Can_Horas = byte.Parse(drpHora1.SelectedItem.Value);
                    DiaServicio.FK_IdServicio = IdServicio;
                    DiaServicio.Insertar();
                }

                if (chkMartes.Checked)
                {
                    DiaServicio.Nom_Dia = "K";
                    DiaServicio.Can_Horas = byte.Parse(drpHora2.SelectedItem.Value);
                    DiaServicio.FK_IdServicio = IdServicio;
                    DiaServicio.Insertar();
                }

                if (chkMiercoles.Checked)
                {
                    DiaServicio.Nom_Dia = "M";
                    DiaServicio.Can_Horas = byte.Parse(drpHora3.SelectedItem.Value);
                    DiaServicio.FK_IdServicio = IdServicio;
                    DiaServicio.Insertar();
                }

                if (chkJueves.Checked)
                {
                    DiaServicio.Nom_Dia = "J";
                    DiaServicio.Can_Horas = byte.Parse(drpHora4.SelectedItem.Value);
                    DiaServicio.FK_IdServicio = IdServicio;
                    DiaServicio.Insertar();
                }

                if (chkViernes.Checked)
                {
                    DiaServicio.Nom_Dia = "V";
                    DiaServicio.Can_Horas = byte.Parse(drpHora5.SelectedItem.Value);
                    DiaServicio.FK_IdServicio = IdServicio;
                    DiaServicio.Insertar();
                }

                if (chkSabado.Checked)
                {
                    DiaServicio.Nom_Dia = "S";
                    DiaServicio.Can_Horas = byte.Parse(drpHora6.SelectedItem.Value);
                    DiaServicio.FK_IdServicio = IdServicio;
                    DiaServicio.Insertar();
                }

                mostrarServicios(IdPersona);

                txtNombreServicios.Text = "";
                txtDescripcionServicios.Text = "";
                chkLunes.Checked = false;
                chkMartes.Checked = false;
                chkMiercoles.Checked = false;
                chkJueves.Checked = false;
                chkViernes.Checked = false;
                chkSabado.Checked = false;
                drpHora1.Enabled = false;
                drpHora2.Enabled = false;
                drpHora3.Enabled = false;
                drpHora4.Enabled = false;
                drpHora5.Enabled = false;
                drpHora6.Enabled = false;

                //Response.Write(@"<SCRIPT LANGUAGE=""JavaScript"">alert('El servicio fue agregado exitosamente')</SCRIPT>");
            }
        }

        protected void mostrarServicios(int IdPersona)
        {
            dgServicios.DataSource = null;
            cIATServicioNegocios ServicioBuscar = new cIATServicioNegocios(1, "A", 2, "B");
            ServicioBuscar.FK_IdPersona = IdPersona;
            
            DataTable TablaServicio = ServicioBuscar.Buscar();

            if (TablaServicio.Rows.Count > 0) {
                dgServicios.DataSource = TablaServicio;
                dgServicios.DataBind();

                foreach (DataGridItem Fila in dgServicios.Items) {
                    Fila.Cells[3].Text = obtenerCategoriasServicios(Fila.Cells[3].Text);
                    Fila.Cells[4].Text = obtenerTiposServicios(Fila.Cells[4].Text);
                    Fila.Cells[5].Text = obtenerDiasServicios(Fila.Cells[0].Text);
                }
            }
        }

        protected String obtenerCategoriasServicios(String Categoria)
        {
            cIATCategoriaTrabajoNegocios CategoriaBuscar = new cIATCategoriaTrabajoNegocios(1, "A", 2, "B");
            CategoriaBuscar.Id_CategoriaTrabajo = Int16.Parse(Categoria.ToString());
            DataTable TablaCategoria = CategoriaBuscar.Buscar();

            if (TablaCategoria.Rows.Count > 0)
            {
                Categoria = TablaCategoria.Rows[0]["Nom_CategoriaTrabajo"].ToString();
            }

            return Categoria;
        }

        protected String obtenerTiposServicios(String Tipo)
        {
            cIATTipoTrabajoNegocios TipoBuscar = new cIATTipoTrabajoNegocios(1, "A", 2, "B");
            TipoBuscar.Id_TipoTrabajo = Int16.Parse(Tipo.ToString());
            DataTable TablaTipo = TipoBuscar.Buscar();

            if (TablaTipo.Rows.Count > 0)
            {
                Tipo = TablaTipo.Rows[0]["Nom_TipoTrabajo"].ToString();
            }

            return Tipo;
        }

        protected String obtenerDiasServicios(String IdServicio)
        {
            cIATDiaServicioNegocios DiaBuscar = new cIATDiaServicioNegocios(1, "A", 2, "B");
            DiaBuscar.FK_IdServicio = Int16.Parse(IdServicio.ToString());
            DataTable TablaDias = DiaBuscar.Buscar();

            String Dias = TablaDias.Rows[0]["Nom_Dia"].ToString();
            
            for (int i = 1; i < TablaDias.Rows.Count; i++)
            {
                Dias = Dias + ", " + TablaDias.Rows[i]["Nom_Dia"].ToString();
            }

            return Dias;
        }

        protected void chkLunes_CheckedChanged(object sender, EventArgs e)
        {
            if (chkLunes.Checked == true) {
                drpHora1.Enabled = true;
            }
            else {
                drpHora1.Enabled = false;
            }
        }

        protected void chkMartes_CheckedChanged(object sender, EventArgs e)
        {
            if (chkMartes.Checked == true) {
                drpHora2.Enabled = true;
            }
            else {
                drpHora2.Enabled = false;
            }
        }

        protected void chkMiercoles_CheckedChanged(object sender, EventArgs e)
        {
            if (chkMiercoles.Checked == true) {
                drpHora3.Enabled = true;
            }
            else {
                drpHora3.Enabled = false;
            }
        }

        protected void chkJueves_CheckedChanged(object sender, EventArgs e)
        {
            if (chkJueves.Checked == true) {
                drpHora4.Enabled = true;
            }
            else {
                drpHora4.Enabled = false;
            }
        }

        protected void chkViernes_CheckedChanged(object sender, EventArgs e)
        {
            if (chkViernes.Checked == true) {
                drpHora5.Enabled = true;
            }
            else {
                drpHora5.Enabled = false;
            }
        }

        protected void chkSabado_CheckedChanged(object sender, EventArgs e)
        {
            if (chkSabado.Checked == true) {
                drpHora6.Enabled = true;
            }
            else {
                drpHora6.Enabled = false;
            }
        }

        protected void drpHora1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}