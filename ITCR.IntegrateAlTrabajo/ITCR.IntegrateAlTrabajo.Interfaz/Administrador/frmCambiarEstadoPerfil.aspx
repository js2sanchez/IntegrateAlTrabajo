<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraAdministrador.Master" AutoEventWireup="true" CodeBehind="frmCambiarEstadoPerfil.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.Administrador.frmCambiarEstadoPerfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style3
        {
            width: 97%;
            height: 25px;
        }
        .style4
        {}
        .style5
        {}
        .style6
        {
            width: 250px;
        }
        .style7
        {
            width: 20px;
        }
        .style8
        {
            width: 15px;
        }
        .style9
        {
        }
        .style10
        {
        }
        .style11
        {
        }
        .style12
        {
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style3">
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style12" colspan="2">
                <asp:Label ID="lblActivarDesactivarEstado" runat="server" 
                    Text="Activar/Desactivar Estado" CssClass="Titulo1"></asp:Label>
            </td>
            <td class="style7">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9" colspan="2">
                                    <asp:Label ID="lblAdultosMayores" runat="server" 
                    Text="Adultos Mayores" CssClass="Titulo2"></asp:Label>
                                </td>
            <td class="style7">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style5" colspan="5">
                    <asp:Panel ID="panelAdultosMayores" runat="server">
                        <asp:DataGrid ID="dgPerfilesAdultosMayores" runat="server" AutoGenerateColumns="False" 
                                            BackColor="WhiteSmoke" 
    BorderStyle="Solid" CssClass="GridMantenimiento" 
                                            Font-Names="Verdana" Font-Size="Smaller" 
                        ForeColor="Black" Height="19px" 
                                            Width="100%" 
                            onitemcommand="dgPerfilesAdultosMayores_ItemCommand">
                            <AlternatingItemStyle BackColor="Gainsboro" />
                            <HeaderStyle BackColor="Navy" Font-Bold="True" Font-Names="Verdana" 
                                                Font-Size="Larger" ForeColor="White" 
                            HorizontalAlign="Center" />
                            <Columns>
                                <asp:BoundColumn HeaderText="Id Usuario" DataField="FK_IdUsuario" 
                                    Visible="False"></asp:BoundColumn>
                                <asp:BoundColumn DataField="Id_Persona" HeaderText="Id Persona" Visible="False">
                                </asp:BoundColumn>
                                <asp:BoundColumn HeaderText="Nombre" DataField="Nom_Persona"></asp:BoundColumn>
                                <asp:BoundColumn HeaderText="Apellido 1" DataField="Apellido1">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="Apellido2" HeaderText="Apellido 2">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="Num_Cedula" HeaderText="Cédula"></asp:BoundColumn>
                                <asp:BoundColumn HeaderText="Teléfono"></asp:BoundColumn>
                                <asp:BoundColumn HeaderText="Correo"></asp:BoundColumn>
                                <asp:TemplateColumn HeaderText="Estado">
                                    <ItemTemplate>
                                        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
                                            <asp:DropDownList ID="drpEstado" runat="server" Width="250px">
                                            </asp:DropDownList>
                                        </asp:Panel>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:BoundColumn HeaderText="Nom_Usuario" Visible="False"></asp:BoundColumn>
                                <asp:BoundColumn HeaderText="Contraseña" Visible="False"></asp:BoundColumn>
                                <asp:BoundColumn HeaderText="Indicio" Visible="False"></asp:BoundColumn>
                                <asp:BoundColumn HeaderText="Tipo Usuario" Visible="False"></asp:BoundColumn>
                            </Columns>
                        </asp:DataGrid>
                    </asp:Panel>
                </td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style10" colspan="2">
                                    <asp:Label ID="lblEmpresas" runat="server" Text="Empresas" 
                    CssClass="Titulo2"></asp:Label>
                                </td>
            <td class="style7">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style11" colspan="5">
                    <asp:Panel ID="panelEmpresas" runat="server">
                        <asp:DataGrid ID="dgPerfilesEmpresas" runat="server" AutoGenerateColumns="False" 
                                            BackColor="WhiteSmoke" 
    BorderStyle="Solid" CssClass="GridMantenimiento" 
                                            Font-Names="Verdana" Font-Size="Smaller" 
                        ForeColor="Black" Height="19px" 
                                            Width="100%">
                            <AlternatingItemStyle BackColor="Gainsboro" />
                            <HeaderStyle BackColor="Navy" Font-Bold="True" Font-Names="Verdana" 
                                                Font-Size="Larger" ForeColor="White" 
                            HorizontalAlign="Center" />
                            <Columns>
                                <asp:BoundColumn HeaderText="Id Usuario" DataField="FK_IdUsuario" 
                                    Visible="False"></asp:BoundColumn>
                                <asp:BoundColumn DataField="Id_Empresa" HeaderText="Id Empresa" Visible="False">
                                </asp:BoundColumn>
                                <asp:BoundColumn HeaderText="Nombre" DataField="Nom_Empresa"></asp:BoundColumn>
                                <asp:BoundColumn HeaderText="Cédula Jurídica" DataField="Num_CedulaJuridica">
                                </asp:BoundColumn>
                                <asp:BoundColumn HeaderText="Teléfono"></asp:BoundColumn>
                                <asp:BoundColumn HeaderText="Correo"></asp:BoundColumn>
                                <asp:TemplateColumn HeaderText="Estado">
                                    <ItemTemplate>
                                        <asp:Panel ID="Panel2" runat="server" HorizontalAlign="Center">
                                            <asp:DropDownList ID="drpEmpresas" runat="server" Width="250px">
                                            </asp:DropDownList>
                                        </asp:Panel>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:BoundColumn HeaderText="Nom_Usuario" Visible="False"></asp:BoundColumn>
                                <asp:BoundColumn HeaderText="Contraseña" Visible="False"></asp:BoundColumn>
                                <asp:BoundColumn HeaderText="Indicio Contraseña" Visible="False">
                                </asp:BoundColumn>
                                <asp:BoundColumn HeaderText="Tipo Usuario" Visible="False"></asp:BoundColumn>
                            </Columns>
                        </asp:DataGrid>
                    </asp:Panel>
                </td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style6">
                                                    <asp:Button ID="btnGuardarEstado" runat="server" Text="Guardar" 
                                                        onclick="btnGuardarEstado_Click" />
                                                </td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
