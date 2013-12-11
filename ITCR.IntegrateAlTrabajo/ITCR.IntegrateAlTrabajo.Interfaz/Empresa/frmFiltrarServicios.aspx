<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraEmpresa.Master" AutoEventWireup="true" CodeBehind="frmFiltrarServicios.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.Empresa.frmFiltrarServicios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style3
        {
            width: 100%;
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
            height: 25px;
        }
        .style9
        {
            width: 162px;
        }
        .style10
        {
            width: 247px;
        }
        .style11
        {
            width: 20px;
        }
        .style12
        {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style3">
        <tr>
            <td class="style4">
            </td>
            <td class="style5" colspan="2">
                <asp:Label ID="lbl_titulo" runat="server" 
                    Text="Buscar ofertas de servicios por:"></asp:Label>
            </td>
            <td class="style7">
            </td>
            <td class="style5">
            </td>
            <td class="style6">
            </td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style8">
                <asp:CheckBox ID="chk_tipo" runat="server" Text="Tipo de servicio" 
                    AutoPostBack="True" oncheckedchanged="chk_Busqueda_CheckedChanged"/>
            </td>
            <td class="style6">
                <asp:CheckBox ID="chk_Categoria" runat="server" Text="Categoría de servicio" 
                    AutoPostBack="True" oncheckedchanged="chk_Busqueda_CheckedChanged" />
            </td>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                <asp:CheckBox ID="chk_Provincia" runat="server" Text="Provincia" 
                    AutoPostBack="True" oncheckedchanged="chk_Busqueda_CheckedChanged" />
            </td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style8">
                <asp:DropDownList ID="drpTipo" runat="server" Enabled="False">
                </asp:DropDownList>
            </td>
            <td class="style6">
                <asp:DropDownList ID="drpCategoria" runat="server" Enabled="False">
                </asp:DropDownList>
            </td>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                <asp:DropDownList ID="drpprovincia" runat="server" Enabled="False">
                </asp:DropDownList>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
            </td>
            <td class="style8">
            </td>
            <td class="style6">
            </td>
            <td class="style7">
            </td>
            <td class="style5">
            </td>
            <td class="style6">
                <asp:Button ID="btn_buscar" runat="server" Height="25px" Text="Buscar" 
                    Enabled="False" onclick="btn_buscar_Click" />
            </td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style8" colspan="5">
                <asp:Panel ID="pnl_resultados" runat="server">
                    <table class="style3">
                        <tr>
                            <td class="style12">
                                <asp:Label ID="lbl_resultados" runat="server" Text="Resultados de búsqueda"></asp:Label>
                            </td>
                            <td class="style10">
                                &nbsp;</td>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style9">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style12">
                                &nbsp;</td>
                            <td class="style10">
                                &nbsp;</td>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style9">
                                &nbsp;</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td class="style12" colspan="5">
                                <asp:DataGrid ID="dgResultados" runat="server" AutoGenerateColumns="False" 
                                    BackColor="WhiteSmoke" BorderStyle="Solid" CssClass="GridMantenimiento" 
                                    Font-Names="Verdana" Font-Size="Smaller" ForeColor="Black" Height="19px" 
                                    Width="99%" onitemcommand="dgResultados_ItemCommand">
                                    <AlternatingItemStyle BackColor="Gainsboro" />
                                    <HeaderStyle BackColor="Navy" Font-Bold="True" Font-Names="Verdana" 
                                        Font-Size="Larger" ForeColor="White" HorizontalAlign="Center" />
                                    <Columns>
                                        <asp:BoundColumn DataField="FK_IdUsuario" HeaderText="Id" Visible="False">
                                        </asp:BoundColumn>
                                        <asp:BoundColumn DataField="Nom_Persona" HeaderText="Nombre"></asp:BoundColumn>
                                        <asp:BoundColumn HeaderText="Primer Apellido" DataField="Apellido1"></asp:BoundColumn>
                                        <asp:BoundColumn HeaderText="Teléfono" DataField="Detalle"></asp:BoundColumn>
                                        <asp:TemplateColumn HeaderText="Ver Perfil">
                                            <ItemTemplate>
                                                <asp:ImageButton ID="imgbtn_verperfil" runat="server" CommandName="Perfil" 
                                                    Height="30px" ImageAlign="Right" ImageUrl="~/Multimedia/icono-buscar.jpg" 
                                                    />
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                &nbsp;</td>
                            <td class="style10">
                                &nbsp;</td>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style9">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
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
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
