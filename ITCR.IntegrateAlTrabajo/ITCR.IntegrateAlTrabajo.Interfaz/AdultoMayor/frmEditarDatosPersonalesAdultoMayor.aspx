﻿<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraAdultoMayor.Master" AutoEventWireup="true" CodeBehind="frmEditarDatosPersonalesAdultoMayor.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.AdultoMayor.frmEditarDatosPersonalesAdultoMayor" %>
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
        .style9
        {
            width: 100%;
        }
        .style30
        {
            height: 25px;
        }
        .style32
        {
            width: 161px;
            height: 25px;
        }
        .style34
        {
            width: 212px;
            height: 25px;
        }
        .style35
        {
            height: 25px;
        }
        .style36
        {
            width: 151px;
            height: 25px;
        }
        .style37
        {
            width: 161px;
        }
        .style38
        {
            width: 212px;
        }
        .style39
        {
            width: 21px;
        }
        .style40
        {
            width: 151px;
        }
        .style41
        {
            width: 250px;
        }
        .style42
        {
            width: 161px;
            height: 38px;
        }
        .style43
        {
            width: 212px;
            height: 38px;
        }
        .style44
        {
            height: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style3">
        <tr>
            <td class="style4">
            </td>
            <td class="style30" colspan="2">
                <asp:Label ID="lblActualizarDatosPersonales" runat="server" 
                    Text="Actualizar datos personales" CssClass="Titulo1"></asp:Label>
            </td>
            <td class="style7">
            </td>
            <td class="style30">
            </td>
            <td class="style6">
            </td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style11" colspan="5">
                <asp:ValidationSummary ID="vsEdicionAdultoMayor" runat="server" 
                    ForeColor="#CC0000" ValidationGroup="gvDatosPersonales" />
                    </td>
            <td></td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5" colspan="5">
                <asp:Panel ID="PanelDatos" runat="server" BorderStyle="Solid" BorderWidth="2px">
                    <table class="style9">
                        <tr>
                            <td class="style42">
                            </td>
                            <td class="style43">
                            </td>
                            <td class="style44" colspan="3">
                                <asp:Panel ID="PanelBotonActualizar" runat="server" HorizontalAlign="Right" 
                                    Width="441px">
                                    <asp:Button ID="btnSalir" runat="server" CssClass="Boton" 
                                        onclick="btnSalir_Click" Text="Salir sin guardar" />
                                    &nbsp;
                                    <asp:Button ID="btnActualizar" runat="server" CssClass="Boton" 
                                        onclick="btnActualizar_Click" Text="Actualizar" />
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td class="style32">
                                <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
                            </td>
                            <td class="style34">
                                <asp:TextBox ID="txtNombre" runat="server" Enabled="False"></asp:TextBox>
                            </td>
                            <td class="style35">
                                &nbsp;</td>
                            <td class="style36">
                                <asp:Label ID="lblTelefonoCelular" runat="server" Text="Teléfono secundario"></asp:Label>
                            </td>
                            <td class="style6">
                                <asp:TextBox ID="txtTelefonoCelular" runat="server" MaxLength="8"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ControlToValidate="txtTelefonoCelular" 
                                    ErrorMessage="El número de teléfono secundario proporcionado tiene un formato inválido, asegúrese que la longitud numérica sea válida." 
                                    ForeColor="Red" ValidationExpression="([0-9]*)" 
                                    ValidationGroup="gvDatosPersonales">*</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style32">
                                <asp:Label ID="lblApellido1" runat="server" Text="Primer apellido"></asp:Label>
                            </td>
                            <td class="style34">
                                <asp:TextBox ID="txtApellido1" runat="server" Enabled="False"></asp:TextBox>
                            </td>
                            <td class="style35">
                                &nbsp;</td>
                            <td class="style36">
                                <asp:Label ID="lblCorreoElectronico" runat="server" Text="Correo electrónico"></asp:Label>
                            </td>
                            <td class="style6">
                                <asp:TextBox ID="txtCorreoElectronico" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCorreoElectronico"
                                    ErrorMessage="El correo electrónico es un dato requerido, por lo que debe introducir un valor válido." ForeColor="Red" ValidationGroup="gvDatosPersonales">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                        ControlToValidate="txtCorreoElectronico" 
                                        ErrorMessage="El correo electrónico proporcionado tiene un formato inválido, asegúrese que únicamente contenga símbolos válidos." ForeColor="Red" 
                                        ValidationExpression=".+@.+\..+" ValidationGroup="gvDatosPersonales">*</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style32">
                                <asp:Label ID="lblApellido2" runat="server" Text="Segundo apellido"></asp:Label>
                            </td>
                            <td class="style34">
                                <asp:TextBox ID="txtApellido2" runat="server" Enabled="False"></asp:TextBox>
                            </td>
                            <td class="style35">
                                &nbsp;</td>
                            <td class="style36">
                                <asp:Label ID="lblProvincia" runat="server" Text="Provincia"></asp:Label>
                            </td>
                            <td class="style6">
                                <asp:DropDownList ID="drpProvincia" runat="server" AutoPostBack="True" 
                                    ontextchanged="drpProvincia_TextChanged">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style32">
                                <asp:Label ID="lblSexo" runat="server" Text="Sexo"></asp:Label>
                            </td>
                            <td class="style34">
                                <asp:DropDownList ID="drpSexo" runat="server" Enabled="False">
                                </asp:DropDownList>
                            </td>
                            <td class="style35">
                                &nbsp;</td>
                            <td class="style36">
                                <asp:Label ID="lblCanton" runat="server" Text="Cantón"></asp:Label>
                            </td>
                            <td class="style6">
                                <asp:DropDownList ID="drpCanton" runat="server" AutoPostBack="True" 
                                    ontextchanged="drpCanton_TextChanged">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style32">
                                <asp:Label ID="lblCedula" runat="server" Text="Cédula"></asp:Label>
                            </td>
                            <td class="style34">
                                <asp:TextBox ID="txtCedula" runat="server" Enabled="False"></asp:TextBox>
                            </td>
                            <td class="style35">
                                &nbsp;</td>
                            <td class="style36">
                                <asp:Label ID="lblDistrito" runat="server" Text="Distrito"></asp:Label>
                            </td>
                            <td class="style6">
                                <asp:DropDownList ID="drpDistrito" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style32">
                                <asp:Label ID="lblFechaNacimiento" runat="server" Text="Fecha de nacimiento"></asp:Label>
                            </td>
                            <td class="style34">
                                <asp:TextBox ID="txtFechaNacimiento" runat="server" Enabled="False"></asp:TextBox>
                            </td>
                            <td class="style35">
                                &nbsp;</td>
                            <td class="style36">
                                &nbsp;</td>
                            <td class="style6">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style32">
                                <asp:Label ID="lblTelefonoHabitacion" runat="server" 
                                    Text="Teléfono principal"></asp:Label>
                            </td>
                            <td class="style34">
                                <asp:TextBox ID="txtTelefonoHabitacion" runat="server" MaxLength="8"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvTelefonoHabitacion" runat="server" ControlToValidate="txtTelefonoHabitacion"
                                    ErrorMessage="El número de teléfono principal proporcionado tiene un formato inválido, asegúrese que únicamente contenga números válidos." ForeColor="Red" ValidationGroup="gvDatosPersonales">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revTelefonoHabitacion" runat="server" 
                                    ControlToValidate="txtTelefonoHabitacion" 
                                    ErrorMessage="El número de teléfono principal proporcionado tiene un formato inválido, asegúrese que la longitud numérica sea válida." 
                                    ForeColor="Red" ValidationExpression="([0-9]*)" 
                                    ValidationGroup="gvDatosPersonales">*</asp:RegularExpressionValidator>
                            </td>
                            <td class="style35">
                                &nbsp;</td>
                            <td class="style36">
                                &nbsp;</td>
                            <td class="style6">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style37">
                                &nbsp;</td>
                            <td class="style38">
                                &nbsp;</td>
                            <td class="style39">
                            </td>
                            <td class="style40">
                            </td>
                            <td class="style41">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
            <td class="style30">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style30">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>
