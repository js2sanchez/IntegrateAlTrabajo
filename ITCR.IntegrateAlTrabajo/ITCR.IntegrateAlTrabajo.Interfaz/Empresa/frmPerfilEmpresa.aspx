<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraEmpresa.Master" AutoEventWireup="true" CodeBehind="frmPerfilEmpresa.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.Empresa.frmPerfilEmpresa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style3
        {
            width: 99%;
            height: 22px;
        }
        .style9
        {
            height: 25px;
        }
        .style12
        {
            width: 15px;
            height: 25px;
        }
        .style13
        {
            width: 100px;
            height: 25px;
        }
        .style14
        {
            width: 250px;
            height: 25px;
        }
        .style15
        {
            width: 20px;
            height: 25px;
        }
        .style16
        {
            width: 100%;
        }
        .style17
        {
            width: 116px;
        }
        .style19
        {
            width: 298px;
        }
        .style20
        {
            width: 31px;
        }
        .style21
        {
            width: 120px;
        }
        .style22
        {
            width: 116px;
            height: 25px;
        }
        .style23
        {
            width: 298px;
            height: 25px;
        }
        .style24
        {
            width: 31px;
            height: 25px;
        }
        .style25
        {
            width: 120px;
            height: 25px;
        }
        .style26
        {
            width: 116px;
            height: 24px;
        }
        .style27
        {
            width: 298px;
            height: 24px;
        }
        .style28
        {
            width: 31px;
            height: 24px;
        }
        .style29
        {
            width: 120px;
            height: 24px;
        }
        .style30
        {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style3">
        <tr>
            <td class="style12">
                </td>
            <td class="style13">
                <asp:Label ID="lblPerfil" runat="server" Text="Perfil" CssClass="Titulo1"></asp:Label>
            </td>
            <td class="style14">
                </td>
            <td class="style15">
                </td>
            <td class="style13">
                </td>
            <td class="style14">
                </td>
            <td class="style12">
                </td>
        </tr>
        <tr>
            <td class="style12">
            </td>
            <td class="style9" colspan="5">
                <asp:Panel ID="pnlPerfil" runat="server" BorderColor="#666666" 
                    BorderStyle="Solid">
                    <table class="style16">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="lblNombreEmpresa" runat="server" Text="Nombre"></asp:Label>
                            </td>
                            <td class="style23">
                                <asp:Label ID="lblContenidoNombreEmpresa" runat="server"></asp:Label>
                            </td>
                            <td class="style24">
                            </td>
                            <td class="style25">
                            </td>
                            <td class="style9">
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="lblCedulaJuridica" runat="server" Text="Cédula Jurídica"></asp:Label>
                            </td>
                            <td class="style23">
                                <asp:Label ID="lblContenidoCedulaJuridica" runat="server"></asp:Label>
                            </td>
                            <td class="style24">
                            </td>
                            <td class="style25">
                            </td>
                            <td class="style9">
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="lblDescripcion" runat="server" Text="Descripción"></asp:Label>
                            </td>
                            <td class="style23">
                                <asp:Label ID="lblContenidoDescripcion" runat="server"></asp:Label>
                            </td>
                            <td class="style24">
                            </td>
                            <td class="style25">
                            </td>
                            <td class="style9">
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="lblTelefono" runat="server" Text="Teléfono"></asp:Label>
                            </td>
                            <td class="style23">
                                <asp:Label ID="lblContenidoTelefono" runat="server"></asp:Label>
                            </td>
                            <td class="style24">
                            </td>
                            <td class="style25">
                            </td>
                            <td class="style9">
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="lblEmail" runat="server" Text="Correo electrónico"></asp:Label>
                            </td>
                            <td class="style23">
                                <asp:Label ID="lblContenidoEmail" runat="server"></asp:Label>
                            </td>
                            <td class="style24">
                            </td>
                            <td class="style25">
                            </td>
                            <td class="style9">
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="lblProvincia" runat="server" Text="Provincia"></asp:Label>
                            </td>
                            <td class="style23">
                                <asp:Label ID="lblContenidoProvincia" runat="server"></asp:Label>
                            </td>
                            <td class="style24">
                            </td>
                            <td class="style25">
                            </td>
                            <td class="style9">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="lblContenidoCanton" runat="server" Text="Cantón"></asp:Label>
                            </td>
                            <td class="style23">
                                <asp:Label ID="lblContenidoCant" runat="server"></asp:Label>
                            </td>
                            <td class="style24">
                            </td>
                            <td class="style25">
                            </td>
                            <td class="style9">
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="lblDistrito" runat="server" Text="Distrito"></asp:Label>
                            </td>
                            <td class="style23">
                                <asp:Label ID="lblContenidoDistrito" runat="server"></asp:Label>
                            </td>
                            <td class="style24">
                            </td>
                            <td class="style25">
                            </td>
                            <td class="style9">
                            </td>
                        </tr>
                        <tr>
                            <td class="style26">
                            </td>
                            <td class="style27">
                                &nbsp;</td>
                            <td class="style28">
                            </td>
                            <td class="style29">
                            </td>
                            <td class="style30">
                            </td>
                        </tr>
                        <tr>
                            <td class="style17">
                                &nbsp;</td>
                            <td class="style19">
                                &nbsp;</td>
                            <td class="style20">
                                &nbsp;</td>
                            <td class="style21">
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="btnEditar" runat="server" Text="Editar Perfil" Width="101px" 
                                    onclick="btnEditar_Click" CssClass="Boton" />
                                &nbsp;
                                <asp:Button ID="btnEliminar" runat="server" onclick="btnEliminar_Click" 
                                    Text="Eliminar Cuenta" CssClass="Boton" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="style12">
            </td>
        </tr>
        <tr>
            <td class="style12">
                </td>
            <td class="style13">
                </td>
            <td class="style14">
                </td>
            <td class="style15">
                </td>
            <td class="style13">
                </td>
            <td class="style14">
                </td>
            <td class="style12">
                </td>
        </tr>
    </table>
</asp:Content>
