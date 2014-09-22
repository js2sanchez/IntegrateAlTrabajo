<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraEmpresa.Master" AutoEventWireup="true"
    CodeBehind="frmDetallesOferta.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.Empresa.frmDetallesOferta" %>

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
        .style11
        {
            width: 25px;
            height: 25px;
        }
        .style13
        {
            height: 25px;
        }
        .style15
        {
            width: 321px;
            height: 25px;
        }
        .style16
        {
            height: 25px;
            width: 164px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style3">
        <tr>
            <td class="style4">
            </td>
            <td class="style4">
            </td>
            <td class="style5" colspan="2">
                <asp:Label ID="lblDetallesOfertaTrabajo" runat="server" CssClass="Titulo1" Text="Detalles de oferta de trabajo"></asp:Label>
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
            </td>
            <td class="style4">
            </td>
            <td class="style8" colspan="5">
                <asp:Panel ID="pnlPerfil" runat="server" BorderStyle="Solid" BorderWidth="2px">
                    <table class="style8">
                        <tr>
                            <td class="style31" colspan="2">
                                <asp:Label ID="lblDatosGenerales" runat="server" CssClass="Titulo2" Text="Datos de la oferta de trabajo"></asp:Label>
                            </td>
                            <td class="style25" colspan="2">
                                <asp:Panel ID="PanelEditarDatosPersonales" runat="server" HorizontalAlign="Right">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:ImageButton ID="ibtnEditarPerfilEmpresa" runat="server" Height="50px" ImageUrl="~/Multimedia/icono-editar.jpg"
                                        OnClick="ibtnEditarPerfilEmpresa_Click" Width="50px" />
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td class="style16">
                                &nbsp;
                            </td>
                            <td class="style15">
                                &nbsp;
                            </td>
                            <td class="style11">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style16">
                                <asp:Label ID="lblNombrePuesto" runat="server" Text="Nombre del puesto"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblNombrePuestoDato" runat="server" Width="99%"></asp:Label>
                            </td>
                            <td class="style11">
                            </td>
                        </tr>
                        <tr>
                            <td class="style16">
                                <asp:Label ID="lblDescripcion" runat="server" Text="Descripción"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblDescripcionDato" runat="server" Height="100px" TextMode="MultiLine"
                                    Width="99%"></asp:Label>
                            </td>
                            <td class="style11">
                            </td>
                        </tr>
                        <tr>
                            <td class="style16">
                                <asp:Label ID="lblTipo" runat="server" Text="Tipo"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:Label ID="lblTipoDato" runat="server" Width="250px">
                                </asp:Label>
                            </td>
                            <td class="style11">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style16">
                                <asp:Label ID="lblCategoria" runat="server" Text="Categoría"></asp:Label>
                            </td>
                            <td class="style5">
                                <asp:Label ID="lblCategoriaDato" runat="server" Width="250px">
                                </asp:Label>
                            </td>
                            <td class="style11">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style16">
                                <asp:Label ID="lblRequisitos" runat="server" Text="Requisitos"></asp:Label>
                            </td>
                            <td colspan="2">
                                <asp:Panel ID="PanelTablaDatos" runat="server">
                                    <asp:DataGrid ID="dgRequisitos" runat="server" AutoGenerateColumns="False" BackColor="WhiteSmoke"
                                        BorderStyle="Solid" CssClass="GridMantenimiento" Font-Names="Verdana" Font-Size="Smaller"
                                        ForeColor="Black" Height="19px" Width="99%">
                                        <AlternatingItemStyle BackColor="Gainsboro" />
                                        <HeaderStyle BackColor="Navy" Font-Bold="True" Font-Names="Verdana" Font-Size="Larger"
                                            ForeColor="White" HorizontalAlign="Center" />
                                        <Columns>
                                            <asp:BoundColumn DataField="Id_Requisito" HeaderText="Id_Requisito" Visible="False">
                                            </asp:BoundColumn>
                                            <asp:BoundColumn HeaderText="Requisito" DataField="Req_Oferta"></asp:BoundColumn>
                                        </Columns>
                                    </asp:DataGrid>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td class="style16">
                                <asp:Label ID="lblObservaciones" runat="server" Text="Observaciones adicionales"></asp:Label>
                            </td>
                            <td colspan="2">
                                <asp:Label ID="lblObservacionesDato" runat="server" Height="100px" TextMode="MultiLine"
                                    Width="99%"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td colspan="8">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="8">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style4">
            </td>
            <td class="style4">
            </td>
            <td class="style8" colspan="5">
                <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" BorderWidth="2px">
                    <table class="style8">
                        <tr>
                            <td class="style31" colspan="4">
                                <asp:Label ID="Label1" runat="server" CssClass="Titulo2" Text="Eliminar oferta de trabajo"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style31" colspan="3">
                                <asp:Label ID="Label2" runat="server" Text="Presione el siguiente botón si desea eliminar la oferta de trabajo por completo de la bolsa de trabajo."></asp:Label>
                            </td>
                            <td>
                                <asp:Panel ID="Panel2" runat="server" HorizontalAlign="Right">
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" ImageUrl="~/Multimedia/icono-eliminar.jpg"
                                        OnClick="ibtnEditarPerfilEmpresa_Click" Width="50px" />
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td colspan="8">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="8">
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
