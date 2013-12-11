<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraAdultoMayor.Master" AutoEventWireup="true" CodeBehind="frmEditarEstudiosAdultoMayor.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.AdultoMayor.frmEditarEstudiosAdultoMayor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

   <script id="clientEventHandlersJS" language="javascript" type="text/javascript">

       function confirmarBorradoEstudio() {
           if (confirm("¿Está seguro que desea borrar este estudio? Los cambios son irreversibles.", "Confirmación de borrado") == true)
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
        .style26
        {
            width: 109px;
            height: 25px;
        }
        .style27
        {
            width: 298px;
            height: 25px;
        }
        .style28
        {
            width: 27px;
            height: 25px;
        }
        .style29
        {
            width: 117px;
            height: 25px;
        }
        .GridMantenimiento
        {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style3">
        <tr>
            <td class="style4">
            </td>
            <td class="style5" colspan="2">
                <asp:Label ID="lblEditarEstudios" runat="server" Text="Editar estudios" 
                    CssClass="Titulo1"></asp:Label>
            </td>
            <td class="style7">
            </td>
            <td class="style5">
            </td>
            <td class="style6">
            </td>
            <td class="style8">
            </td>
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
                <asp:Panel ID="PanelDatos" runat="server" BorderStyle="Solid" BorderWidth="2px">
                    <table class="style14">
                        <tr>
                            <td class="style24" colspan="5">
                                <asp:Panel ID="PanelIngresoDatos" runat="server" BorderStyle="Solid" 
                                        BorderWidth="2px">
                                    <table class="style14">
                                        <tr>
                                            <td class="style26">
                                                <asp:Label ID="lblAñoInicial1" runat="server" Text="Año inicial"></asp:Label>
                                            </td>
                                            <td class="style27">
                                                <asp:TextBox ID="txtAñoInicialEstudio" runat="server"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="revAñoInicialEstudio" runat="server" ControlToValidate="txtAñoInicialEstudio"
                                                    ErrorMessage="El año inicial introducido es inválido." ForeColor="Red" ValidationExpression="([0-9]{4})"
                                                    ValidationGroup="gvEstudios">*</asp:RegularExpressionValidator>
                                                <asp:RequiredFieldValidator ID="rfvAñoInicial" runat="server" ControlToValidate="txtAñoInicialEstudio"
                                                    ErrorMessage="El año inicial es un dato requerido." ForeColor="Red" 
                                                        ValidationGroup="gvEstudios">*</asp:RequiredFieldValidator>
                                            </td>
                                            <td class="style28">
                                            </td>
                                            <td class="style29">
                                                <asp:Label ID="lblAñoFinal1" runat="server" Text="Año final"></asp:Label>
                                            </td>
                                            <td class="style11">
                                                <asp:TextBox ID="txtAñoFinalEstudio" runat="server"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="revAñoFinalEstudio" runat="server" ControlToValidate="txtAñoFinalEstudio"
                                                    ErrorMessage="El año final introducido es inválido." ForeColor="Red" ValidationExpression="([0-9]{4})"
                                                    ValidationGroup="gvEstudios">*</asp:RegularExpressionValidator>
                                                <asp:RequiredFieldValidator ID="rfvAñoFinal" runat="server" ControlToValidate="txtAñoFinalEstudio"
                                                    ErrorMessage="El año final es un dato requerido." ForeColor="Red" 
                                                        ValidationGroup="gvEstudios">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style26">
                                                <asp:Label ID="lblInstitucion" runat="server" Text="Institución"></asp:Label>
                                            </td>
                                            <td class="style27">
                                                <asp:TextBox ID="txtInstitucionEstudio" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfvInstitucionEstudio" runat="server" ControlToValidate="txtInstitucionEstudio"
                                                    ErrorMessage="La institución es un dato requerido." ForeColor="Red" 
                                                        ValidationGroup="gvEstudios">*</asp:RequiredFieldValidator>
                                            </td>
                                            <td class="style28">
                                                &nbsp;</td>
                                            <td class="style29">
                                                <asp:Label ID="lblTitulo" runat="server" Text="Título"></asp:Label>
                                            </td>
                                            <td class="style11">
                                                <asp:TextBox ID="txtTituloEstudio" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfvTituloEstudio" runat="server" ControlToValidate="txtTituloEstudio"
                                                    ErrorMessage="El título es un dato requerido." ForeColor="Red" 
                                                        ValidationGroup="gvEstudios">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style26">
                                                &nbsp;</td>
                                            <td class="style27">
                                                &nbsp;</td>
                                            <td class="style28">
                                                &nbsp;</td>
                                            <td class="style29">
                                                &nbsp;</td>
                                            <td class="style11">
                                                <asp:Panel ID="PanelBotonActualizar" runat="server" HorizontalAlign="Right">
                                                    <asp:Button ID="btnAgregar" runat="server" onclick="btnAgregar_Click" 
                                                        Text="Agregar" CssClass="Boton" />
                                                    <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" 
                                                        onclick="btnActualizar_Click" CssClass="Boton" />
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
                                            <asp:BoundColumn HeaderText="Año inicial" DataField="AnnoInicial">
                                            </asp:BoundColumn>
                                            <asp:BoundColumn HeaderText="Año final" DataField="AnnoFinal"></asp:BoundColumn>
                                            <asp:BoundColumn HeaderText="Institución" DataField="Institucion">
                                            </asp:BoundColumn>
                                            <asp:BoundColumn HeaderText="Título" DataField="Titulo"></asp:BoundColumn>
                                            <asp:TemplateColumn>
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="ibtnEditar" runat="server" CommandName="Editar" 
                                                        Height="30px" ImageAlign="Right" ImageUrl="~/Multimedia/icono-editar.jpg" 
                                                        Width="30px" />
                                                </ItemTemplate>
                                            </asp:TemplateColumn>
                                            <asp:TemplateColumn>
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="ibtnEliminar" runat="server" CommandName="Eliminar" 
                                                        Height="30px" ImageAlign="Right" ImageUrl="~/Multimedia/icono-eliminar.jpg" 
                                                        Width="30px" />
                                                </ItemTemplate>
                                            </asp:TemplateColumn>
                                        </Columns>
                                    </asp:DataGrid>
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
