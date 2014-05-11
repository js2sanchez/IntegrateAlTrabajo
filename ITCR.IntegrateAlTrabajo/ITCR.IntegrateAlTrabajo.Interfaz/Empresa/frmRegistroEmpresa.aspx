<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmRegistroEmpresa.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.Empresa.frmRegistroEmpresa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .DisabledButton
        input[disabled="true"][type="button"]
        {
            color: Gray;
        }
        input[disabled="true"][type="submit"]
        {
            color: Gray;
        }
        .style3
        {
            width: 99%;
            height: 24px;
        }
        .style8
        {
            width: 15px;
            height: 25px;
        }
        .style9
        {
            height: 25px;
        }
        .style10
        {
            width: 250px;
            height: 25px;
        }
        .style11
        {
            width: 100%;
        }
        .style12
        {
            height: 25px;
        }
        .style14
        {
            height: 25px;
            width: 27px;
        }
        .style15
        {
            width: 100px;
            height: 25px;
        }
        .style16
        {
            width: 20px;
            height: 25px;
        }
        .style18
        {
            width: 294px;
            height: 25px;
        }
        .style19
        {
            height: 25px;
        }
        .style21
        {
            width: 118px;
            height: 25px;
        }
        .style22
        {
            height: 28px;
        }
        .style23
        {
            width: 293px;
            height: 25px;
        }
        .style25
        {
            width: 119px;
            height: 25px;
        }
        .auto-style3 {
            width: 387px;
            height: 45px;
        }
        .auto-style7 {
            height: 45px;
        }
        .auto-style10 {
            width: 387px;
            height: 25px;
        }
        .auto-style11 {
            height: 25px;
            width: 6px;
        }
        .auto-style12 {
            width: 53px;
            height: 25px;
        }
        .auto-style13 {
            width: 22px;
            height: 25px;
        }
        .auto-style14 {
            width: 10px;
            height: 25px;
        }
        .auto-style15 {
            width: 524px;
            height: 25px;
        }
        .auto-style16 {
            width: 343px;
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style3">
        <tr>
            <td class="style8">
            </td>
            <td class="style15">
            </td>
            <td class="style10">
            </td>
            <td class="style16">
            </td>
            <td class="style15">
            </td>
            <td class="style10">
            </td>
            <td class="style8">
            </td>
        </tr>
        <tr>
            <td class="style8">
            </td>
            <td class="style9" colspan="3">
                <asp:Label ID="lblRegistroEmpresa" runat="server" Text="Registro de Empresa" 
                    CssClass="Titulo1"></asp:Label>
            </td>
            <td class="style15">
            </td>
            <td class="style10">
            </td>
            <td class="style8">
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9" colspan="5">
                <asp:ValidationSummary ID="vsRegistroEmpresaPaso2" runat="server" 
                    ForeColor="#CC0000" ValidationGroup="gvDatosCuenta">
                </asp:ValidationSummary>
                <asp:ValidationSummary ID="vsRegistroEmpresaPaso1" runat="server" 
                    ForeColor="#CC0000" ValidationGroup="gvDatosGenerales">
                </asp:ValidationSummary>
            </td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9" colspan="5">
                <asp:MultiView ID="mvRegistroEmpresa" runat="server" 
                    onactiveviewchanged="mvRegistroEmpresa_ActiveViewChanged">
                    <asp:View ID="vPaso1" runat="server">
                        <table class="style11">
                            <tr>
                                <td class="style12">
                                    <asp:Label ID="lblPaso1" runat="server" Text="Paso 1 de 3" CssClass="Titulo2"></asp:Label>
                                </td>
                                <td class="auto-style16">
                                    &nbsp;</td>
                                <td class="style14">
                                </td>
                                <td class="style19">
                                </td>
                                <td class="style9">
                                </td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    <asp:Label ID="lblDatosBasicos" runat="server" Text="Datos Básicos" 
                                        CssClass="Titulo2"></asp:Label>
                                </td>
                                <td class="auto-style16">
                                    &nbsp;</td>
                                <td class="style14">
                                    &nbsp;</td>
                                <td class="style19">
                                    &nbsp;</td>
                                <td class="style9">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    <asp:Label ID="lblNombreEmpresa" runat="server" Text="Nombre"></asp:Label>
                                </td>
                                <td class="auto-style16">
                                    <asp:TextBox ID="txtNombreEmpresa" runat="server" Width="290px" ToolTip ="ICE" Placeholder="Escriba el nombre de la empresa aquí"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvNombreEmpresa" runat="server" ControlToValidate="txtNombreEmpresa"
                                    ErrorMessage="El nombre de la empresa es un dato requerido." ForeColor="Red" ValidationGroup="gvDatosGenerales">*</asp:RequiredFieldValidator>
                                </td>
                                <td class="style14">
                                    &nbsp;</td>
                                <td class="style19">
                                    &nbsp;</td>
                                <td class="style9">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    <asp:Label ID="blCedulaJuridica" runat="server" Text="Cédula Jurídica"></asp:Label>
                                </td>
                                <td class="auto-style16">
                                    <asp:TextBox ID="txtCedulaJuridica" runat="server" Width="290px" 
                                        ToolTip= "10005888" TextMode="Number" Placeholder="Escriba la cédula aquí (Sin guiones)"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvCedulaJuridica" runat="server" ControlToValidate="txtCedulaJuridica"
                                    ErrorMessage="La cédula jurídica es un dato requerido." ForeColor="Red" ValidationGroup="gvDatosGenerales">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegEx_Cedula" runat="server" ControlToValidate="txtCedulaJuridica" ValidationExpression="[0-9]*"
                                    ErrorMessage="La cédula jurídica contiene símbolos inválidos." ForeColor="Red" ValidationGroup="gvDatosGenerales">*</asp:RegularExpressionValidator>
                                </td>
                                <td class="style14">
                                    &nbsp;</td>
                                <td class="style19">
                                    &nbsp;</td>
                                <td class="style9">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    <asp:Label ID="lblDescripcion" runat="server" Text="Descripción"></asp:Label>
                                </td>
                                <td class="auto-style16">
                                    <asp:TextBox ID="txtDescripcion" runat="server" Height="61px" 
                                        TextMode="MultiLine" Width="290px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDescripcion"
                                    ErrorMessage="La descripción de la empresa es un dato requerido." ForeColor="Red" ValidationGroup="gvDatosGenerales">*</asp:RequiredFieldValidator>
                                </td>
                                <td class="style14">
                                    &nbsp;</td>
                                <td class="style19">
                                    &nbsp;</td>
                                <td class="style9">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    <asp:Label ID="lblTelefono" runat="server" Text="Teléfono"></asp:Label>
                                </td>
                                <td class="auto-style16">
                                    <asp:TextBox ID="txtTelefono" runat="server" Width="290px" TextMode="Phone" Placeholder="Escriba el teléfono aquí (Sin guiones)"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="txtTelefono"
                                    ErrorMessage="El teléfono de la empresa es un dato requerido." ForeColor="Red" ValidationGroup="gvDatosGenerales">*</asp:RequiredFieldValidator>
                                    <asp:CustomValidator ID="cvLen_Telefono" ControlToValidate="txtTelefono" ForeColor="Red" OnServerValidate="validarTelefonoServer"
                                    ErrorMessage="El largo del teléfono es inválido" ValidationGroup="gvDatosGenerales"
                                    runat="server">*</asp:CustomValidator>
                                    <asp:RegularExpressionValidator ID="revTelefono" runat="server" ControlToValidate="txtTelefono"
                                    ErrorMessage="El número de teléfono introducido es inválido." ForeColor="Red" ValidationExpression="([24][0-9]*)"
                                    ValidationGroup="gvDatosGenerales">*</asp:RegularExpressionValidator>
                                </td>
                                <td class="style14">
                                    &nbsp;</td>
                                <td class="style19">
                                    &nbsp;</td>
                                <td class="style9">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    <asp:Label ID="lblEmail" runat="server" Text="Correo Electrónico"></asp:Label>
                                </td>
                                <td class="auto-style16">
                                    <asp:TextBox ID="txtEmail" runat="server" Width="290px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                                    ErrorMessage="El correo electrónico de la empresa es un dato requerido." ForeColor="Red" ValidationGroup="gvDatosGenerales">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator runat="server" ControlToValidate="txtEmail" ValidationExpression=".+@.+\..+"
                                    ErrorMessage="Correo electrónico inválido." ForeColor="Red" ValidationGroup="gvDatosGenerales">*</asp:RegularExpressionValidator>
                                </td>
                                <td class="style14">
                                    &nbsp;</td>
                                <td class="style19">
                                    &nbsp;</td>
                                <td class="style9">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    <asp:Label ID="lblProvincia" runat="server" Text="Provincia"></asp:Label>
                                </td>
                                <td class="auto-style16">
                                    <asp:DropDownList ID="drpProvincia" runat="server" Width="250px" 
                                        onselectedindexchanged="drpProvincia_SelectedIndexChanged" 
                                        AutoPostBack="True">
                                    </asp:DropDownList>
                                </td>
                                <td class="style14">
                                    &nbsp;</td>
                                <td class="style19">
                                    &nbsp;</td>
                                <td class="style9">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    <asp:Label ID="lblCanton" runat="server" Text="Cantón"></asp:Label>
                                </td>
                                <td class="auto-style16">
                                    <asp:DropDownList ID="drpCanton" runat="server" Height="22px" Width="250px" 
                                        onselectedindexchanged="drpCanton_SelectedIndexChanged" 
                                        AutoPostBack="True">
                                    </asp:DropDownList>
                                </td>
                                <td class="style14">
                                    &nbsp;</td>
                                <td class="style19">
                                    &nbsp;</td>
                                <td class="style9">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    <asp:Label ID="lblDistrito" runat="server" Text="Distrito"></asp:Label>
                                </td>
                                <td class="auto-style16">
                                    <asp:DropDownList ID="drpDistrito" runat="server" Height="22px" Width="250px" 
                                        AutoPostBack="True">
                                    </asp:DropDownList>
                                </td>
                                <td class="style14">
                                    &nbsp;</td>
                                <td class="style19">
                                    &nbsp;</td>
                                <td class="style9">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style19" colspan="5">
                                    <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Right">
                                        &nbsp;
                                        <asp:Button ID="btnCancelarPaso1" runat="server" CssClass="Boton" 
                                            onclick="btnCancelarPaso1_Click" Text="Cancelar" UseSubmitBehavior="False" />
                                        &nbsp;
                                        <asp:Button ID="btnSiguientePaso1" runat="server" CssClass="Boton" 
                                            onclick="btnSiguientePaso1_Click" Text="Siguiente" UseSubmitBehavior="False" />
                                    </asp:Panel>
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="vPaso2" runat="server">
                        <table class="style11">
                            <tr>
                                <td class="auto-style15">
                                    <asp:Label ID="lblPaso2" runat="server" Text="Paso 2 de 3" CssClass="Titulo2"></asp:Label>
                                </td>
                                <td class="style18">
                                </td>
                                <td class="auto-style14">
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style15">
                                    <asp:Label ID="lblNombreUsuario" runat="server" Text="Nombre de usuario (Letras,números o guiones(-,_) permitidos)"></asp:Label>
                                </td>
                                <td class="style18">
                                    <asp:TextBox ID="txtNombreUsuario" runat="server" Width="250px" Placeholder="Entre 5 a 50 caracteres"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvNombreUsuario" runat="server" ControlToValidate="txtNombreUsuario"
                                    ErrorMessage="El nombre de usuario es un dato requerido." ForeColor="Red" ValidationGroup="gvDatosCuenta">*</asp:RequiredFieldValidator>
                                    <asp:CustomValidator ID="cvLen_Usuario" runat="server" ControlToValidate="txtNombreUsuario" OnServerValidate="validarUsuarioServer"
                                    ErrorMessage="El nombre de usuario debe contener entre 5 a 50 caracteres"  ValidationGroup="gvDatosCuenta"
                                    ForeColor="Red">*</asp:CustomValidator>
                                    <asp:RegularExpressionValidator ID="RegEx_Usuario" runat="server" ControlToValidate="txtNombreUsuario"
                                    ErrorMessage="Nombre de usuario inválido (Símbolos inválidos)." ForeColor="Red" ValidationExpression="(([0-9A-Za-z]|-|_)*)"
                                    ValidationGroup="gvDatosCuenta">*</asp:RegularExpressionValidator>
                                </td>
                                <td class="auto-style14">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style15">
                                    <asp:Label ID="lblContraseña" runat="server" Text="Contraseña (Letras y números permitidos)"></asp:Label>
                                </td>
                                <td class="style18">
                                    <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password" 
                                        Width="250px" Placeholder="Más de 8 caracteres"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="txtContraseña"
                                    ErrorMessage="La contraseña es un dato requerido." ForeColor="Red" ValidationGroup="gvDatosCuenta">*</asp:RequiredFieldValidator>
                                    <asp:CustomValidator ID="cvLen_Contrasenna" runat="server" OnServerValidate="validarContrasennaServer"
                                    ControlToValidate="txtContraseña" ErrorMessage="La contraseña debe tener al menos 8 caracteres" ForeColor="Red" 
                                    ValidationGroup="gvDatosCuenta">*</asp:CustomValidator>
                                    <asp:RegularExpressionValidator ID="RegEx_Contrasenna" runat="server" ControlToValidate="txtContraseña"
                                    ErrorMessage="Contraseña inválida (Símbolos inválidos)." ForeColor="Red" ValidationExpression="([0-9A-Za-z]*)"
                                    ValidationGroup="gvDatosCuenta">*</asp:RegularExpressionValidator>
                                </td>
                                <td class="auto-style14">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style15">
                                    <asp:Label ID="lblConfirmarContraseña" runat="server" 
                                        Text="Confirmar contraseña"></asp:Label>
                                </td>
                                <td class="style18">
                                    <asp:TextBox ID="txtConfirmarContraseña" runat="server" TextMode="Password" 
                                        Width="250px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvConfirmacion" runat="server" ControlToValidate="txtConfirmarContraseña"
                                    ErrorMessage="La confirmación de la contraseña es un dato requerido." ForeColor="Red" ValidationGroup="gvDatosCuenta">*</asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="cvContrasena" runat="server" ControlToValidate="txtConfirmarContraseña" 
                                    Operator="Equal" ControlToCompare="txtContraseña" ErrorMessage="El espacio no coincide con el de contraseña." ForeColor="Red" 
                                    ValidationGroup="gvDatosCuenta">*</asp:CompareValidator>
                                </td>
                                <td class="auto-style14">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style15">
                                    <asp:Label ID="lblIndicioContraseña" runat="server" 
                                        Text="Indicio de contraseña"></asp:Label>
                                </td>
                                <td class="style18">
                                    <asp:TextBox ID="txtIndicioContraseña" runat="server" Width="250px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvIndicioContraseña" runat="server" ControlToValidate="txtIndicioContraseña"
                                    ErrorMessage="El indicio de contraseña es un dato requerido." ForeColor="Red" ValidationGroup="gvDatosCuenta">*</asp:RequiredFieldValidator>
                                </td>
                                <td class="auto-style14">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24" colspan="5">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Panel ID="Panel2" runat="server" HorizontalAlign="Right">
                                        <asp:Button ID="btnAtras" runat="server" Text="Atrás" 
                                        CssClass="Boton" UseSubmitBehavior="False" OnClick="btnAtras_Click" />
                                        &nbsp;
                                        <asp:Button ID="btnCancelarPaso2" runat="server" Text="Cancelar" 
                                            onclick="btnCancelarPaso2_Click" CssClass="Boton" UseSubmitBehavior="False" />
                                        &nbsp;
                                        <asp:Button ID="btnSiguientePaso2" runat="server" 
                                            onclick="btnSiguientePaso2_Click" Text="Siguiente" CssClass="Boton" UseSubmitBehavior="False" />
                                    </asp:Panel>
                                    &nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;</td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="vPaso3" runat="server">
                        <table class="style11">
                            <tr>
                                <td class="style12" colspan="2">
                                    <asp:Label ID="lblPaso3" runat="server" Text="Paso 3 de 3" CssClass="Titulo2"></asp:Label>
                                </td>
                                <td class="auto-style11">
                                </td>
                                <td class="auto-style13">
                                    &nbsp;</td>
                                <td class="style9">
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style10">
                                    <asp:Label ID="lblTerminos" runat="server" CssClass="Titulo3" 
                                        Text="Términos y Condiciones"></asp:Label>
                                </td>
                                <td class="auto-style12">
                                    &nbsp;</td>
                                <td class="auto-style11">
                                    &nbsp;</td>
                                <td class="auto-style13">
                                    &nbsp;</td>
                                <td class="style9">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style22" colspan="5">
                                    <asp:Panel ID="PanelTerminosCondiciones" runat="server" BorderStyle="Solid" 
                                        BorderWidth="2px" Height="170px">
                                        <asp:Label ID="lblPanelTerminos" runat="server" Text="Términos y Condiciones"></asp:Label>
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                    </asp:Panel>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3" colspan="5">
                                        <asp:CheckBox ID="chkAceptarTerminos" runat="server" 
                                            Text="Acepto los términos y condiciones anteriores(Necesario para finalizar)" 
                                            oncheckedchanged="chkAceptarTerminos_CheckedChanged" AutoPostBack="True" />
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7" colspan="5">
                                    <asp:Panel ID="Panel6" runat="server" HorizontalAlign="Right">
                                        <asp:Button ID="btnAtras1" runat="server" Text="Atrás" 
                                        CssClass="Boton" UseSubmitBehavior="False" OnClick="btnAtras1_Click" />
                                    &nbsp;
                                    <asp:Button ID="btnCancelarPaso3" runat="server" Text="Cancelar" 
                                        onclick="btnCancelarPaso3_Click" CssClass="Boton" UseSubmitBehavior="False" />
                                    &nbsp;
                                    <asp:Button ID="btnFinalizar" runat="server" CssClass="Boton"
                                            onClick="btnFinalizar_Click" Text="Finalizar" disabled="true"/>
                                        </asp:Panel>
                                    &nbsp;
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                </asp:MultiView>
            </td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
