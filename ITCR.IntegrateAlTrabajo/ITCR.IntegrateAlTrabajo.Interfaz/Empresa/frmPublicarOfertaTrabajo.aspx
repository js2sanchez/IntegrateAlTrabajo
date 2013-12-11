<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraEmpresa.Master" AutoEventWireup="true" CodeBehind="frmPublicarOfertaTrabajo.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.AdultoMayor.frmPublicarOfertaTrabajo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    
    <script id="clientEventHandlersJS" language="javascript" type="text/javascript">

           function confirmarBorradoOfertaTrabajo() {
               if (confirm("¿Está seguro que desea borrar esta oferta de trabajo? Los cambios son irreversibles.", "Confirmación de borrado") == true)
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
        .style4
        {
            width: 15px;
            height: 25px;
        }
        .style5
        {
            height: 25px;
        }
        .style6
        {
            width: 250px;
            height: 25px;
        }
        .style7
        {
            width: 20px;
            height: 25px;
        }
        .style8
        {
            width: 100%;
        }
        .style9
        {
            height: 25px;
        }
        .style10
        {
            width: 297px;
            height: 25px;
        }
        .style11
        {
            width: 25px;
            height: 25px;
        }
        .style12
        {
            width: 120px;
            height: 25px;
        }
        .style13
        {
            height: 25px;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style3">
        <tr>
            <td class="style4">
            </td>
            <td class="style5" colspan="2">
                <asp:Label ID="lblOfertaTrabajo" runat="server" CssClass="Titulo1" 
                    Text="Ofertas de trabajo"></asp:Label>
            </td>
            <td class="style7">
            </td>
            <td class="style13">
            </td>
            <td class="style6">
            </td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style13" colspan="5">
                <asp:ValidationSummary ID="vsOfertaTrabajo" runat="server" ForeColor="#CC0000" 
                    ValidationGroup="gvOfertaTrabajo" />
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5" colspan="5">
                <asp:Panel ID="PanelDatos" runat="server" BorderStyle="Solid" BorderWidth="2px">
                    <table class="style8">
                        <tr>
                            <td class="style9">
                                &nbsp;</td>
                            <td class="style10">
                                &nbsp;</td>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                &nbsp;</td>
                            <td class="style5">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="lblNombrePuesto" runat="server" Text="Nombre del puesto"></asp:Label>
                            </td>
                            <td class="style10">
                                <asp:TextBox ID="txtNombrePuesto" runat="server" Width="250px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvNombrePuesto" runat="server" ControlToValidate="txtNombrePuesto"
                                ErrorMessage="El nombre del puesto es un dato requerido." ForeColor="Red" ValidationGroup="gvOfertaTrabajo">*</asp:RequiredFieldValidator>
                            </td>
                            <td class="style11">
                            </td>
                            <td class="style12">
                                <asp:Label ID="lblDescripcion" runat="server" Text="Descripción"></asp:Label>
                            </td>
                            <td class="style5">
                                <asp:TextBox ID="txtDescripcion" runat="server" Height="100px" 
                                    TextMode="MultiLine" Width="250px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="lblRequisitos" runat="server" Text="Requisitos"></asp:Label>
                            </td>
                            <td class="style10">
                                <asp:TextBox ID="txtRequisitos" runat="server" Height="100px" 
                                    TextMode="MultiLine" Width="250px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvRequisitos" runat="server" ControlToValidate="txtRequisitos"
                                ErrorMessage="Los requisitos son datos requeridos." ForeColor="Red" ValidationGroup="gvOfertaTrabajo">*</asp:RequiredFieldValidator>
                            </td>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                <asp:Label ID="lblObservaciones" runat="server" Text="Observaciones"></asp:Label>
                            </td>
                            <td class="style5">
                                <asp:TextBox ID="txtObservaciones" runat="server" Height="100px" 
                                    TextMode="MultiLine" Width="250px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="lblTipo" runat="server" Text="Tipo"></asp:Label>
                            </td>
                            <td class="style10">
                                <asp:DropDownList ID="drpTipo" runat="server" Width="250px">
                                </asp:DropDownList>
                            </td>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                <asp:Label ID="lblCategoria" runat="server" Text="Categoría"></asp:Label>
                            </td>
                            <td class="style5">
                                <asp:DropDownList ID="drpCategoria" runat="server" Width="250px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9" colspan="2">
                                <asp:CheckBox ID="chkActiva" runat="server" Text="Activa" />
                            </td>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                &nbsp;</td>
                            <td class="style5">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style9">
                                &nbsp;</td>
                            <td class="style10">
                                &nbsp;</td>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                &nbsp;</td>
                            <td class="style5">
                                <asp:Panel ID="PanelBotones" runat="server" HorizontalAlign="Right">
                                    <asp:Button ID="btnAgregar" runat="server" CssClass="Boton" 
                                        onclick="btnAgregar_Click" Text="Agregar" />
                                    &nbsp;
                                    <asp:Button ID="btnActualizar" runat="server" CssClass="Boton" 
                                        onclick="btnActualizar_Click" Text="Actualizar" />
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style13" colspan="5">
                <asp:Panel ID="PanelTablaDatos" runat="server">
                    <asp:DataGrid ID="dgOfertaTrabajo" runat="server" AutoGenerateColumns="False" 
                                            BackColor="WhiteSmoke" BorderStyle="Solid" CssClass="GridMantenimiento" 
                                            Font-Names="Verdana" Font-Size="Smaller" 
                        ForeColor="Black" Height="19px" 
                                            Width="99%" 
                        onitemcommand="dgOfertaTrabajo_ItemCommand" 
                        onitemdatabound="dgOfertaTrabajo_ItemDataBound">
                        <AlternatingItemStyle BackColor="Gainsboro" />
                        <HeaderStyle BackColor="Navy" Font-Bold="True" Font-Names="Verdana" 
                                                Font-Size="Larger" ForeColor="White" 
                            HorizontalAlign="Center" />
                        <Columns>
                            <asp:BoundColumn DataField="Id_OfertaTrabajo" HeaderText="Id_OfertaTrabajo" 
                                Visible="False"></asp:BoundColumn>
                            <asp:BoundColumn HeaderText="Nombre del puesto" DataField="Nom_Puesto">
                            </asp:BoundColumn>
                            <asp:BoundColumn HeaderText="Descripción" DataField="Dsc_OfertaTrabajo" 
                                Visible="False"></asp:BoundColumn>
                            <asp:BoundColumn HeaderText="Requisitos" DataField="Txt_Requisitos">
                            </asp:BoundColumn>
                            <asp:BoundColumn HeaderText="Observaciones" DataField="InformacionAdicional" 
                                Visible="False"></asp:BoundColumn>
                            <asp:BoundColumn DataField="Ind_Activa" HeaderText="Activa" Visible="False">
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="FK_IdTipoOfertaTrabajo" 
                                HeaderText="IdTipoOfertaTrabajo" Visible="False"></asp:BoundColumn>
                            <asp:BoundColumn HeaderText="Tipo"></asp:BoundColumn>
                            <asp:BoundColumn DataField="FK_IdCategoriaOfertaTrabajo" 
                                HeaderText="IdCategoriaOfertaTrabajo" Visible="False"></asp:BoundColumn>
                            <asp:BoundColumn HeaderText="Categoría"></asp:BoundColumn>
                            <asp:BoundColumn DataField="FK_IdEmpresa" HeaderText="IdEmpresa" 
                                Visible="False"></asp:BoundColumn>
                            <asp:TemplateColumn>
                                <ItemTemplate>
                                    <asp:ImageButton ID="ibtnEditar" runat="server" CommandName="Editar" 
                                                        Height="30px" ImageAlign="Right" ImageUrl="~/Multimedia/icono-editar.jpg" 
                                                        Width="30px" />
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn>
                                <ItemTemplate>
                                    <asp:ImageButton ID="ibtnEliminar" runat="server" CommandName="Eliminar" 
                                                        Height="30px" ImageAlign="Right" ImageUrl="~/Multimedia/icono-eliminar.jpg" 
                                                        Width="30px" />
                                </ItemTemplate>
                            </asp:TemplateColumn>
                        </Columns>
                    </asp:DataGrid>
                </asp:Panel>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
