<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraAdultoMayor.Master" AutoEventWireup="true" CodeBehind="frmDetalleServicio.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.AdultoMayor.frmDetalleServicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style3
        {
            width: 97%;
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
        .style11
        {
            height: 25px;
        }
        .style13
        {
            width: 15px;
            height: 15px;
        }
        .style14
        {
            width: 215px;
            height: 15px;
        }
        .style15
        {
            height: 15px;
        }
        .style17
        {
            width: 629px;
            height: 25px;
        }
        .style18
        {
            width: 14px;
            height: 25px;
        }
        .style19
        {
            width: 14px;
            height: 15px;
        }
        .style20
        {
            width: 629px;
            height: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style3">
        <tr>
            <td class="style4">
                </td>
            <td class="style5" colspan="3">
                <asp:Label ID="Titulo" runat="server" CssClass="Titulo1" 
                    Text="Servicio"></asp:Label>
            </td>
            <td class="style5" colspan="3">
                <asp:Panel ID="PanelServicio" runat="server" HorizontalAlign="Right">
                    <asp:Button ID="btnVolver" runat="server" Text="Volver" CssClass="Boton" 
                        onclick="btnVolver_Click" />
                </asp:Panel>
            </td>
            <td class="style4">
                </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7" colspan="2">
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
            <td class="style5" colspan="6">
                <asp:Panel ID="PanelDatosGenerales" runat="server" BorderStyle="Solid" 
                    BorderWidth="2px">
                    <table class="style8">
                        <tr>
                            <td class="style13">
                                </td>
                            <td class="style14">
                            </td>
                            <td class="style15">
                            </td>
                            <td class="style13">
                                </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                            <td class="style11">
                                <asp:Label ID="lblDetalle" runat="server" CssClass="Titulo2" 
                                    Text="Detalles del servicio"></asp:Label>
                            </td>
                            <td class="style11">
                                <asp:Panel ID="PanelBotonActualizar" runat="server" HorizontalAlign="Right">
                                    <asp:ImageButton ID="ibtnEditarServicio" runat="server" Height="50px" 
                                        ImageUrl="~/Multimedia/icono-editar.jpg" 
                                        tooltip="Presione este botón para actualizar los datos del servicio" 
                                        Width="50px" onclick="ibtnEditarServicio_Click" />
                                </asp:Panel>
                            </td>
                            <td class="style4">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style4">
                                </td>
                            <td class="style5">
                                <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
                            </td>
                            <td class="style5">
                                <asp:Label ID="lblNombreDato" runat="server"></asp:Label>
                            </td>
                            <td class="style4">
                                </td>
                        </tr>
                        <tr>
                            <td class="style4">
                            </td>
                            <td class="style11">
                                <asp:Label ID="lblDescripcion" runat="server" Text="Descripción"></asp:Label>
                            </td>
                            <td class="style5">
                                <asp:Label ID="lblDescripcionDato" runat="server"></asp:Label>
                            </td>
                            <td class="style4">
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                            <td class="style11">
                                <asp:Label ID="lblTipoServicio" runat="server" Text="Tipo de servicio"></asp:Label>
                            </td>
                            <td class="style5">
                                <asp:Label ID="lblTipoServicioDato" runat="server"></asp:Label>
                            </td>
                            <td class="style4">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                            <td class="style11">
                                <asp:Label ID="lblCategoriaServicio" runat="server" 
                                    Text="Categoría de servicio"></asp:Label>
                            </td>
                            <td class="style5">
                                <asp:Label ID="lblCategoriaServicioDato" runat="server"></asp:Label>
                            </td>
                            <td class="style4">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                            <td class="style11">
                                <asp:Label ID="lblDiasHoras" runat="server" Text="Días y horas"></asp:Label>
                            </td>
                            <td class="style5">
                                <asp:Label ID="lblDiasHorasDato" runat="server"></asp:Label>
                            </td>
                            <td class="style4">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style13">
                            </td>
                            <td class="style15">
                            </td>
                            <td class="style15">
                            </td>
                            <td class="style13">
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
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7" colspan="2">
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
            <td class="style5" colspan="6">
                <asp:Panel ID="PanelEliminarServicio" runat="server" BorderStyle="Solid" 
                    BorderWidth="2px">
                    <table class="style8">
                        <tr>
                            <td class="style19">
                                </td>
                            <td class="style20" colspan="2">
                                </td>
                            <td class="style19">
                                </td>
                        </tr>
                        <tr>
                            <td class="style18">
                            </td>
                            <td class="style17" colspan="2">
                                <asp:Label ID="lblEliminarServicio" runat="server" CssClass="Titulo2" 
                                    Text="Eliminar servicio"></asp:Label>
                            </td>
                            <td class="style18">
                            </td>
                        </tr>
                        <tr>
                            <td class="style18">
                                &nbsp;</td>
                            <td class="style17">
                                <asp:Label ID="lblMensajeBorrado" runat="server" 
                                    Text="Presione el siguiente botón si desea eliminar por completo este servicio en la bolsa de trabajo." 
                                    Width="800px"></asp:Label>
                            </td>
                            <td class="style17">
                                <asp:ImageButton ID="ibtnEliminarPerfilEmpresa1" runat="server" Height="50px" 
                                    ImageUrl="~/Multimedia/icono-eliminar.jpg" Width="50px" 
                                    ToolTip="Presione este botón para eliminar el servicio" />
                            </td>
                            <td class="style18">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style19">
                            </td>
                            <td class="style20" colspan="2">
                            </td>
                            <td class="style19">
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
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7" colspan="2">
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
