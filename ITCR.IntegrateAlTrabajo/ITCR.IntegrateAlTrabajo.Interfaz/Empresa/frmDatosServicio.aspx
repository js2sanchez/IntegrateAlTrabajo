<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraEmpresa.Master" AutoEventWireup="true" CodeBehind="frmDatosServicio.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.Empresa.frmDatosServicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style3
        {
            width: 97%;
        }
        .style5
        {
            width: 15px;
            height: 25px;
        }
        .style6
        {
            height: 25px;
        }
        .style7
        {
            width: 250px;
            height: 25px;
        }
        .style8
        {
            width: 20px;
            height: 25px;
        }
        .style9
        {
            width: 100%;
        }
        .style10
        {
            height: 25px;
        }
        .style14
        {
            height: 25px;
        }
        .style16
        {
            width: 23px;
            height: 25px;
        }
        .style18
        {
            height: 25px;
        }
        .style19
        {
            height: 25px;
        }
        .style20
        {
            width: 29px;
            height: 25px;
        }
        .style25
        {
            width: 100px;
            height: 25px;
        }
        .style30
        {
            width: 115px;
            height: 25px;
        }
        .style34
        {
            height: 22px;
            width: 408px;
        }
        .style35
        {
            width: 131px;
            height: 22px;
        }
        .style36
        {
            width: 31px;
            height: 22px;
        }
        .style37
        {
            height: 22px;
        }
        .style39
        {
            height: 25px;
            width: 410px;
        }
        .style40
        {
            width: 121px;
            height: 25px;
        }
        .style44
        {
            width: 298px;
            height: 25px;
        }
        .style46
        {
            width: 375px;
            height: 25px;
        }
        .style48
        {
            width: 203px;
            height: 25px;
        }
        .style50
        {
            width: 251px;
            height: 25px;
        }
        .style51
        {
            width: 19px;
            height: 25px;
        }
        .style53
        {
            width: 182px;
            height: 25px;
        }
        .style54
        {
            width: 195px;
            height: 25px;
        }
        .auto-style6 {
            width: 19px;
            height: 15px;
        }
        .auto-style7 {
            width: 182px;
            height: 15px;
        }
        .auto-style9 {
            height: 15px;
        }
        .auto-style10 {
            width: 203px;
            height: 15px;
        }
        .auto-style11 {
            width: 251px;
            height: 15px;
        }
        .auto-style12 {
            height: 15px;
            width: 408px;
        }
        .auto-style13 {
            width: 31px;
            height: 15px;
        }
        .auto-style14 {
            width: 131px;
            height: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style3">
        <tr>
            <td class="style5">
                </td>
            <td class="style6" colspan="2">
                <asp:Label ID="lblServicio" runat="server" Text="Servicio Ofrecido" CssClass="Titulo1"></asp:Label>
            </td>
            <td class="style8">
                </td>
            <td class="style25">
                </td>
            <td class="style7">
                </td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td class="style5">
                </td>
            <td class="style25">
                </td>
            <td class="style7">
                </td>
            <td class="style8">
                </td>
            <td class="style25">
                </td>
            <td class="style7">
                </td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td class="style5">
                </td>
            <td class="style6" colspan="5">
                <asp:Panel ID="PanelDatosServicio" runat="server" BorderStyle="Solid" 
                    BorderWidth="2px">
                    <table class="style9">
                        <tr>
                            <td class="auto-style9" colspan="2">
                            </td>
                            <td class="auto-style6">
                            </td>
                            <td class="auto-style7">
                            </td>
                            <td class="auto-style9">
                            </td>
                        </tr>
                        <tr>
                            <td class="style6" colspan="2">
                                <asp:Label ID="lblDatosServicio" runat="server" CssClass="Titulo2" Text="Información del servicio"></asp:Label>
                            </td>
                            <td class="style51"></td>
                            <td class="style53"></td>
                            <td class="style6"></td>
                        </tr>
                        <tr>
                            <td class="style48">
                                <asp:Label ID="lblNombre" runat="server" Text="Nombre del servicio"></asp:Label>
                            </td>
                            <td class="style50">
                                <asp:Label ID="lblNombreDato" runat="server"></asp:Label>
                            </td>
                            <td class="style51">
                                &nbsp;</td>
                            <td class="style53">
                                &nbsp;</td>
                            <td class="style6">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style48">
                                <asp:Label ID="lblDescripcion" runat="server" Text="Descripción"></asp:Label>
                            </td>
                            <td class="style50">
                                <asp:Label ID="lblDescripcionDato" runat="server"></asp:Label>
                            </td>
                            <td class="style51">
                                </td>
                            <td class="style53">
                                &nbsp;</td>
                            <td class="style6">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style48">
                                <asp:Label ID="lblTipo" runat="server" Text="Tipo de servicio"></asp:Label>
                            </td>
                            <td class="style50">
                                <asp:Label ID="lblTipoDato" runat="server"></asp:Label>
                            </td>
                            <td class="style51">&nbsp;</td>
                            <td class="style53">&nbsp;</td>
                            <td class="style6">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style48">
                                <asp:Label ID="lblCategoria" runat="server" Text="Categoría del servicio"></asp:Label>
                            </td>
                            <td class="style50">
                                <asp:Label ID="lblCategoriaDato" runat="server"></asp:Label>
                            </td>
                            <td class="style51">&nbsp;</td>
                            <td class="style53">&nbsp;</td>
                            <td class="style6">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style10"></td>
                            <td class="auto-style11"></td>
                            <td class="auto-style6"></td>
                            <td class="auto-style7"></td>
                            <td class="auto-style9"></td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td class="style5">
                </td>
            <td class="style25">
                </td>
            <td class="style7">
                </td>
            <td class="style8">
                </td>
            <td class="style25">
                </td>
            <td class="style7">
                </td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td class="style5">
                </td>
            <td class="style6" colspan="5">
                <asp:Panel ID="PanelDiasServicio" runat="server" BorderStyle="Solid" 
                    BorderWidth="2px" Height="200px" ScrollBars="Auto">
                    <table class="style9">
                        <tr>
                            <td class="auto-style12">
                            </td>
                            <td class="auto-style13">
                            </td>
                            <td class="auto-style14">
                            </td>
                            <td class="auto-style9">
                            </td>
                        </tr>
                        <tr>
                            <td class="style34">
                                <asp:Label ID="lblHorasDias" runat="server" CssClass="Titulo2" Text="Días y horas en los que se ofrece el servicio"></asp:Label>
                            </td>
                            <td class="style36"></td>
                            <td class="style35"></td>
                            <td class="style37">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style14" colspan="4">
                                <asp:DataGrid ID="dgDiasServicio" runat="server" AutoGenerateColumns="False" BackColor="WhiteSmoke" BorderStyle="Solid" CssClass="GridMantenimiento" Font-Names="Century Gothic" Font-Size="Small" ForeColor="Black" Height="19px" Width="99%">
                                    <AlternatingItemStyle BackColor="Gainsboro" />
                                    <HeaderStyle BackColor="Navy" Font-Bold="True" Font-Names="Century Gothic" Font-Size="Larger" ForeColor="White" HorizontalAlign="Center" />
                                    <Columns>
                                        <asp:BoundColumn DataField="Id_DiaServicio" HeaderText="Id_DiaServicio" Visible="False"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="Nom_Dia" HeaderText="Día"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="Can_Horas" HeaderText="Horas"></asp:BoundColumn>
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style25">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style25">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>
