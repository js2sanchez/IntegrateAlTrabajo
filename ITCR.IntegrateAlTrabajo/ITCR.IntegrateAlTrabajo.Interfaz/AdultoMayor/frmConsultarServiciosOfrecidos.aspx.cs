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
    public partial class frmConsultarServiciosOfrecidos : System.Web.UI.Page
    {
        cIATDiaServicioNegocios DiaServicio = new cIATDiaServicioNegocios(1, "A", 2, "B");
        cIATServicioNegocios Servicio = new cIATServicioNegocios(1, "A", 2, "B");
        cIATUsuarioNegocios Usuario = new cIATUsuarioNegocios(1, "A", 2, "B");
        cIATPersonaNegocios Persona = new cIATPersonaNegocios(1, "A", 2, "B"); 

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Session["Nombre_Usuario"] = "Satchiss";
                Session["Id_Servicio"] = "0";
                mostrarServicios();
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
            for (int i = 4; i <= 8; i++)
            {
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

        protected void mostrarServicios()
        {
            dgServicios.DataSource = "";
            PanelTablaDatos.Visible = false;
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

            dgServicios.DataSource = null;
            cIATServicioNegocios ServicioBuscar = new cIATServicioNegocios(1, "A", 2, "B");
            ServicioBuscar.FK_IdPersona = IdPersona;

            DataTable TablaServicio = ServicioBuscar.Buscar();

            if (TablaServicio.Rows.Count > 0)
            {
                dgServicios.DataSource = TablaServicio;
                dgServicios.DataBind();

                foreach (DataGridItem Fila in dgServicios.Items)
                {
                    Fila.Cells[3].Text = obtenerCategoriasServicios(Fila.Cells[3].Text);
                    Fila.Cells[4].Text = obtenerTiposServicios(Fila.Cells[4].Text);
                    Fila.Cells[5].Text = obtenerDiasServicios(Fila.Cells[0].Text);
                }
                PanelTablaDatos.Visible = true;
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

        protected void dgServicios_DeleteCommand(object source, DataGridCommandEventArgs e)
        {

            
        }

        protected void dgServicios_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (e.CommandName == "Eliminar") {



                cIATDiaServicioNegocios DiaEliminar = new cIATDiaServicioNegocios(1, "A", 2, "B");
                DiaEliminar.FK_IdServicio = Int16.Parse(e.Item.Cells[0].Text.ToString());
                DataTable TablaDias = DiaEliminar.Buscar();

                for (int i = 0; i < TablaDias.Rows.Count; i++) {
                    Int16 IdDia = Int16.Parse(TablaDias.Rows[i]["Id_DiaServicio"].ToString());
                    DiaEliminar.Id_DiaServicio = IdDia;
                    DiaEliminar.Eliminar();
                }

                cIATServicioNegocios ServicioEliminar = new cIATServicioNegocios(1, "A", 2, "B");
                ServicioEliminar.Id_Servicio = Int16.Parse(e.Item.Cells[0].Text.ToString());
                ServicioEliminar.Eliminar();

                mostrarServicios();
            }

            if (e.CommandName == "Editar") {
                btnGuardarServicio.Enabled = true;
                Session["Id_Servicio"] = e.Item.Cells[0].Text.ToString();

                txtNombreServicios.Text = e.Item.Cells[1].Text.ToString();
                txtDescripcionServicios.Text = e.Item.Cells[2].Text.ToString();

                txtNombreServicios.Enabled = true;
                txtDescripcionServicios.Enabled = true;

                cIATServicioNegocios ServicioEditar = new cIATServicioNegocios(1, "A", 2, "B");
                ServicioEditar.Id_Servicio = Int16.Parse(e.Item.Cells[0].Text.ToString());
                DataTable TablaServicio = ServicioEditar.Buscar();

                cIATCategoriaTrabajoNegocios CategoriaEditar = new cIATCategoriaTrabajoNegocios(1, "A", 2, "B");
                CategoriaEditar.Id_CategoriaTrabajo = Int16.Parse(TablaServicio.Rows[0]["FK_IdCategoriaServicio"].ToString());
                DataTable TablaCategoria = CategoriaEditar.Buscar();

                if (TablaCategoria.Rows.Count > 0)
                {
                    drpCategoriaServicio.SelectedValue = TablaCategoria.Rows[0]["Id_CategoriaTrabajo"].ToString();
                    drpCategoriaServicio.Enabled = true;
                }

                cIATTipoTrabajoNegocios TipoEditar = new cIATTipoTrabajoNegocios(1, "A", 2, "B");
                TipoEditar.Id_TipoTrabajo = Int16.Parse(TablaServicio.Rows[0]["FK_IdtipoServicio"].ToString());
                DataTable TablaTipo = TipoEditar.Buscar();

                if (TablaTipo.Rows.Count > 0)
                {
                    drpTipoServicio.SelectedValue = TablaTipo.Rows[0]["Id_TipoTrabajo"].ToString();
                    drpTipoServicio.Enabled = true;
                }

                cIATDiaServicioNegocios DiaEditar = new cIATDiaServicioNegocios(1, "A", 2, "B");
                DiaEditar.FK_IdServicio = Int16.Parse(e.Item.Cells[0].Text.ToString());
                DataTable TablaDias = DiaEditar.Buscar();
                
                for (int i = 0; i < TablaDias.Rows.Count; i++)
                {
                    if (TablaDias.Rows[i]["Nom_Dia"].ToString().Equals("L")) {
                        drpHora1.SelectedValue = TablaDias.Rows[i]["Can_Horas"].ToString();
                        drpHora1.Enabled = true;
                    } 
                    else if (TablaDias.Rows[i]["Nom_Dia"].ToString().Equals("K"))
                    {
                        drpHora2.SelectedValue = TablaDias.Rows[i]["Can_Horas"].ToString();
                        drpHora2.Enabled = true;
                    }
                    else if (TablaDias.Rows[i]["Nom_Dia"].ToString().Equals("M"))
                    {
                        drpHora3.SelectedValue = TablaDias.Rows[i]["Can_Horas"].ToString();
                        drpHora3.Enabled = true;
                    }
                    else if (TablaDias.Rows[i]["Nom_Dia"].ToString().Equals("J"))
                    {
                        drpHora4.SelectedValue = TablaDias.Rows[i]["Can_Horas"].ToString();
                        drpHora4.Enabled = true;
                    }
                    else if (TablaDias.Rows[i]["Nom_Dia"].ToString().Equals("V"))
                    {
                        drpHora5.SelectedValue = TablaDias.Rows[i]["Can_Horas"].ToString();
                        drpHora5.Enabled = true;
                    }
                    else if (TablaDias.Rows[i]["Nom_Dia"].ToString().Equals("S"))
                    {
                        drpHora6.SelectedValue = TablaDias.Rows[i]["Can_Horas"].ToString();
                        drpHora6.Enabled = true;
                    }
                }
            }
        }

        protected void btnGuardarServicio_Click(object sender, EventArgs e)
        {
            Validate("gvServicios");

            if (Page.IsValid)
            {
                Servicio.Id_Servicio = Int16.Parse(Session["Id_Servicio"].ToString());
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

                Servicio.Actualizar();

                DiaServicio.FK_IdServicio = Int16.Parse(Session["Id_Servicio"].ToString());
                DataTable TablaDias = DiaServicio.Buscar();

                for (int i = 0; i < TablaDias.Rows.Count; i++)
                {
                    DiaServicio.Id_DiaServicio = Int16.Parse(TablaDias.Rows[i]["Id_DiaServicio"].ToString());
                    DiaServicio.Nom_Dia = TablaDias.Rows[i]["Nom_Dia"].ToString();

                    if (TablaDias.Rows[i]["Nom_Dia"].ToString().Equals("L"))
                    {                        
                        DiaServicio.Can_Horas = byte.Parse(drpHora1.SelectedItem.Value);               
                    }
                    if (TablaDias.Rows[i]["Nom_Dia"].ToString().Equals("K"))
                    {                       
                        DiaServicio.Can_Horas = byte.Parse(drpHora2.SelectedItem.Value);
                    }
                    if (TablaDias.Rows[i]["Nom_Dia"].ToString().Equals("M"))
                    {
                        DiaServicio.Can_Horas = byte.Parse(drpHora3.SelectedItem.Value);
                    }
                    if (TablaDias.Rows[i]["Nom_Dia"].ToString().Equals("J"))
                    {
                        DiaServicio.Can_Horas = byte.Parse(drpHora4.SelectedItem.Value);
                    }
                    if (TablaDias.Rows[i]["Nom_Dia"].ToString().Equals("V"))
                    {
                        DiaServicio.Can_Horas = byte.Parse(drpHora5.SelectedItem.Value);
                    }
                    if (TablaDias.Rows[i]["Nom_Dia"].ToString().Equals("S"))
                    {
                        DiaServicio.Can_Horas = byte.Parse(drpHora6.SelectedItem.Value);
                    }

                    DiaServicio.Actualizar();
                }

                txtDescripcionServicios.Enabled = false;
                txtNombreServicios.Enabled = false;
                drpCategoriaServicio.Enabled = false;
                drpTipoServicio.Enabled = false;
                drpHora1.Enabled = false;
                drpHora2.Enabled = false;
                drpHora3.Enabled = false;
                drpHora4.Enabled = false;
                drpHora5.Enabled = false;
                drpHora6.Enabled = false;

                mostrarServicios();

                //Response.Write(@"<SCRIPT LANGUAGE=""JavaScript"">alert('El servicio fue modificado exitosamente')</SCRIPT>");
            }
        }

        protected void dgServicios_ItemDataBound(object sender, DataGridItemEventArgs e)
        {
            e.Item.Cells[7].Attributes.Add("onClick", "return confirmarBorradoServicio();");
        }

    }
}