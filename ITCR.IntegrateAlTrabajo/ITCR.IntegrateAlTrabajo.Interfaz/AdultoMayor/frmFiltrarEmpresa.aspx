<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraAdultoMayor.Master" AutoEventWireup="true" CodeBehind="frmFiltrarEmpresa.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.AdultoMayor.frmFiltrarEmpresa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
    .style3
    {
        width: 100%;
    }
    .style4
    {
        width: 15px;
    }
    .style6
    {}
    .style7
    {
        width: 250px;
    }
    .style8
    {
        width: 20px;
    }
        .style13
        {
            height: 25px;
        }
        .style14
        {
            width: 251px;
            height: 25px;
        }
        .style15
        {
            width: 21px;
            height: 25px;
        }
        .style16
        {
            width: 160px;
            height: 25px;
        }
        .style5
        {
            height: 25px;
        }
        .style18
        {
            width: 200px;
            height: 26px;
        }
        .style19
        {
            width: 251px;
            height: 26px;
        }
        .style20
        {
            width: 21px;
            height: 26px;
        }
        .style21
        {
            width: 160px;
            height: 26px;
        }
        .style22
        {
            height: 26px;
        }
        .style9
        {
            width: 200px;
            height: 24px;
        }
        .style10
        {
            width: 251px;
            height: 24px;
        }
        .style11
        {
            width: 21px;
            height: 24px;
        }
        .style12
        {
            width: 160px;
            height: 24px;
        }
        .style17
        {
            height: 24px;
        }
        .style23
    {
        width: 116px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style3">
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style6" colspan="2">
            Seleccionar la empresa a calificar:</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style23">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style6" colspan="2">
                <asp:DropDownList ID="drpEmpresa" runat="server" Enabled="False">
                </asp:DropDownList>
            </td>
        <td class="style8">
            &nbsp;</td>
        <td class="style23">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style23">
            &nbsp;</td>
        <td class="style7">
                <asp:Panel ID="PanelBotonBuscar" runat="server" HorizontalAlign="Right">
                    <asp:Button ID="btn_buscar" runat="server" Text="Buscar" CssClass="Boton" />
                </asp:Panel>
            </td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style23">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style6" colspan="5">
                <asp:Panel ID="pnl_resultados" runat="server">
                </asp:Panel>
                </td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style6" colspan="5">
                <asp:Panel ID="pnl_resultado" runat="server" Height="414px">
                    <table class="style3">
                        <tr>
                            <td class="style13">
                                <asp:Label ID="lbl_resultados" runat="server" Text="Resultados de búsqueda" 
                                    Visible="False"></asp:Label>
                            </td>
                            <td class="style14">
                                &nbsp;</td>
                            <td class="style15">
                            </td>
                            <td class="style16">
                            </td>
                            <td class="style5">
                            </td>
                        </tr>
                        <tr>
                            <td class="style18">
                            </td>
                            <td class="style19">
                            </td>
                            <td class="style20">
                            </td>
                            <td class="style21">
                            </td>
                            <td class="style22">
                            </td>
                        </tr>
                        <tr>
                            <td class="style13" colspan="5">
                                <asp:DataGrid ID="dgResultados" runat="server" AutoGenerateColumns="False" 
                                    BackColor="WhiteSmoke" BorderStyle="Solid" CssClass="GridMantenimiento" 
                                    Font-Names="Century Gothic" Font-Size="Small" ForeColor="Black" Height="19px" 
                                     Width="99%" Font-Overline="False">
                                    <AlternatingItemStyle BackColor="Gainsboro" />
                                    <HeaderStyle BackColor="Navy" Font-Bold="True" Font-Names="Century Gothic" 
                                        Font-Size="Larger" ForeColor="White" HorizontalAlign="Center" />
                                    <Columns>
                                        <asp:BoundColumn DataField="Id_Empresa" HeaderText="Id" Visible="False">
                                        </asp:BoundColumn>
                                        <asp:BoundColumn DataField="Nom_Empresa" HeaderText="Empresa"></asp:BoundColumn>
                                        <asp:TemplateColumn HeaderText="Ver Perfil">
                                            <ItemTemplate>
                                                <asp:ImageButton ID="imgbtn_verperfil" runat="server" CommandName="Perfil" 
                                                    Height="30px" ImageAlign="Right" ImageUrl="~/Multimedia/icono-buscar.jpg" />
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                    </Columns>
                                </asp:DataGrid>
                            </td>
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
                            <td class="style17">
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
        <td class="style6">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style23">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style23">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style23">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style23">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style23">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style23">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style23">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style23">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style23">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style23">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style23">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style23">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style23">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style23">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style23">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style23">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style23">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style23">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style23">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style23">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
