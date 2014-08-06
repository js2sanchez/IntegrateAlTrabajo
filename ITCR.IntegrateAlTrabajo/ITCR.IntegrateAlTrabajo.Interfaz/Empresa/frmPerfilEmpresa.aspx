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
            height: 25px;
        }
        .style26
        {
            width: 210px;
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
        .style31
        {
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style3">
        <tr>
            <td class="style12">
                </td>
            <td class="style13" colspan="2">
                <asp:Label ID="lblPerfil" runat="server" Text="Mi perfil" CssClass="Titulo1"></asp:Label>
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
                &nbsp;</td>
            <td class="style9" colspan="5">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
            </td>
            <td class="style9" colspan="5">
                <asp:Panel ID="pnlPerfil" runat="server" 
                    BorderStyle="Solid" BorderWidth="2px">
                    <table class="style16">
                        <tr>
                            <td class="style31" colspan="2">
                                <asp:Label ID="lblDatosGenerales" runat="server" CssClass="Titulo2" 
                                    Text="Datos generales"></asp:Label>
                            </td>
                            <td class="style24">
                                &nbsp;</td>
                            <td class="style25" colspan="2">
                                <asp:Panel ID="PanelEditarDatosPersonales" runat="server" 
                                    HorizontalAlign="Right">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:ImageButton ID="ibtnEditarPerfilEmpresa" runat="server" Height="50px" 
                                        ImageUrl="~/Multimedia/icono-editar.jpg" 
                                        onclick="ibtnEditarPerfilEmpresa_Click" Width="50px" />
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td class="style31">
                                <asp:Label ID="lblNombreEmpresa" runat="server" Text="Nombre"></asp:Label>
                            </td>
                            <td class="style23">
                                <asp:Label ID="lblContenidoNombreEmpresa" runat="server"></asp:Label>
                            </td>
                            <td class="style24">
                            </td>
                            <td class="style9" colspan="2">
                            </td>
                        </tr>
                        <tr>
                            <td class="style31">
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
                            <td class="style31">
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
                            <td class="style31">
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
                            <td class="style31">
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
                            <td class="style31">
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
                            <td class="style31">
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
                            <td class="style31">
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
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style13" colspan="5">
                <asp:Panel ID="PanelDatosAutenticacion" runat="server" 
                    BorderStyle="Solid" BorderWidth="2px">
                    <table class="style16">
                        <tr>
                            <td class="style31" colspan="2">
                                <asp:Label ID="lblDatosAutenticacion" runat="server" CssClass="Titulo2" 
                                    Text="Datos de autenticación"></asp:Label>
                            </td>
                            <td class="style24">
                                &nbsp;</td>
                            <td class="style25" colspan="2">
                                <asp:Panel ID="PanelEditarDatosAutenticacion" runat="server" 
                                    HorizontalAlign="Right">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:ImageButton ID="ibtnEditarDatosAutenticacion" runat="server" Height="50px" 
                                        ImageUrl="~/Multimedia/icono-editar.jpg" 
                                        onclick="ibtnEditarDatosAutenticacion_Click" Width="50px" />
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td class="style31">
                                <asp:Label ID="lblNombreUsuario" runat="server" Text="Nombre de usuario"></asp:Label>
                            </td>
                            <td class="style23">
                                <asp:Label ID="lblContenidoNombreUsuario" runat="server"></asp:Label>
                            </td>
                            <td class="style24">
                            </td>
                            <td class="style9" colspan="2">
                            </td>
                        </tr>
                        <tr>
                            <td class="style31">
                                <asp:Label ID="lblContraseña" runat="server" Text="Contraseña"></asp:Label>
                            </td>
                            <td class="style23">
                                <asp:Label ID="lblContenidoContraseña" runat="server">XXXXXXXXXX</asp:Label>
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
                    </table>
                </asp:Panel>
                </td>
            <td class="style12">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style13" colspan="5">
                <asp:Panel ID="PanelEliminarPerfilEmpresa" runat="server" BorderWidth="2px">
                    <table class="style16">
                        <tr>
                            <td>
                                <asp:Label ID="lblEliminarPerfilTitulo" runat="server" CssClass="Titulo2" 
                                    Text="Eliminar perfil"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblEliminarPerfil" runat="server" 
                                    Text="Presione el siguiente botón si desea eliminar por completo el perfil de esta empresa en la bolsa de trabajo."></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:ImageButton ID="ibtnEliminarPerfilEmpresa1" runat="server" Height="50px" 
                                    ImageUrl="~/Multimedia/icono-eliminar.jpg" 
                                    onclick="ibtnEliminarPerfilEmpresa_Click" Width="50px" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
                </td>
            <td class="style12">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
