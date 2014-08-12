<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraAdultoMayor.Master" AutoEventWireup="true" CodeBehind="frmEditarEstudiosAdultoMayor.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.AdultoMayor.frmEditarEstudiosAdultoMayor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

   <script id="clientEventHandlersJS" language="javascript" type="text/javascript">

       function confirmarBorradoEstudio() {
           if (confirm("¿Está seguro que desea eliminar esta fila de estudios?", "Confirmación de borrado") == true)
               return true;
           else
               return false;
       }
    </script>

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
            width: 15px;
            height: 25px;
        }
        .style14
        {
            width: 100%;
        }
        .style24
        {
            height: 25px;
        }
        .style25
        {
            width: 299px;
            height: 25px;
        }
        .style17
        {
            width: 25px;
            height: 25px;
        }
        .style20
        {
            width: 118px;
            height: 25px;
        }
        .style11
        {
            height: 25px;
            }
        .GridMantenimiento
        {}
        .style30
        {
            width: 40px;
            height: 25px;
        }
        .style32
        {
            width: 203px;
            height: 25px;
        }
        .style33
        {
            height: 25px;
        }
        .style34
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
                <asp:Label ID="lblEditarEstudios" runat="server" Text="Editar formación académica" 
                    CssClass="Titulo1"></asp:Label>
            </td>
            <td class="style7">
            </td>
            <td class="style5">
            </td>
            <td class="style6" align="right">
                            <asp:Button ID="btnSalir" runat="server" Text="Salir" CssClass="Boton" 
                                onclick="btnSalir_Click" />
            </td>
            <td class="style8">
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5" colspan="5">
                <asp:ValidationSummary ID="vsEstudios" runat="server" ForeColor="#CC0000" 
                    ValidationGroup="gvEstudios" />
            </td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5" colspan="5">
                <asp:Panel ID="PanelDatos" runat="server">
                    <table class="style14">
                        <tr>
                            <td class="style24" colspan="5">
                                <asp:Panel ID="PanelIngresoDatos" runat="server" BorderStyle="Solid" 
                                        BorderWidth="2px">
                                    <table class="style14">
                                        <tr>
                                            <td class="style34">
                                                <asp:Label ID="lblTitulo" runat="server" Text="Título Académico"></asp:Label>
                                            </td>
                                            <td class="style33">
                                                <asp:TextBox ID="txtTituloEstudio" runat="server" Width="402px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfvTituloEstudio" runat="server" 
                                                    ControlToValidate="txtTituloEstudio" 
                                                    ErrorMessage="El título es un dato requerido." ForeColor="Red" 
                                                    ValidationGroup="gvEstudios">*</asp:RequiredFieldValidator>
                                            </td>
                                            <td class="style30">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style34">
                                                <asp:Label ID="lblInstitucion" runat="server" 
                                                    Text="Institución en la que recibió el título"></asp:Label>
                                            </td>
                                            <td class="style33">
                                                <asp:TextBox ID="txtInstitucionEstudio" runat="server" Width="403px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfvInstitucionEstudio" runat="server" 
                                                    ControlToValidate="txtInstitucionEstudio" 
                                                    ErrorMessage="La institución es un dato requerido." ForeColor="Red" 
                                                    ValidationGroup="gvEstudios">*</asp:RequiredFieldValidator>
                                            </td>
                                            <td class="style30">
                                                &nbsp;</td>                                            
                                        </tr>
                                        <tr>
                                            <td class="style34" colspan="3">
                                                <asp:Panel ID="PanelBotonActualizar" runat="server" HorizontalAlign="Right" 
                                                    style="margin-left: 19px">
                                                    <asp:Button ID="btnCancelarAgregar" runat="server" CssClass="Boton" 
                                                        onclick="btnCancelarAgregar_Click" Text="Cancelar" />
                                                    &nbsp;&nbsp;<asp:Button ID="btnCancelarActualizar" runat="server" CssClass="Boton" 
                                                        onclick="btnCancelarActualizar_Click" Text="Cancelar" />
                                                    &nbsp;&nbsp;<asp:Button ID="btnAgregar" runat="server" CssClass="Boton" 
                                                        onclick="btnAgregar_Click" Text="Agregar" />
                                                    &nbsp;
                                                    <asp:Button ID="btnActualizar" runat="server" CssClass="Boton" 
                                                        onclick="btnActualizar_Click" Text="Actualizar" />
                                                </asp:Panel>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td class="style24">
                                &nbsp;</td>
                            <td class="style25">
                                &nbsp;</td>
                            <td class="style17">
                                &nbsp;</td>
                            <td class="style20">
                                &nbsp;</td>
                            <td class="style11">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style24" colspan="5">
                                <asp:Panel ID="PanelTablaDatosEstudios" runat="server" BorderStyle="None" 
                                        BorderWidth="2px" Height="250px" ScrollBars="Auto">
                                    <asp:DataGrid ID="dgEstudios" runat="server" AutoGenerateColumns="False" 
                                            BackColor="WhiteSmoke" BorderStyle="Solid" CssClass="GridMantenimiento" 
                                            Font-Names="Century Gothic" Font-Size="Small" ForeColor="Black" Height="19px" 
                                            Width="99%" onitemcommand="dgEstudios_ItemCommand" 
                                        onitemdatabound="dgEstudios_ItemDataBound">
                                        <AlternatingItemStyle BackColor="Gainsboro" />
                                        <HeaderStyle BackColor="Navy" Font-Bold="True" Font-Names="Century Gothic" 
                                                Font-Size="Larger" ForeColor="White" HorizontalAlign="Center" />
                                        <Columns>
                                            <asp:BoundColumn DataField="Id_Estudio" HeaderText="Id_Estudio" Visible="False">
                                            </asp:BoundColumn>
                                            <asp:BoundColumn HeaderText="Institución" DataField="Institucion">
                                            </asp:BoundColumn>
                                            <asp:BoundColumn HeaderText="Título" DataField="Titulo"></asp:BoundColumn>
                                            <asp:TemplateColumn HeaderText="Editar">
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="ibtnEditar" runat="server" CommandName="Editar" 
                                                        Height="30px" ImageUrl="~/Multimedia/icono-editar.jpg" 
                                                        Width="30px" style="display:block; margin:0 auto"/>
                                                </ItemTemplate>
                                            </asp:TemplateColumn>
                                            <asp:TemplateColumn HeaderText="Eliminar">
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="ibtnEliminar" runat="server" CommandName="Eliminar" 
                                                        Height="30px" style="display:block; margin:0 auto" ImageUrl="~/Multimedia/icono-eliminar.jpg" 
                                                        Width="30px" />
                                                </ItemTemplate>
                                            </asp:TemplateColumn>
                                        </Columns>
                                    </asp:DataGrid>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                        <td>&nbsp;</td></tr>
                        <tr>
                            <td class="style24">
                                &nbsp;</td>
                            <td class="style25">
                                &nbsp;</td>
                            <td class="style17">
                                &nbsp;</td>
                            <td class="style20">
                                &nbsp;</td>
                            <td class="style11">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>
