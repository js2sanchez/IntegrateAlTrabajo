<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraEmpresa.Master" AutoEventWireup="true"
    CodeBehind="frmEditarDatosAutenticacionEmpresa.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.Empresa.frmEditarDatosAutenticacionEmpresa" %>

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
            width: 15px;
        }
        .style9
        {
            width: 100%;
        }
        .style27
        {
            height: 25px;
        }
        .style29
        {
            height: 25px;
        }
        .style30
        {
            height: 25px;
            width: 276px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style3">
        <tr>
            <td class="style4">
                &nbsp;
            </td>
            <td class="style5" colspan="5">
                <asp:Label ID="lblActualizarDatosAutenticacion" runat="server" CssClass="Titulo1"
                    Text="Actualizar datos de autenticación"></asp:Label>
            </td>
            <td class="style8">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;
            </td>
            <td class="style5" colspan="5">
                <asp:ValidationSummary ID="vsPaso2" runat="server" ForeColor="#CC0000" ValidationGroup="gvDatosCuenta">
                </asp:ValidationSummary>
            </td>
            <td class="style8">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;
            </td>
            <td class="style5">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style5">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style8">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;
            </td>
            <td class="style5" colspan="5">
                <asp:Panel ID="PanelActualizarDatosAutenticacion" runat="server" BorderWidth="2px">
                    <table class="style9">
                        <tr>
                            <td class="style29" colspan="3">
                                <asp:Panel ID="PanelBotonAplicar" runat="server" HorizontalAlign="Right">
                                    <asp:Button ID="btnCancelarActualización" runat="server" CssClass="Boton" 
                                        OnClick="btnCancelarActualización_Click" TabIndex="6" Text="Cancelar" />
                                    &nbsp;
                                    <asp:Button ID="btnAplicarCambios" runat="server" CssClass="Boton" 
                                        OnClick="btnAplicarCambios_Click" TabIndex="5" Text="Aplicar cambios" />
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td class="style30">
                                &nbsp;
                            </td>
                            <td class="style27">
                                &nbsp;
                            </td>
                            <td class="style5">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style30">
                                <asp:Label ID="lblNomUsuario" runat="server" Text="Nombre de usuario"></asp:Label>
                            </td>
                            <td class="style27">
                                <asp:TextBox ID="txtNombreUsuario" runat="server" ToolTip="Importante: Debe contener más de 5 caracteres. Únicamente se aceptan letras, números y guiones."
                                    onblur="this.placeholder = 'Escriba su nombre de usuario aquí'" onfocus="this.placeholder = ''"
                                    placeholder="Escriba su nombre de usuario aquí" Width="250px" MaxLength="30"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvNombreUsuario" runat="server" ControlToValidate="txtNombreUsuario"
                                    ErrorMessage="El nombre de usuario es un dato requerido, por lo que debe introducir un valor válido." ForeColor="Red" ValidationGroup="gvDatosCuenta">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegEx_Usuario" runat="server" ControlToValidate="txtNombreUsuario"
                                    ErrorMessage="El nombre de usuario proporcionado tiene un formato inválido, asegúrese que únicamente contenga símbolos válidos." ForeColor="Red"
                                    ValidationExpression="(([0-9A-Za-z]|-|_)*)" ValidationGroup="gvDatosCuenta">*</asp:RegularExpressionValidator>
                            </td>
                            <td class="style5">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style30">
                                <asp:Label ID="lblContraseñaAnterior" runat="server" Text="Contraseña actual"></asp:Label>
                            </td>
                            <td class="style27">
                                <asp:TextBox ID="txtAntiguaContraseña" runat="server" TextMode="Password" Width="250px"
                                    ToolTip="Importante: Debe contener más de 8 caracteres. Únicamente se aceptan letras y números."
                                    onblur="this.placeholder = 'Escriba su contraseña aquí'" onfocus="this.placeholder = ''"
                                    placeholder="Escriba su contraseña aquí" TabIndex="1" MaxLength="50"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvAC" runat="server" ControlToValidate="txtAntiguaContraseña"
                                    ErrorMessage="La contraseña es un dato requerido, por lo que debe introducir un valor válido." ForeColor="Red" ValidationGroup="gvDatosCuenta">*</asp:RequiredFieldValidator>
                            </td>
                            <td class="style5">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style30">
                                <asp:Label ID="lblNuevaContraseña" runat="server" Text="Nueva contraseña"></asp:Label>
                            </td>
                            <td class="style27">
                                <asp:TextBox ID="txtNuevaContraseña" runat="server" TextMode="Password" Width="250px"
                                    ToolTip="Importante: Debe contener más de 8 caracteres. Únicamente se aceptan letras y números."
                                    onblur="this.placeholder = 'Escriba su contraseña aquí'" onfocus="this.placeholder = ''"
                                    placeholder="Escriba su contraseña aquí" TabIndex="2" MaxLength="50"></asp:TextBox>
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
                            <td class="style30">
                                <asp:Label ID="lblConfirmación" runat="server" Text="Confirmación de nueva contraseña"></asp:Label>
                            </td>
                            <td class="style27">
                                <asp:TextBox ID="txtConfirmacion" runat="server" TextMode="Password" Width="250px"
                                    ToolTip="Debe escribir la contraseña de nuevo exactamente igual" TabIndex="3"
                                    MaxLength="50"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvConfirmacion" runat="server" ControlToValidate="txtConfirmacion"
                                    ErrorMessage="La confirmación de la contraseña es un dato requerido, por lo que debe introducir un valor válido." ForeColor="Red"
                                    ValidationGroup="gvDatosCuenta">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="cvContrasena" runat="server" ControlToValidate="txtConfirmacion"
                                    Operator="Equal" ControlToCompare="txtNuevaContraseña" ErrorMessage="La 'contraseña' y 'confirmación de contraseña' no coinciden."
                                    ForeColor="Red" ValidationGroup="gvDatosCuenta">*</asp:CompareValidator>
                            </td>
                            <td class="style5">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style30">
                                <asp:Label ID="lblIndicio" runat="server" Text="Frase para recordar la contraseña"></asp:Label>
                            </td>
                            <td class="style27">
                                <asp:TextBox ID="txtIndicio" runat="server" Width="250px" TabIndex="4" MaxLength="50"
                                    ToolTip="Importante: Si en algún momento olvida su contraseña, esta frase le permitirá recordarla."
                                    onblur="this.placeholder = 'Escriba su frase aquí'" onfocus="this.placeholder = ''"
                                    placeholder="Escriba su frase aquí"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtIndicio"
                                    ErrorMessage="La frase para recordar la contraseña es un dato requerido, por lo que debe introducir un valor válido." ForeColor="Red"
                                    ValidationGroup="gvDatosCuenta">*</asp:RequiredFieldValidator>
                            </td>
                            <td class="style5">
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="style8">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;
            </td>
            <td class="style5">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style5">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style8">
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
