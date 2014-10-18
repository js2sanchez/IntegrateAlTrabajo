<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="frmRegistroEmpresa.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.Empresa.frmRegistroEmpresa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link rel="stylesheet" href="../Styles/bootstrap.min.css" /> 
    <style type="text/css">
        body   
        {
            background: #b6b7bc;
            font-family: Century Gothic;
            margin: 0px;
            padding: 0px;
            color: #696969;
        }
        table
        {
            font-family:Century Gothic;
            font-size:15px;
            text-align:justify;
            border-spacing: 8px;
            border-collapse: separate;
        }
        label
        {
            font-weight:normal;
        }
        input
        {
            font-weight:normal;
        }
        p
        {
            margin-bottom: 10px;
            line-height: 1.6em;
        }
        .DisabledButton input[disabled="true"][type="button"]
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
        .style22
        {
            height: 28px;
        }
        .auto-style3
        {
            width: 387px;
            height: 45px;
        }
        .auto-style7
        {
            height: 45px;
        }
        .auto-style10
        {
            height: 25px;
        }
        .auto-style11
        {
            height: 25px;
            width: 6px;
        }
        .auto-style12
        {
            width: 53px;
            height: 25px;
        }
        .auto-style13
        {
            width: 22px;
            height: 25px;
        }
        .auto-style14
        {
            width: 10px;
            height: 25px;
        }
        .auto-style15
        {
            height: 25px;
        }
        .auto-style16
        {
            height: 25px;
        }
        .style28
        {
            width: 631px;
            height: 25px;
        }
        .style30
        {
            height: 25px;
        }
        .style31
        {
            height: 25px;
        }
        .style34
        {
            width: 257px;
            height: 25px;
        }
        .style36
        {
            height: 25px;
        }
        .style37
        {
            width: 182px;
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManagerMain" runat="server" EnablePageMethods="true"
        ScriptMode="Release" LoadScriptsBeforeUI="true">
    </asp:ScriptManager>
    <script type="text/javascript" src="../js/jquery.js"></script>
    <script type="text/javascript" src="../js/jquery.maskedinput.min.js"></script>
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../js/bootbox.js"></script>    
    <script type="text/javascript">
        function custom_alert(msg) {
            bootbox.dialog({
                closeButton: false,
                message: msg,
                buttons: {
                    success: {
                        label: "Aceptar",
                        className: "btn-primary"
                    }
                }
            });
        }

        function finalizar() {
            bootbox.dialog({
                closeButton: false,
                message: "¡Felicidades por ser parte del cambio y estar dispuesta a adquirir talento humano de alta calidad! En este momento su cuenta de usuario quedará inactiva, pero una vez que se haya verificado que sus datos son correctos, esta se activirá para que usted pueda publicar valiosas ofertas de trabajo.",
                title: "Ha completado el registro satisfactoriamente",
                buttons: {
                    success: {
                        label: "Volver a la página de autenticación",
                        className: "btn-primary",
                        callback: function () {
                            location.href = "/home.aspx";
                        }
                    }
                }
            });
        }

        function aceptarTerminos() {
            custom_alert("Usted debe aceptar los términos y condiciones para poder finalizar el registro. Si no desea aceptarlos, presione el botón 'Salir sin guardar'.");
        }

        function endConfirmation() {
            bootbox.dialog({
                closeButton: false,
                title: false,
                message: "¿Está seguro que desea salir sin guardar?",
                buttons: {
                    success: {
                        label: "Sí, estoy seguro",
                        className: "btn-primary",
                        callback: function () {
                            location.href = "/home.aspx";
                        }
                    },
                    main: {
                        label: "No, deseo continuar en el formulario",
                        className: "btn-primary"
                    }
                }
            });
        }
    </script>
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
                <asp:Label ID="lblRegistroEmpresa" runat="server" Text="Registro de Empresa" CssClass="Titulo1"></asp:Label>
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
                &nbsp;
            </td>
            <td class="style9" colspan="5">
                <asp:ValidationSummary ID="vsRegistroEmpresaPaso2" runat="server" ForeColor="#CC0000"
                    ValidationGroup="gvDatosCuenta"></asp:ValidationSummary>
                <asp:ValidationSummary ID="vsRegistroEmpresaPaso1" runat="server" ForeColor="#CC0000"
                    ValidationGroup="gvDatosGenerales"></asp:ValidationSummary>
            </td>
            <td class="style8">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;
            </td>
            <td class="style9" colspan="5">
                <asp:MultiView ID="mvRegistroEmpresa" runat="server" OnActiveViewChanged="mvRegistroEmpresa_ActiveViewChanged">
                    <asp:View ID="vPaso1" runat="server">
                        <table class="style11">
                            <tr>
                                <td class="style37">
                                    <asp:Label ID="lblPaso1" runat="server" Text="Paso 1 de 3" CssClass="Titulo2"></asp:Label>
                                </td>
                                <td class="auto-style15">
                                </td>
                            </tr>
                            <tr>
                                <td class="style37">
                                    <asp:Label ID="lblDatosBasicos" runat="server" Text="Datos Básicos" CssClass="Titulo3"></asp:Label>
                                </td>
                                <td class="style28">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="style37">
                                    &nbsp;
                                </td>
                                <td class="style28">
                                    <asp:Panel ID="Panel7" runat="server" HorizontalAlign="Right">
                                        &nbsp;
                                        <asp:Button ID="btnCancelarPaso4" runat="server" CssClass="Boton" OnClick="btnCancelarPaso1_Click"
                                            TabIndex="9" Text="Salir sin guardar" UseSubmitBehavior="False" />
                                        &nbsp;
                                        <asp:Button ID="btnSiguientePaso3" runat="server" CssClass="Boton" OnClick="btnSiguientePaso1_Click"
                                            TabIndex="8" Text="Siguiente" UseSubmitBehavior="False" />
                                    </asp:Panel>
                                </td>
                            </tr>
                            <tr>
                                <td class="style37">
                                    <asp:Label ID="lblNombreEmpresa" runat="server" Text="Nombre"></asp:Label>
                                </td>
                                <td class="style28">
                                    <asp:TextBox ID="txtNombreEmpresa" runat="server" onblur="this.placeholder = 'Escriba el nombre de la empresa aquí'"
                                        onfocus="this.placeholder = ''" placeholder="Escriba el nombre de la empresa aquí"
                                        ToolTip="Ejemplo: Intel" Width="290px" MaxLength="60"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvNombreEmpresa" runat="server" ControlToValidate="txtNombreEmpresa"
                                        ErrorMessage="El nombre de la empresa es un dato requerido." ForeColor="Red"
                                        ValidationGroup="gvDatosGenerales">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style37">
                                    <asp:Label ID="blCedulaJuridica" runat="server" Text="Cédula jurídica"></asp:Label>
                                </td>
                                <td class="style28">
                                    <asp:TextBox ID="txtCedulaJuridica" runat="server" Width="290px" onblur="this.placeholder = 'Escriba la cédula jurídica aquí'"
                                        onfocus="this.placeholder = ''" placeholder="Escriba la cédula jurídica aquí."
                                        ToolTip="Ejemplo: 3101103894. Por favor, no utilice guiones." TabIndex="1" MaxLength="50"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvCedulaJuridica" runat="server" ControlToValidate="txtCedulaJuridica"
                                        ErrorMessage="La cédula jurídica es un dato requerido." ForeColor="Red" ValidationGroup="gvDatosGenerales">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegEx_Cedula" runat="server" ControlToValidate="txtCedulaJuridica"
                                        ValidationExpression="[0-9]*" ErrorMessage="La cédula jurídica contiene símbolos inválidos."
                                        ForeColor="Red" ValidationGroup="gvDatosGenerales">*</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style37">
                                    <asp:Label ID="lblDescripcion" runat="server" Text="Descripción"></asp:Label>
                                </td>
                                <td class="style28">
                                    <asp:TextBox ID="txtDescripcion" runat="server" Height="61px" onblur="this.placeholder = 'Escriba la descripción aquí'"
                                        onfocus="this.placeholder = ''" placeholder="Escriba la descripción aquí." ToolTip="Ejemplo: Intel diseña y construye las tecnologías escenciales que sirven como base para los dispositivos del mundo computacional."
                                        TextMode="MultiLine" Width="290px" TabIndex="2" MaxLength="300"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDescripcion"
                                        ErrorMessage="La descripción de la empresa es un dato requerido." ForeColor="Red"
                                        ValidationGroup="gvDatosGenerales">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style37">
                                    <asp:Label ID="lblTelefono" runat="server" Text="Teléfono"></asp:Label>
                                </td>
                                <td class="style28">
                                    <asp:TextBox ID="txtTelefono" runat="server" Width="290px" onblur="this.placeholder = 'Escriba el teléfono aquí'"
                                        onfocus="this.placeholder = ''" placeholder="Escriba el teléfono aquí" ToolTip="Ejemplo: 25511922. Por favor, no utilice guiones."
                                        TabIndex="3" MaxLength="8"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="txtTelefono"
                                        ErrorMessage="El teléfono de la empresa es un dato requerido." ForeColor="Red"
                                        ValidationGroup="gvDatosGenerales">*</asp:RequiredFieldValidator>
                                    <asp:CustomValidator ID="cvLen_Telefono" ControlToValidate="txtTelefono" ForeColor="Red"
                                        OnServerValidate="validarTelefonoServer" ErrorMessage="El largo del teléfono es inválido"
                                        ValidationGroup="gvDatosGenerales" runat="server">*</asp:CustomValidator>
                                    <asp:RegularExpressionValidator ID="revTelefono" runat="server" ControlToValidate="txtTelefono"
                                        ErrorMessage="El número de teléfono introducido es inválido." ForeColor="Red"
                                        ValidationExpression="([0-9]*)" ValidationGroup="gvDatosGenerales">*</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style37">
                                    <asp:Label ID="lblEmail" runat="server" Text="Correo electrónico"></asp:Label>
                                </td>
                                <td class="style28">
                                    <asp:TextBox ID="txtEmail" runat="server" Width="290px" TabIndex="4" onblur="this.placeholder = 'Escriba el correo electrónico aquí'"
                                        onfocus="this.placeholder = ''" placeholder="Escriba el correo electrónico aquí"
                                        ToolTip="Ejemplo: recursos-humanos@intel.com" MaxLength="80"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                                        ErrorMessage="El correo electrónico de la empresa es un dato requerido." ForeColor="Red"
                                        ValidationGroup="gvDatosGenerales">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator runat="server" ControlToValidate="txtEmail" ValidationExpression=".+@.+\..+"
                                        ErrorMessage="Correo electrónico inválido." ForeColor="Red" ValidationGroup="gvDatosGenerales">*</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style37">
                                    <asp:Label ID="lblProvincia" runat="server" Text="Provincia"></asp:Label>
                                </td>
                                <td class="style28">
                                    <asp:DropDownList ID="drpProvincia" runat="server" Width="250px" OnSelectedIndexChanged="drpProvincia_SelectedIndexChanged"
                                        AutoPostBack="True" TabIndex="5">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="style37">
                                    <asp:Label ID="lblCanton" runat="server" Text="Cantón"></asp:Label>
                                </td>
                                <td class="style28">
                                    <asp:DropDownList ID="drpCanton" runat="server" Height="22px" Width="250px" OnSelectedIndexChanged="drpCanton_SelectedIndexChanged"
                                        AutoPostBack="True" TabIndex="6">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="style37">
                                    <asp:Label ID="lblDistrito" runat="server" Text="Distrito"></asp:Label>
                                </td>
                                <td class="style28">
                                    <asp:DropDownList ID="drpDistrito" runat="server" Height="22px" Width="250px" AutoPostBack="True"
                                        TabIndex="7">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="style19" colspan="2">
                                    &nbsp;
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="vPaso2" runat="server">
                        <table class="style11">
                            <tr>
                                <td class="style30" colspan="3">
                                    <asp:Label ID="lblPaso2" runat="server" Text="Paso 2 de 3" CssClass="Titulo2"></asp:Label>
                                </td>
                                <td class="auto-style14">
                                </td>
                            </tr>
                            <tr>
                                <td class="style31" colspan="3">
                                    <asp:Label ID="lblDatosAutenticacion" runat="server" CssClass="Titulo3" Text="Datos de autenticación"></asp:Label>
                                </td>
                                <td class="auto-style14">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style15" colspan="3">
                                    <asp:Panel ID="Panel2" runat="server" HorizontalAlign="Right">
                                        <asp:Button ID="btnCancelarPaso2" runat="server" CssClass="Boton" OnClick="btnCancelarPaso2_Click"
                                            TabIndex="6" Text="Salir sin guardar" UseSubmitBehavior="False" />
                                        &nbsp;
                                        <asp:Button ID="btnAtras" runat="server" CssClass="Boton" OnClick="btnAtras_Click"
                                            TabIndex="5" Text="Atrás" UseSubmitBehavior="False" />
                                        &nbsp;
                                        <asp:Button ID="btnSiguientePaso2" runat="server" CssClass="Boton" OnClick="btnSiguientePaso2_Click"
                                            TabIndex="4" Text="Siguiente" UseSubmitBehavior="False" />
                                    </asp:Panel>
                                </td>
                                <td class="auto-style14">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="style34">
                                    &nbsp;
                                </td>
                                <td class="style36">
                                    &nbsp;
                                </td>
                                <td class="style18">
                                    &nbsp;
                                </td>
                                <td class="auto-style14">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="style34">
                                    <asp:Label ID="lblNombreUsuario" runat="server" Text="Nombre de usuario"></asp:Label>
                                </td>
                                <td class="style36" colspan="2">
                                    <asp:TextBox ID="txtNombreUsuario" runat="server" ToolTip="Importante: Debe contener más de 5 caracteres. Únicamente se aceptan letras, números y guiones."
                                        onblur="this.placeholder = 'Escriba su nombre de usuario aquí'" onfocus="this.placeholder = ''"
                                        placeholder="Escriba su nombre de usuario aquí" MaxLength="30" Width="248px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvNombreUsuario" runat="server" ControlToValidate="txtNombreUsuario"
                                        ErrorMessage="El nombre de usuario es un dato requerido." ForeColor="Red" ValidationGroup="gvDatosCuenta">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegEx_Usuario" runat="server" ControlToValidate="txtNombreUsuario"
                                        ErrorMessage="Nombre de usuario inválido (Símbolos inválidos)." ForeColor="Red"
                                        ValidationExpression="(([0-9A-Za-z]|-|_)*)" ValidationGroup="gvDatosCuenta">*</asp:RegularExpressionValidator>
                                    <asp:CustomValidator ID="cvLen_Usuario" runat="server" ControlToValidate="txtNombreUsuario"
                                        ErrorMessage="El nombre de usuario debe contener entre 5 a 50 caracteres" ForeColor="Red"
                                        OnServerValidate="validarUsuarioServer" ValidationGroup="gvDatosCuenta">*</asp:CustomValidator>
                                </td>
                                <td class="auto-style14">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="style34">
                                    <asp:Label ID="lblContraseña" runat="server" Text="Contraseña"></asp:Label>
                                </td>
                                <td class="style36" colspan="2">
                                    <asp:TextBox ID="txtContraseña" runat="server" MaxLength="50" TextMode="Password"
                                        ToolTip="Importante: Debe contener más de 8 caracteres. Únicamente se aceptan letras y números."
                                        onblur="this.placeholder = 'Escriba su contraseña aquí'" onfocus="this.placeholder = ''"
                                        placeholder="Escriba su contraseña aquí" Width="250px"></asp:TextBox>
                                    <asp:CustomValidator ID="cvLen_Contrasenna" runat="server" ControlToValidate="txtContraseña"
                                        ErrorMessage="La contraseña debe tener al menos 8 caracteres" ForeColor="Red"
                                        OnServerValidate="validarContrasennaServer" ValidationGroup="gvDatosCuenta">*</asp:CustomValidator>
                                    <asp:RegularExpressionValidator ID="RegEx_Contrasenna" runat="server" ControlToValidate="txtContraseña"
                                        ErrorMessage="Contraseña inválida (Símbolos inválidos)." ForeColor="Red" ValidationExpression="([0-9A-Za-z]*)"
                                        ValidationGroup="gvDatosCuenta">*</asp:RegularExpressionValidator>
                                    <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="txtContraseña"
                                        ErrorMessage="La contraseña es un dato requerido." ForeColor="Red" ValidationGroup="gvDatosCuenta">*</asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtNombreUsuario"
                                        ControlToValidate="txtContraseña" ErrorMessage="Por su seguridad, la contraseña y el nombre de usuario deben ser diferentes."
                                        ForeColor="Red" Operator="NotEqual" ValidationGroup="gvDatosCuenta">*</asp:CompareValidator>
                                </td>
                                <td class="auto-style14">
                                </td>
                            </tr>
                            <tr>
                                <td class="style34">
                                    <asp:Label ID="lblConfirmarContraseña" runat="server" Text="Confirmar contraseña"></asp:Label>
                                </td>
                                <td class="style36" colspan="2">
                                    <asp:TextBox ID="txtConfirmarContraseña" runat="server" MaxLength="50" ToolTip="Debe escribir la contraseña de nuevo exactamente igual"
                                        TabIndex="2" TextMode="Password" Width="250px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvConfirmacion" runat="server" ControlToValidate="txtConfirmarContraseña"
                                        ErrorMessage="La confirmación de la contraseña es un dato requerido." ForeColor="Red"
                                        ValidationGroup="gvDatosCuenta">*</asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="cvContrasena" runat="server" ControlToCompare="txtContraseña"
                                        ControlToValidate="txtConfirmarContraseña" ErrorMessage="La 'contraseña' y 'confirmación de contraseña' no coinciden."
                                        ForeColor="Red" Operator="Equal" ValidationGroup="gvDatosCuenta">*</asp:CompareValidator>
                                </td>
                                <td class="auto-style14">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="style34">
                                    <asp:Label ID="lblIndicioContraseña" runat="server" Text="Frase para recordar la contraseña"></asp:Label>
                                </td>
                                <td class="style36" colspan="2">
                                    <asp:TextBox ID="txtIndicioContraseña" runat="server" MaxLength="50" ToolTip="Importante: Si en algún momento olvida su contraseña, esta frase le permitirá recordarla."
                                        onblur="this.placeholder = 'Escriba su frase aquí'" onfocus="this.placeholder = ''"
                                        placeholder="Escriba su frase aquí" TabIndex="3" Width="250px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvIndicioContraseña" runat="server" ControlToValidate="txtIndicioContraseña"
                                        ErrorMessage="El indicio de contraseña es un dato requerido." ForeColor="Red"
                                        ValidationGroup="gvDatosCuenta">*</asp:RequiredFieldValidator>
                                </td>
                                <td class="auto-style14">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="style24" colspan="4">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
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
                                    &nbsp;
                                </td>
                                <td class="style9">
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style10">
                                    <asp:Label ID="lblTerminos" runat="server" CssClass="Titulo3" Text="Términos y condiciones de uso"></asp:Label>
                                </td>
                                <td class="auto-style12">
                                    &nbsp;
                                </td>
                                <td class="auto-style11">
                                    &nbsp;
                                </td>
                                <td class="auto-style13">
                                    &nbsp;
                                </td>
                                <td class="style9">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style10" colspan="5">
                                    <asp:Panel ID="Panel6" runat="server" HorizontalAlign="Right">
                                        <asp:Button ID="btnCancelarPaso3" runat="server" CssClass="Boton" OnClick="btnCancelarPaso3_Click"
                                            TabIndex="3" Text="Salir sin guardar" UseSubmitBehavior="False" />
                                        &nbsp;&nbsp;<asp:Button ID="btnAtras1" runat="server" CssClass="Boton" OnClick="btnAtras1_Click"
                                            TabIndex="4" Text="Atrás" UseSubmitBehavior="False" />
                                        &nbsp;
                                        <asp:Button ID="btnFinalizar" runat="server" CssClass="Boton" OnClick="btnFinalizar_Click"
                                            TabIndex="1" Text="Finalizar" />
                                    </asp:Panel>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style10">
                                    &nbsp;
                                </td>
                                <td class="auto-style12">
                                    &nbsp;
                                </td>
                                <td class="auto-style11">
                                    &nbsp;
                                </td>
                                <td class="auto-style13">
                                    &nbsp;
                                </td>
                                <td class="style9">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="style22" colspan="5">
                                    <asp:Panel ID="PanelTerminosCondiciones" runat="server" BorderStyle="Solid" BorderWidth="2px"
                                        Height="170px">
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
                                    <asp:CheckBox ID="chkAceptarTerminos" runat="server" Text="Acepto los términos y condiciones anteriores"
                                        TabIndex="1"
                                        Width="600px" />
                                    &nbsp;
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                </asp:MultiView>
            </td>
            <td class="style8">
                &nbsp;
            </td>
        </tr>
        </table>
</asp:Content>
