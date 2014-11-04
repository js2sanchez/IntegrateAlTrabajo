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
                if (Session["Nombre_Usuario"] == null)
                {
                    Response.Redirect("/Default.aspx");
                }
                try
                {
                    cargarTodosDropDownList();
                }
                catch
                {
                    string script = @"<script type='text/javascript'>
                            mostrarErrorSistema();
                            </script>";

                    ScriptManager.RegisterStartupScript(this, typeof(Page), "Error del sistema", script, false);
                }
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
            }

            for (int i = 4; i <= 8; i++)
            {
                ListItem ItemTipoHora = new ListItem(i.ToString());
                drpHora2.Items.Add(ItemTipoHora);
            }

            for (int i = 4; i <= 8; i++)
            {
                ListItem ItemTipoHora = new ListItem(i.ToString());
                drpHora3.Items.Add(ItemTipoHora);
            }

            for (int i = 4; i <= 8; i++)
            {
                ListItem ItemTipoHora = new ListItem(i.ToString());
                drpHora4.Items.Add(ItemTipoHora);
            }

            for (int i = 4; i <= 8; i++)
            {
                ListItem ItemTipoHora = new ListItem(i.ToString());
                drpHora5.Items.Add(ItemTipoHora);
            }

            for (int i = 4; i <= 8; i++)
            {
                ListItem ItemTipoHora = new ListItem(i.ToString());
                drpHora6.Items.Add(ItemTipoHora);
            }

            for (int i = 4; i <= 8; i++)
            {
                ListItem ItemTipoHora = new ListItem(i.ToString());
                drpHora7.Items.Add(ItemTipoHora);
            }
        }

        private void cargarTodosDropDownList()
        {
            cargarDropDownListTipo();
            cargarDropDownListHoras();
            cargarDropDownListCategorias();
        }

        #endregion

        protected void btnAgregarServicio_Click(object sender, EventArgs e)
        {
            try
            {
                Validate("gvServicios");

                if (Page.IsValid)
                {
                    int ContadorDiasServicio = 0;

                    if (chkLunes.Checked)
                    {
                        ContadorDiasServicio++;
                    }

                    if (chkMartes.Checked)
                    {
                        ContadorDiasServicio++;
                    }

                    if (chkMiercoles.Checked)
                    {
                        ContadorDiasServicio++;
                    }

                    if (chkJueves.Checked)
                    {
                        ContadorDiasServicio++;
                    }

                    if (chkViernes.Checked)
                    {
                        ContadorDiasServicio++;
                    }

                    if (chkSabado.Checked)
                    {
                        ContadorDiasServicio++;
                    }

                    if (chkDomingo.Checked)
                    {
                        ContadorDiasServicio++;
                    }

                    if (ContadorDiasServicio != 0)
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
                        Int16 IdDistrito = 0;

                        if (TablaPersona.Rows.Count > 0)
                        {
                            IdPersona = Int16.Parse(TablaPersona.Rows[0]["Id_Persona"].ToString());
                            IdDistrito = Int16.Parse(TablaPersona.Rows[0]["FK_IdDistrito"].ToString());
                        }

                        Servicio.FK_IdPersona = IdPersona;

                        cIATDistritoNegocios Distrito = new cIATDistritoNegocios(1, "A", 2, "B");
                        Distrito.Id_Distrito = IdDistrito;

                        DataTable TablaDistrito = Distrito.Buscar();

                        Int16 IdCanton = 0;

                        if (TablaDistrito.Rows.Count > 0)
                        {
                            IdCanton = Int16.Parse(TablaDistrito.Rows[0]["FK_IdCanton"].ToString());
                        }

                        cIATCantonNegocios Canton = new cIATCantonNegocios(1, "A", 2, "B");
                        Canton.Id_Canton = IdCanton;

                        DataTable TablaCanton = Canton.Buscar();

                        Int16 IdProvincia = 0;

                        if (TablaCanton.Rows.Count > 0)
                        {
                            IdProvincia = Int16.Parse(TablaCanton.Rows[0]["FK_IdProvincia"].ToString());
                        }

                        Servicio.FK_IdProvincia = IdProvincia;

                        Servicio.Insertar();
                        DataTable TablaServicio = Servicio.Buscar();

                        Int16 IdServicio = 0;

                        if (TablaServicio.Rows.Count > 0)
                        {
                            IdServicio = Int16.Parse(TablaServicio.Rows[0]["Id_Servicio"].ToString());
                        }

                        if (chkLunes.Checked)
                        {
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

                        if (chkDomingo.Checked)
                        {
                            DiaServicio.Nom_Dia = "D";
                            DiaServicio.Can_Horas = byte.Parse(drpHora7.SelectedItem.Value);
                            DiaServicio.FK_IdServicio = IdServicio;
                            DiaServicio.Insertar();
                        }

                        string script = @"<script type='text/javascript'>
                            NotificarNuevoServicio();
                            </script>";

                        ScriptManager.RegisterStartupScript(this, typeof(Page), "Servicio", script, false);
                    }
                    else
                    {
                        string script = @"<script type='text/javascript'>
                            NotificarErrorCantidadDias();
                            </script>";

                        ScriptManager.RegisterStartupScript(this, typeof(Page), "Servicio", script, false);
                    }
                }
            }
            catch
            {
                string script = @"<script type='text/javascript'>
                            mostrarErrorSistema();
                            </script>";

                ScriptManager.RegisterStartupScript(this, typeof(Page), "Error del sistema", script, false);
            }
        }

        protected void chkLunes_CheckedChanged(object sender, EventArgs e)
        {
            if (chkLunes.Checked == true)
            {
                drpHora1.Enabled = true;
            }
            else
            {
                drpHora1.Enabled = false;
            }
        }

        protected void chkMartes_CheckedChanged(object sender, EventArgs e)
        {
            if (chkMartes.Checked == true)
            {
                drpHora2.Enabled = true;
            }
            else
            {
                drpHora2.Enabled = false;
            }
        }

        protected void chkMiercoles_CheckedChanged(object sender, EventArgs e)
        {
            if (chkMiercoles.Checked == true)
            {
                drpHora3.Enabled = true;
            }
            else
            {
                drpHora3.Enabled = false;
            }
        }

        protected void chkJueves_CheckedChanged(object sender, EventArgs e)
        {
            if (chkJueves.Checked == true)
            {
                drpHora4.Enabled = true;
            }
            else
            {
                drpHora4.Enabled = false;
            }
        }

        protected void chkViernes_CheckedChanged(object sender, EventArgs e)
        {
            if (chkViernes.Checked == true)
            {
                drpHora5.Enabled = true;
            }
            else
            {
                drpHora5.Enabled = false;
            }
        }

        protected void chkSabado_CheckedChanged(object sender, EventArgs e)
        {
            if (chkSabado.Checked == true)
            {
                drpHora6.Enabled = true;
            }
            else
            {
                drpHora6.Enabled = false;
            }
        }

        protected void chkDomingo_CheckedChanged(object sender, EventArgs e)
        {
            if (chkDomingo.Checked == true)
            {
                drpHora7.Enabled = true;
            }
            else
            {
                drpHora7.Enabled = false;
            }
        }
    }
}