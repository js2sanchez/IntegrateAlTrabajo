<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraEmpresa.Master" AutoEventWireup="true" CodeBehind="frmInteresados.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.Empresa.frmInteresados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
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
                <asp:Label ID="lblInteresados" runat="server" CssClass="Titulo1" 
                    Text="Interesados de la oferta"></asp:Label>
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
            <asp:Label runat="server" ID="lblNoInteresados" Text="No hay interesados en esta oferta"></asp:Label>
                <asp:Panel ID="PanelTablaDatos" runat="server">                
                    <asp:DataGrid ID="dgInteresados" runat="server" AutoGenerateColumns="False" 
                                            BackColor="WhiteSmoke" BorderStyle="Solid" CssClass="GridMantenimiento" 
                                            Font-Names="Verdana" Font-Size="Smaller" 
                        ForeColor="Black" Height="19px" 
                                            Width="99%" 
                        onitemcommand="dgInteresados_ItemCommand">
                        <AlternatingItemStyle BackColor="Gainsboro" />
                        <HeaderStyle BackColor="Navy" Font-Bold="True" Font-Names="Verdana" 
                                                Font-Size="Larger" ForeColor="White" 
                            HorizontalAlign="Center" />
                        <Columns>
                            <asp:BoundColumn DataField="FK_IdUsuario" HeaderText="Id_Usuario" 
                                Visible="False"></asp:BoundColumn>
                            <asp:BoundColumn HeaderText="Nombre" DataField="Nom_Persona">
                            </asp:BoundColumn>
                            <asp:BoundColumn HeaderText="Apellido 1" DataField="Apellido1" 
                            ></asp:BoundColumn>
                            <asp:BoundColumn HeaderText="Apellido 2" DataField="Apellido2" 
                            ></asp:BoundColumn>
                            <asp:BoundColumn HeaderText="Teléfono">
                            </asp:BoundColumn>
                            <asp:BoundColumn HeaderText="Correo">
                            </asp:BoundColumn>
                            <asp:TemplateColumn HeaderText="Ver Perfil">
                                <ItemTemplate>
                                    <asp:ImageButton ID="ibtnDetalles" ImageUrl="~/Multimedia/icono-buscar.png" Height="30px" Width="30px" 
                                    Style="display: block; margin: 0 auto;" 
                                    runat="server" CommandName="Detalles"/>
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
        </table>
</asp:Content>
