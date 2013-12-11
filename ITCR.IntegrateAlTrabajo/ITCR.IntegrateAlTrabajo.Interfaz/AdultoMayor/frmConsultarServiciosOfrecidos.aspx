<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraAdultoMayor.Master" AutoEventWireup="true" CodeBehind="frmConsultarServiciosOfrecidos.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.AdultoMayor.frmConsultarServiciosOfrecidos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

       <script id="clientEventHandlersJS" language="javascript" type="text/javascript">

           function confirmarBorradoServicio() {
               if (confirm("¿Está seguro que desea borrar el servicio? Los cambios son irreversibles.", "Confirmación de borrado") == true)
                   return true;
               else
                   return false;
           }
    </script>

    <style type="text/css">
        .style3
        {
            width: 98%;
        }
        .style5
        {
        }
        .style6
        {
            width: 250px;
        }
        .style7
        {
            width: 20px;
        }
        .style9
        {
            width: 15px;
        }
        .style14
        {
            width: 100%;
        }
        .style26
        {
            width: 109px;
            height: 25px;
        }
        .style27
        {
            width: 298px;
            height: 25px;
        }
        .style28
        {
            width: 27px;
            height: 25px;
        }
        .style29
        {
            width: 117px;
            height: 25px;
        }
        .style11
        {
            height: 25px;
            }
        .GridMantenimiento
        {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style3">
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style5" colspan="2">
                <asp:Label ID="lblConsultarServicios" runat="server" 
                    Text="Mis Servicios" CssClass="Titulo1"></asp:Label>
            </td>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style5" colspan="5">
                <asp:ValidationSummary ID="vsOfrecerServicios" runat="server" 
                    ForeColor="#CC0000" ValidationGroup="gvServicios" />
            </td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style5" colspan="5">
                <asp:Panel ID="PanelTablaDatos" runat="server">
                    <asp:DataGrid ID="dgServicios" runat="server" AutoGenerateColumns="False" 
                                            BackColor="WhiteSmoke" 
    BorderStyle="Solid" CssClass="GridMantenimiento" 
                                            Font-Names="Century Gothic" Font-Size="Small" 
                        ForeColor="Black" Height="19px" 
                                            Width="100%" 
                        ondeletecommand="dgServicios_DeleteCommand" 
                        onitemcommand="dgServicios_ItemCommand" 
                        onitemdatabound="dgServicios_ItemDataBound">
                        <AlternatingItemStyle BackColor="Gainsboro" />
                        <HeaderStyle BackColor="Navy" Font-Bold="True" Font-Names="Century Gothic" 
                                                Font-Size="Larger" ForeColor="White" 
                            HorizontalAlign="Center" />
                        <Columns>
                            <asp:BoundColumn HeaderText="Id" DataField="Id_Servicio" Visible="False">
                            </asp:BoundColumn>
                            <asp:BoundColumn HeaderText="Nombre" DataField="Nom_Servicio"></asp:BoundColumn>
                            <asp:BoundColumn HeaderText="Descripción" DataField="Descripcion">
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="FK_IdCategoriaServicio" HeaderText="Categoría">
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="FK_IdTipoServicio" HeaderText="Tipo">
                            </asp:BoundColumn>
                            <asp:BoundColumn HeaderText="Horario"></asp:BoundColumn>
                            <asp:TemplateColumn HeaderText="Editar">
                                <ItemTemplate>
                                    <asp:Panel ID="Panel1" runat="server" 
                                        HorizontalAlign="Center">
                                        <asp:ImageButton ID="ibtnEditar" runat="server" 
                                            CommandName="Editar" Height="30px" ImageUrl="~/Multimedia/icono-editar.jpg" 
                                            Width="30px" />
                                    </asp:Panel>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="Eliminar">
                                <ItemTemplate>
                                    <asp:Panel ID="Panel2" runat="server" 
                                        HorizontalAlign="Center">
                                        <asp:ImageButton ID="ibtnEliminar" runat="server" 
                                            CommandName="Eliminar" Height="24px" ImageUrl="~/Multimedia/icono-eliminar.jpg" 
                                            Width="23px" />
                                    </asp:Panel>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                        </Columns>
                    </asp:DataGrid>
                </asp:Panel>
            </td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style5" colspan="5">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style5" colspan="5">
                                    <asp:Panel ID="PanelIngresoDatos" runat="server" BorderStyle="Solid" 
                                        BorderWidth="2px">
                                        <table class="style14">
                                            <tr>
                                                <td class="style26">
                                                    <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
                                                    &nbsp;del servicio</td>
                                                <td class="style27">
                                                    <asp:TextBox ID="txtNombreServicios" runat="server" Enabled="False"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfvNombreServicio" runat="server" 
                                                        ControlToValidate="txtNombreServicios" 
                                                        ErrorMessage="El nombre del servicio es un dato requerido." 
                                                        ForeColor="Red" ValidationGroup="gvServicios">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td class="style28">
                                                </td>
                                                <td class="style29">
                                                    <asp:Label ID="lblCategoria" runat="server" Text="Categoría"></asp:Label>
                                                </td>
                                                <td class="style11">
                                                    <asp:DropDownList ID="drpCategoriaServicio" runat="server" Height="30px" 
                                                        Width="121px" Enabled="False">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style26">
                                                    <asp:Label ID="lblTipo" runat="server" Text="Tipo"></asp:Label>
                                                    &nbsp;de servicio</td>
                                                <td class="style27">
                                                    <asp:DropDownList ID="drpTipoServicio" runat="server" Height="30px" 
                                                        Width="121px" Enabled="False">
                                                    </asp:DropDownList>
                                                </td>
                                                <td class="style28">
                                                    &nbsp;</td>
                                                <td class="style29">
                                                    <asp:Label ID="lblDescripcion" runat="server" Text="Descripción"></asp:Label>
                                                </td>
                                                <td class="style11">
                                                    <asp:TextBox ID="txtDescripcionServicios" runat="server" Enabled="False"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style26">
                                                    <asp:Label ID="lblDias" runat="server" Text="Días"></asp:Label>
                                                    &nbsp;y horas</td>
                                                <td class="style27">
                                                    </td>
                                                <td class="style28">
                                                    </td>
                                                <td class="style29">
                                                    </td>
                                                <td class="style11">
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="style26">
                                                    <asp:Label ID="lblLunes" runat="server" Text="Lunes"></asp:Label>
                                                </td>
                                                <td class="style27">
                                                    <asp:DropDownList ID="drpHora1" runat="server" Enabled="False" Height="30px" 
                                                        Width="121px">
                                                    </asp:DropDownList>
                                                </td>
                                                <td class="style28">
                                                    &nbsp;</td>
                                                <td class="style29">
                                                    &nbsp;</td>
                                                <td class="style11">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style26">
                                                    <asp:Label ID="lblMartes" runat="server" Text="Martes"></asp:Label>
                                                </td>
                                                <td class="style27">
                                                    <asp:DropDownList ID="drpHora2" runat="server" Enabled="False" Height="30px" 
                                                        Width="121px">
                                                    </asp:DropDownList>
                                                </td>
                                                <td class="style28">
                                                    &nbsp;</td>
                                                <td class="style29">
                                                    &nbsp;</td>
                                                <td class="style11">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style26">
                                                    <asp:Label ID="lblMiercoles" runat="server" Text="Miércoles"></asp:Label>
                                                </td>
                                                <td class="style27">
                                                    <asp:DropDownList ID="drpHora3" runat="server" Enabled="False" Height="30px" 
                                                        Width="121px">
                                                    </asp:DropDownList>
                                                </td>
                                                <td class="style28">
                                                    &nbsp;</td>
                                                <td class="style29">
                                                    &nbsp;</td>
                                                <td class="style11">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style26">
                                                    <asp:Label ID="lblJueves" runat="server" Text="Jueves"></asp:Label>
                                                </td>
                                                <td class="style27">
                                                    <asp:DropDownList ID="drpHora4" runat="server" Enabled="False" Height="30px" 
                                                        Width="121px">
                                                    </asp:DropDownList>
                                                </td>
                                                <td class="style28">
                                                    &nbsp;</td>
                                                <td class="style29">
                                                    &nbsp;</td>
                                                <td class="style11">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style26">
                                                    <asp:Label ID="lblViernes" runat="server" Text="Viernes"></asp:Label>
                                                </td>
                                                <td class="style27">
                                                    <asp:DropDownList ID="drpHora5" runat="server" Enabled="False" Height="30px" 
                                                        Width="121px">
                                                    </asp:DropDownList>
                                                </td>
                                                <td class="style28">
                                                    &nbsp;</td>
                                                <td class="style29">
                                                    &nbsp;</td>
                                                <td class="style11">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style26">
                                                    <asp:Label ID="lblSabado" runat="server" Text="Sábado"></asp:Label>
                                                </td>
                                                <td class="style27">
                                                    <asp:DropDownList ID="drpHora6" runat="server" Enabled="False" Height="30px" 
                                                        Width="121px">
                                                    </asp:DropDownList>
                                                </td>
                                                <td class="style28">
                                                    &nbsp;</td>
                                                <td class="style29">
                                                    &nbsp;</td>
                                                <td class="style11">
                                                    <asp:Panel ID="PanelBotonGuardar" runat="server" HorizontalAlign="Right">
                                                        <asp:Button ID="btnGuardarServicio" runat="server" BorderStyle="None" 
                                                            CssClass="Boton" onclick="btnGuardarServicio_Click" Text="Guardar" />
                                                    </asp:Panel>
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                </td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style5" colspan="5">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
