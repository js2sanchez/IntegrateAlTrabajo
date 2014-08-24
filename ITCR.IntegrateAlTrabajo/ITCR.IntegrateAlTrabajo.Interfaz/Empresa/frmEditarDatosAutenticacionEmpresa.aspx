<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraEmpresa.Master" AutoEventWireup="true" CodeBehind="frmEditarDatosAutenticacionEmpresa.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.Empresa.frmEditarDatosAutenticacionEmpresa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style3
        {
            width: 97%;
        }
        .style4
        {
            width: 15px;
        }
        .style5
        {
        }
        .style6
        {
            width: 250px;
        }
        .style7
        {
            width: 25px;
        }
        .style8
        {
            width:15px;
        }
        .style9
        {
            width: 100%;
        }
        .style18
        {
            height: 25px;
        }
        .style19
        {
            width: 24px;
            height: 25px;
        }
        .style20
        {
            width: 122px;
            height: 25px;
        }
        .style26
        {
            width: 541px;
            height: 25px;
        }
        .style27
        {
            height: 25px;
        }
        .style28
        {
            width: 492px;
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style3">
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5" colspan="5">
                <asp:Label ID="lblActualizarDatosAutenticacion" runat="server" 
                    CssClass="Titulo1" Text="Actualizar datos de autenticación"></asp:Label>
            </td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5" colspan="5">
                <asp:ValidationSummary ID="vsPaso2" runat="server"
                    ForeColor="#CC0000" ValidationGroup="gvDatosCuenta">
                </asp:ValidationSummary>
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
                <asp:Panel ID="PanelActualizarDatosAutenticacion" runat="server" 
                    BorderWidth="2px">
                    <table class="style9">
                        <tr>
                            <td class="style28">
                                &nbsp;</td>
                            <td class="style18" colspan="2">
                                <asp:Panel ID="PanelBotonAplicar" runat="server" HorizontalAlign="Right">
                                    <asp:Button ID="btnCancelarActualización" runat="server" CssClass="Boton" 
                                        onclick="btnCancelarActualización_Click" Text="Cancelar" TabIndex="6" />
                                    &nbsp;
                                    <asp:Button ID="btnAplicarCambios" runat="server" CssClass="Boton" 
                                        onclick="btnAplicarCambios_Click" Text="Aplicar cambios" TabIndex="5" />
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td class="style28">
                                &nbsp;</td>
                            <td class="style27">
                                    &nbsp;</td>
                            <td class="style5">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style28">
                                <asp:Label ID="lblNomUsuario" runat="server" 
                                    Text="Nombre de usuario (Letras,números o guiones(-,_) permitidos)"></asp:Label>
                            </td>
                            <td class="style27">
                                <asp:TextBox ID="txtNombreUsuario" runat="server" 
                                    Placeholder="Entre 5 a 50 caracteres" Width="250px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvNombreUsuario" runat="server" 
                                    ControlToValidate="txtNombreUsuario" 
                                    ErrorMessage="El nombre de usuario es un dato requerido, por lo que debe introducir un valor válido." ForeColor="Red" 
                                    ValidationGroup="gvDatosCuenta">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegEx_Usuario" runat="server" 
                                    ControlToValidate="txtNombreUsuario" 
                                    ErrorMessage="El nombre de usuario proporcionado tiene un formato inválido, asegúrese que únicamente contenga símbolos válidos." ForeColor="Red" 
                                    ValidationExpression="(([0-9A-Za-z]|-|_)*)" ValidationGroup="gvDatosCuenta">*</asp:RegularExpressionValidator>
                            </td>
                            <td class="style5">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style28">
                                <asp:Label ID="lblContraseñaAnterior" runat="server" Text="Contraseña actual"></asp:Label>
                            </td>
                            <td class="style27">
                                <asp:TextBox ID="txtAntiguaContraseña" runat="server" TextMode="Password" 
                                    Width="250px" TabIndex="1"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvAC" runat="server" 
                                    ControlToValidate="txtAntiguaContraseña" 
                                    ErrorMessage="La contraseña es un dato requerido, por lo que debe introducir un valor válido." ForeColor="Red" 
                                    ValidationGroup="gvDatosCuenta">*</asp:RequiredFieldValidator>
                            </td>
                            <td class="style5">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style28">
                                <asp:Label ID="lblNuevaContraseña" runat="server" 
                                    Text="Nueva contraseña (Letras y números permitidos)"></asp:Label>
                            </td>
                            <td class="style27">
                                    <asp:TextBox ID="txtNuevaContraseña" runat="server" TextMode="Password" 
                                        Width="250px" TabIndex="2"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="txtNuevaContraseña"
                                    ErrorMessage="La contraseña es un dato requerido, por lo que debe introducir un valor válido." ForeColor="Red" ValidationGroup="gvDatosCuenta">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegEx_Contrasenna" runat="server" ControlToValidate="txtNuevaContraseña"
                                    ErrorMessage="La contraseña proporcionada tiene un formato inválido, asegúrese que únicamente contenga símbolos válidos." ForeColor="Red" ValidationExpression="([0-9A-Za-z]*)"
                                    ValidationGroup="gvDatosCuenta">*</asp:RegularExpressionValidator>
                            </td>
                            <td class="style5">
                            </td>
                        </tr>
                        <tr>
                            <td class="style28">
                                <asp:Label ID="lblConfirmación" runat="server" 
                                    Text="Confirmación de nueva contraseña"></asp:Label>
                            </td>
                            <td class="style27">
                                     <asp:TextBox ID="txtConfirmacion" runat="server" TextMode="Password" 
                                        Width="250px" TabIndex="3"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvConfirmacion" runat="server" ControlToValidate="txtConfirmacion"
                                    ErrorMessage="Por favor, vuelva a escribir la contraseña." ForeColor="Red" ValidationGroup="gvDatosCuenta">*</asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="cvContrasena" runat="server" ControlToValidate="txtConfirmacion" 
                                    Operator="Equal" ControlToCompare="txtNuevaContraseña" ErrorMessage="El espacio para volver a escribir la contraseña no coincide con el de contraseña." ForeColor="Red" 
                                    ValidationGroup="gvDatosCuenta">*</asp:CompareValidator>
                            </td>
                            <td class="style5">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style28">
                                <asp:Label ID="lblIndicio" runat="server" 
                                    Text="Frase para recordar la contraseña"></asp:Label>
                            </td>
                            <td class="style27">
                                <asp:TextBox ID="txtIndicio" runat="server" Width="250px" TabIndex="4"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtIndicio" 
                                    ErrorMessage="La frase para recordar la contraseña es un dato requerido, por lo que debe introducir un valor válido." 
                                    ForeColor="Red" ValidationGroup="gvDatosCuenta">*</asp:RequiredFieldValidator>
                            </td>
                            <td class="style5">
                                &nbsp;</td>
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
