<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraEmpresa.Master" AutoEventWireup="true"
    CodeBehind="frmPublicarOfertaTrabajo.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.AdultoMayor.frmPublicarOfertaTrabajo" %>

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
            <td class="style5" colspan="2">
                <asp:Label ID="lblPublicarOfertaTrabajo" runat="server" CssClass="Titulo1" Text="Publicar oferta de trabajo"></asp:Label>
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
                &nbsp;
            </td>
            <td class="style13" colspan="5">
                <asp:ValidationSummary ID="vsOfertaTrabajo" runat="server" ForeColor="#CC0000" ValidationGroup="gvOfertaTrabajo" />
            </td>
            <td class="style4">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;
            </td>
            <td class="style13">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style13">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style4">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;
            </td>
            <td class="style5" colspan="5">
                <asp:Panel ID="PanelDatos" runat="server" BorderStyle="Solid" BorderWidth="2px">
                    <table class="style8">
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
                                <asp:TextBox ID="txtNombrePuesto" runat="server" Width="99%"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvNombrePuesto" runat="server" ControlToValidate="txtNombrePuesto"
                                    ErrorMessage="El nombre del puesto es un dato requerido." ForeColor="Red" ValidationGroup="gvOfertaTrabajo">*</asp:RequiredFieldValidator>
                            </td>
                            <td class="style11">
                            </td>
                        </tr>
                        <tr>
                            <td class="style16">
                                <asp:Label ID="lblDescripcion" runat="server" Text="Descripción"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtDescripcion" runat="server" Height="100px" TextMode="MultiLine"
                                    Width="99%"></asp:TextBox>
                            </td>
                            <td class="style11">
                            </td>
                        </tr>
                        <tr>
                            <td class="style16">
                                <asp:Label ID="lblTipo" runat="server" Text="Tipo"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="drpTipo" runat="server" Width="250px">
                                </asp:DropDownList>
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
                                <asp:DropDownList ID="drpCategoria" runat="server" Width="250px">
                                </asp:DropDownList>
                            </td>
                            <td class="style11">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style16">
                                <asp:Label ID="lblRequisitos" runat="server" Text="Requisito"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtRequisitos" runat="server" Width="99%"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvRequisitos" runat="server" ControlToValidate="txtRequisitos"
                                    ErrorMessage="Los requisitos son datos requeridos." ForeColor="Red" ValidationGroup="gvOfertaTrabajo">*</asp:RequiredFieldValidator>
                            </td>
                            <td align="right">
                                <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Right">
                                    <asp:Button ID="btnAgregarRequisito" runat="server" CssClass="Boton" 
                                        Text="Agregar" onclick="btnAgregarRequisito_Click" />
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td class="style16">
                                &nbsp;
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
                                            <asp:TemplateColumn>
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="ibtnEliminar" runat="server" CommandName="Eliminar" Height="30px"
                                                        ImageAlign="Right" ImageUrl="~/Multimedia/icono-eliminar.jpg" Width="30px" />
                                                </ItemTemplate>
                                            </asp:TemplateColumn>
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
                                <asp:TextBox ID="txtObservaciones" runat="server" Height="100px" TextMode="MultiLine"
                                    Width="99%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style5" colspan="3" align="right">
                                <asp:Panel ID="PanelBotones" runat="server" HorizontalAlign="Right">
                                    <asp:Button ID="btnAgregar" runat="server" CssClass="Boton" OnClick="btnAgregar_Click"
                                        Text="Crear oferta de trabajo" />
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;
            </td>
            <td class="style13">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style13">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style4">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;
            </td>
            <td class="style13" colspan="5">
            </td>
            <td class="style4">
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
