<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraAdultoMayor.Master" AutoEventWireup="true" CodeBehind="frmEditarExperienciasLaboralesAdultoMayor.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.AdultoMayor.frmEditarExperienciasLaboralesAdultoMayor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

   <script id="clientEventHandlersJS" language="javascript" type="text/javascript">

       function confirmarBorradoExperienciaLaboral() {
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
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style3">
        <tr>
            <td class="style4">
            </td>
            <td class="style5" colspan="2">
                <asp:Label ID="lblActualizarExperienciasLaborales" runat="server" 
                    Text="Actualizar experiencias laborales" CssClass="Titulo1"></asp:Label>
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
                <asp:Panel ID="PanelDatosExperienciasLaborales" runat="server">
                    <table class="style14">
                        <tr>
                            <td class="style24" colspan="5">
                                <asp:Panel ID="PanelIngresoDatos0" runat="server" BorderStyle="Solid" 
                                        BorderWidth="2px">
                                    <table class="style14">
                                        <tr>
                                            <td class="style26">
                                                <asp:Label ID="lblAñoInicial2" runat="server" Text="Año inicial"></asp:Label>
                                            </td>
                                            <td class="style27">
                                                <asp:TextBox ID="txtAñoInicialExperienciaLaboral" runat="server"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="revAñoInicialExperienciaLaboral" 
                                                        runat="server" ControlToValidate="txtAñoInicialExperienciaLaboral"
                                                    ErrorMessage="El año inicial introducido es inválido." ForeColor="Red" ValidationExpression="([0-9]{4})"
                                                    ValidationGroup="gvExperienciasLaborales">*</asp:RegularExpressionValidator>
                                                <asp:RequiredFieldValidator ID="rfvAñoInicialExperienciaLaboral" runat="server" ControlToValidate="txtAñoInicialExperienciaLaboral"
                                                    ErrorMessage="El año inicial es un dato requerido." ForeColor="Red" 
                                                        ValidationGroup="gvExperienciasLaborales">*</asp:RequiredFieldValidator>
                                            </td>
                                            <td class="style28">
                                            </td>
                                            <td class="style29">
                                                <asp:Label ID="lblAñoFinal2" runat="server" Text="Año final"></asp:Label>
                                            </td>
                                            <td class="style11">
                                                <asp:TextBox ID="txtAñoFinalExperienciaLaboral" runat="server"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="revAñoFinalExperienciaLaboral" 
                                                        runat="server" ControlToValidate="txtAñoFinalExperienciaLaboral"
                                                    ErrorMessage="El año final introducido es inválido." ForeColor="Red" ValidationExpression="([0-9]{4})"
                                                    ValidationGroup="gvExperienciasLaborales">*</asp:RegularExpressionValidator>
                                                <asp:RequiredFieldValidator ID="rfvAñoFinalExperienciaLaboral" runat="server" ControlToValidate="txtAñoFinalExperienciaLaboral"
                                                    ErrorMessage="El año final es un dato requerido." ForeColor="Red" 
                                                        ValidationGroup="gvExperienciasLaborales">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style26">
                                                <asp:Label ID="lblEmpresa" runat="server" Text="Empresa"></asp:Label>
                                            </td>
                                            <td class="style27">
                                                <asp:TextBox ID="txtEmpresa" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfvEmpresa" runat="server" ControlToValidate="txtEmpresa"
                                                    ErrorMessage="La empresa es un dato requerido." ForeColor="Red" 
                                                        ValidationGroup="gvExperienciasLaborales">*</asp:RequiredFieldValidator>
                                            </td>
                                            <td class="style28">
                                                &nbsp;</td>
                                            <td class="style29">
                                                <asp:Label ID="lblPuesto" runat="server" Text="Puesto"></asp:Label>
                                            </td>
                                            <td class="style11">
                                                <asp:TextBox ID="txtPuesto" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfvPuesto" runat="server" ControlToValidate="txtPuesto"
                                                    ErrorMessage="El puesto es un dato requerido." ForeColor="Red" 
                                                        ValidationGroup="gvExperienciasLaborales">*</asp:RequiredFieldValidator>
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
                                                    <asp:Button ID="btnActualizar" runat="server" onclick="btnActualizar_Click" 
                                                        Text="Actualizar" CssClass="Boton" />
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
                                <asp:Panel ID="PanelTablaDatosExperienciasLaborales" runat="server" 
                                        BorderStyle="None" BorderWidth="2px" Height="250px" ScrollBars="Auto">
                                    <asp:DataGrid ID="dgExperienciasLaborales" runat="server" 
                                        AutoGenerateColumns="False" BackColor="WhiteSmoke" BorderStyle="Solid" 
                                        CssClass="GridMantenimiento" Font-Names="Century Gothic" Font-Size="Small" 
                                        ForeColor="Black" Height="19px" 
                                        onitemcommand="dgExperienciasLaborales_ItemCommand" 
                                        onitemdatabound="dgExperienciasLaborales_ItemDataBound" Width="99%">
                                        <AlternatingItemStyle BackColor="Gainsboro" />
                                        <HeaderStyle BackColor="Navy" Font-Bold="True" Font-Names="Century Gothic" 
                                            Font-Size="Larger" ForeColor="White" HorizontalAlign="Center" />
                                        <Columns>
                                            <asp:BoundColumn DataField="Id_ExperienciaLaboral" 
                                                HeaderText="Id_ExperienciaLaboral" Visible="False"></asp:BoundColumn>
                                            <asp:BoundColumn DataField="AnnoInicial" HeaderText="Año inicial">
                                            </asp:BoundColumn>
                                            <asp:BoundColumn DataField="AnnoFinal" HeaderText="Año final"></asp:BoundColumn>
                                            <asp:BoundColumn DataField="Empresa" HeaderText="Empresa"></asp:BoundColumn>
                                            <asp:BoundColumn DataField="Puesto" HeaderText="Puesto"></asp:BoundColumn>
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
