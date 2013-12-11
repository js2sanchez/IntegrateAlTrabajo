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
    public partial class frmCambiarEstadoPerfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                mostrarPerfilesAdultosMayores();
                mostrarPerfilesEmpresas();
            }
        }

        protected void mostrarPerfilesAdultosMayores()
        {
            dgPerfilesAdultosMayores.DataSource = "";
            panelAdultosMayores.Visible = false;

            cIATUsuarioNegocios UsuarioActivadoBuscar = new cIATUsuarioNegocios(1, "A", 2, "B");
            UsuarioActivadoBuscar.Estado = 1;
            UsuarioActivadoBuscar.FK_IdTipoUsuario = 1;

            cIATUsuarioNegocios UsuarioDesactivadoBuscar = new cIATUsuarioNegocios(1, "A", 2, "B");
            UsuarioDesactivadoBuscar.Estado = 2;
            UsuarioDesactivadoBuscar.FK_IdTipoUsuario = 1;

            DataTable TablaUsuario1 = UsuarioActivadoBuscar.Buscar();

            DataTable TablaUsuario2 = UsuarioDesactivadoBuscar.Buscar();

            TablaUsuario1.Merge(TablaUsuario2);
            
            DataTable TablaPersonaGeneral;

            if (TablaUsuario1.Rows.Count > 0)
            {
                cIATPersonaNegocios Persona1Buscar = new cIATPersonaNegocios(1, "A", 2, "B");
                Persona1Buscar.FK_IdUsuario = Int16.Parse(TablaUsuario1.Rows[0]["Id_Usuario"].ToString());

                TablaPersonaGeneral = Persona1Buscar.Buscar();

                for (int i = 1; i < TablaUsuario1.Rows.Count; i++)
                {
                    cIATPersonaNegocios PersonaBuscar = new cIATPersonaNegocios(1, "A", 2, "B");
                    PersonaBuscar.FK_IdUsuario = Int16.Parse(TablaUsuario1.Rows[i]["Id_Usuario"].ToString());

                    DataTable TablaPersona = PersonaBuscar.Buscar();
                    TablaPersonaGeneral.Merge(TablaPersona);
                }

                if (TablaPersonaGeneral.Rows.Count > 0)
                {
                    dgPerfilesAdultosMayores.DataSource = TablaPersonaGeneral;
                    dgPerfilesAdultosMayores.DataBind();

                    int row1 = 0;
                    foreach (DataGridItem Fila in dgPerfilesAdultosMayores.Items)
                    {
                        Fila.Cells[9].Text = TablaUsuario1.Rows[row1]["Nom_Usuario"].ToString();
                        Fila.Cells[10].Text = TablaUsuario1.Rows[row1]["Contrasenna"].ToString();
                        Fila.Cells[11].Text = TablaUsuario1.Rows[row1]["Indicio_Contrasenna"].ToString();
                        Fila.Cells[12].Text = TablaUsuario1.Rows[row1]["FK_IdTipoUsuario"].ToString();
                        Fila.Cells[6].Text = obtenerTelefono(Fila.Cells[0].Text);
                        Fila.Cells[7].Text = obtenerCorreo(Fila.Cells[0].Text);
                        row1++;
                    }
                    panelAdultosMayores.Visible = true;
                }

                int row = 0;
                foreach (DataGridItem filaAdulto in dgPerfilesAdultosMayores.Items)
                {
                    ListItem ItemEstado1 = new ListItem("Activado", "1");
                    ListItem ItemEstado2 = new ListItem("Desactivado", "2");
                    ((DropDownList)filaAdulto.Cells[8].FindControl("drpEstado")).Items.Add(ItemEstado1);
                    ((DropDownList)filaAdulto.Cells[8].FindControl("drpEstado")).Items.Add(ItemEstado2);

                    ((DropDownList)filaAdulto.Cells[8].FindControl("drpEstado")).SelectedValue = TablaUsuario1.Rows[row]["Estado"].ToString();
                    row++;
                }            
            }            
        }        

        protected void mostrarPerfilesEmpresas()
        {
            dgPerfilesEmpresas.DataSource = "";
            panelEmpresas.Visible = false;

            cIATUsuarioNegocios UsuarioActivadoBuscar = new cIATUsuarioNegocios(1, "A", 2, "B");
            UsuarioActivadoBuscar.Estado = 1;
            UsuarioActivadoBuscar.FK_IdTipoUsuario = 2;

            cIATUsuarioNegocios UsuarioDesactivadoBuscar = new cIATUsuarioNegocios(1, "A", 2, "B");
            UsuarioDesactivadoBuscar.Estado = 2;
            UsuarioActivadoBuscar.FK_IdTipoUsuario = 2;

            DataTable TablaUsuario1 = UsuarioActivadoBuscar.Buscar();

            DataTable TablaUsuario2 = UsuarioDesactivadoBuscar.Buscar();

            TablaUsuario1.Merge(TablaUsuario2);

            DataTable TablaEmpresaGeneral;

            if (TablaUsuario1.Rows.Count > 0)
            {
                cIATEmpresaNegocios Empresa1Buscar = new cIATEmpresaNegocios(1, "A", 2, "B");
                Empresa1Buscar.FK_IdUsuario = Int16.Parse(TablaUsuario1.Rows[0]["Id_Usuario"].ToString());

                TablaEmpresaGeneral = Empresa1Buscar.Buscar();

                for (int i = 1; i < TablaUsuario1.Rows.Count; i++)
                {
                    cIATEmpresaNegocios EmpresaBuscar = new cIATEmpresaNegocios(1, "A", 2, "B");
                    EmpresaBuscar.FK_IdUsuario = Int16.Parse(TablaUsuario1.Rows[i]["Id_Usuario"].ToString());

                    DataTable TablaEmpresa = EmpresaBuscar.Buscar();
                    TablaEmpresaGeneral.Merge(TablaEmpresa);
                }

                if (TablaEmpresaGeneral.Rows.Count > 0)
                {
                    dgPerfilesEmpresas.DataSource = TablaEmpresaGeneral;
                    dgPerfilesEmpresas.DataBind();

                    int row1 = 0;
                    foreach (DataGridItem Fila in dgPerfilesEmpresas.Items)
                    {
                        Fila.Cells[7].Text = TablaUsuario1.Rows[row1]["Nom_Usuario"].ToString();
                        Fila.Cells[8].Text = TablaUsuario1.Rows[row1]["Contrasenna"].ToString();
                        Fila.Cells[9].Text = TablaUsuario1.Rows[row1]["Indicio_Contrasenna"].ToString();
                        Fila.Cells[10].Text = TablaUsuario1.Rows[row1]["FK_IdTipoUsuario"].ToString();
                        Fila.Cells[4].Text = obtenerTelefono(Fila.Cells[0].Text);
                        Fila.Cells[5].Text = obtenerCorreo(Fila.Cells[0].Text);
                        row1++;
                    }
                    panelEmpresas.Visible = true;
                }

                int row = 0;
                foreach (DataGridItem filaEmpresa in dgPerfilesEmpresas.Items)
                {
                    ListItem ItemEstado1 = new ListItem("Activado", "1");
                    ListItem ItemEstado2 = new ListItem("Desactivado", "2");
                    ((DropDownList)filaEmpresa.Cells[6].FindControl("drpEmpresas")).Items.Add(ItemEstado1);
                    ((DropDownList)filaEmpresa.Cells[6].FindControl("drpEmpresas")).Items.Add(ItemEstado2);

                    ((DropDownList)filaEmpresa.Cells[6].FindControl("drpEmpresas")).SelectedValue = TablaUsuario1.Rows[row]["Estado"].ToString();
                    row++;
                }
            }
        }

        protected String obtenerTelefono(String Telefono)
        {
            cIATContactoNegocios TelefonoBuscar = new cIATContactoNegocios(1, "A", 2, "B");
            TelefonoBuscar.FK_IdTipoContacto = 1;
            TelefonoBuscar.FK_IdUsuario = Int16.Parse(Telefono);

            DataTable TablaTelefono = TelefonoBuscar.Buscar();

            if (TablaTelefono.Rows.Count > 0)
            {
                Telefono = TablaTelefono.Rows[0]["Detalle"].ToString();
            }

            return Telefono;
        }

        protected String obtenerCorreo(String Correo)
        {
            cIATContactoNegocios CorreoBuscar = new cIATContactoNegocios(1, "A", 2, "B");
            CorreoBuscar.FK_IdTipoContacto = 3;
            CorreoBuscar.FK_IdUsuario = Int16.Parse(Correo);

            DataTable TablaCorreo = CorreoBuscar.Buscar();

            if (TablaCorreo.Rows.Count > 0)
            {
                Correo = TablaCorreo.Rows[0]["Detalle"].ToString();
            }

            return Correo;
        }

        protected void dgPerfilesAdultosMayores_ItemCommand(object source, DataGridCommandEventArgs e)
        {

        }

        protected void btnGuardarEstado_Click(object sender, EventArgs e)
        {            
            foreach (DataGridItem filaAdulto in dgPerfilesAdultosMayores.Items)
            {
                cIATUsuarioNegocios UsuarioPersonaActualizar = new cIATUsuarioNegocios(1, "A", 2, "B");
                UsuarioPersonaActualizar.Id_Usuario = Int16.Parse(filaAdulto.Cells[0].Text.ToString());
                UsuarioPersonaActualizar.Nom_Usuario = filaAdulto.Cells[9].Text.ToString();
                UsuarioPersonaActualizar.Contrasenna = filaAdulto.Cells[10].Text.ToString();
                UsuarioPersonaActualizar.Indicio_Contrasenna = filaAdulto.Cells[11].Text.ToString();
                UsuarioPersonaActualizar.FK_IdTipoUsuario = Int16.Parse(filaAdulto.Cells[12].Text.ToString());

                if (((DropDownList)filaAdulto.Cells[8].FindControl("drpEstado")).SelectedValue.Equals("1"))
                {
                    UsuarioPersonaActualizar.Estado = 1; 
                }
                else if (((DropDownList)filaAdulto.Cells[8].FindControl("drpEstado")).SelectedValue.Equals("2"))
                {
                    UsuarioPersonaActualizar.Estado = 2; 
                }
                               
                UsuarioPersonaActualizar.Actualizar();
            }

            foreach (DataGridItem filaEmpresa in dgPerfilesEmpresas.Items)
            {
                cIATUsuarioNegocios UsuarioEmpresaActualizar = new cIATUsuarioNegocios(1, "A", 2, "B");
                UsuarioEmpresaActualizar.Id_Usuario = Int16.Parse(filaEmpresa.Cells[0].Text.ToString());
                UsuarioEmpresaActualizar.Nom_Usuario = filaEmpresa.Cells[7].Text.ToString();
                UsuarioEmpresaActualizar.Contrasenna = filaEmpresa.Cells[8].Text.ToString();
                UsuarioEmpresaActualizar.Indicio_Contrasenna = filaEmpresa.Cells[9].Text.ToString();
                UsuarioEmpresaActualizar.FK_IdTipoUsuario = Int16.Parse(filaEmpresa.Cells[10].Text.ToString());

                if (((DropDownList)filaEmpresa.Cells[6].FindControl("drpEmpresas")).SelectedValue.Equals("1"))
                {
                    UsuarioEmpresaActualizar.Estado = 1;
                }
                else if (((DropDownList)filaEmpresa.Cells[6].FindControl("drpEmpresas")).SelectedValue.Equals("2"))
                {
                    UsuarioEmpresaActualizar.Estado = 2;
                }

                UsuarioEmpresaActualizar.Actualizar();

                string script = @"<script type='text/javascript'>
                            alert('Se han cambiado los estados de las cuentas.');
                            </script>";

                ScriptManager.RegisterStartupScript(this, typeof(Page), "Administrador", script, false);
            }
        }
    }
}