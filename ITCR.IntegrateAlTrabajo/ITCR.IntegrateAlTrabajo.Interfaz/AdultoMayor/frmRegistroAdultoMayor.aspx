<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="frmRegistroAdultoMayor.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.AdultoMayor.frmRegistroAdultoMayor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link rel="stylesheet" href="../Styles/alertify.bootstrap.css" />
    <link rel="stylesheet" href="../Styles/alertify.core.css" />
    <link rel="stylesheet" href="../Styles/alertify.default.css" />
    <style type="text/css">
        .DisabledButton input[disabled="true"][type="button"]
        {
            color: Gray;
        }
        input[disabled="true"][type="submit"]
        {
            color: Gray;
        }
        .style8
        {
            overflow: auto;
            width: 100%;
            overflow-y: hidden;
        }
        .style9
        {
            height: 25px;
            width: 15px;
        }
        .style10
        {
            height: 25px;
            width: 15px;
        }
        .style11
        {
            height: 25px;
        }
        .style12
        {
            height: 25px;
            width: 250px;
        }
        .style13
        {
            height: 25px;
            width: 20px;
        }
        .style14
        {
            width: 100%;
        }
        .style17
        {
            height: 25px;
        }
        .style20
        {
            height: 25px;
        }
        .style22
        {
            height: 25px;
            width: 100px;
        }
        .style24
        {
            height: 25px;
        }
        .style25
        {
            height: 25px;
        }
        .style27
        {
            height: 25px;
        }
        .style28
        {
            width: 27px;
            height: 25px;
        }
        .style30
        {
            height: 25px;
        }
        .auto-style3
        {
            height: 25px;
        }
        .auto-style4
        {
            height: 25px;
        }
        .auto-style8
        {
            width: 172px;
            height: 25px;
        }
        .auto-style13
        {
            width: 351px;
        }
        .auto-style23
        {
            width: 1065px;
        }
        .auto-style24
        {
            width: 1080px;
        }
        .auto-style25
        {
            width: 1089px;
        }
        .auto-style30
        {
        }
        .auto-style32
        {
            height: 25px;
            width: 114px;
        }
        .auto-style33
        {
            height: 25px;
            width: 339px;
        }
        .auto-style35
        {
            width: 6px;
            height: 25px;
        }
        .style39
        {
            height: 25px;
            width: 201px;
        }
        .style40
        {
        }
        .style46
        {
            height: 25px;
            width: 1599px;
        }
        .style50
        {
            width: 200px;
            height: 25px;
        }
        .style52
        {
        }
        .style54
        {
            width: 2817px;
        }
        .style55
        {
            height: 25px;
            width: 2817px;
        }
        .auto-style37
        {
            width: 240px;
            height: 25px;
        }
        .auto-style38
        {
            height: 25px;
            width: 256px;
        }
        .style56
        {
            height: 25px;
        }
        .style70
        {
            width: 22px;
            height: 25px;
        }
        .style71
        {
            width: 643px;
        }
        .style73
        {
            width: 335px;
        }
        .style74
        {
            height: 25px;
            width: 168px;
        }
        .style75
        {
            height: 25px;
            width: 206px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:ScriptManager ID="ScriptManagerMain" runat="server" EnablePageMethods="true"
        ScriptMode="Release" LoadScriptsBeforeUI="true">
    </asp:ScriptManager>
    <script type="text/javascript" src="../js/jquery.js"></script>
    <script type="text/javascript" src="../js/jquery.maskedinput.min.js"></script>
    <script type="text/javascript" src="../js/alertify.min.js"></script>
    <script type="text/javascript">
        function alertBoxCustom(acceptText, cancelText, message) {
            // custom OK and Cancel label
            // default: OK, Cancel
            alertify.set({ labels: {
                ok: acceptText,
                cancel: cancelText
            }
            });
            // button labels will be "Accept" and "Deny"
            alertify.confirm(message)
        }

        function finalizar() {
            alertify.set({ buttonFocus: "none" });
            alertify.set({ labels: {
                ok: "Aceptar",
                cancel: "Ir a página de inicio"
            }
            });

            alertify.confirm("¡Felicidades! Usted está dando un paso importante para tener una vejez activa. En este momento su cuenta de usuario quedará inactiva, pero una vez que se haya verificado que sus datos son correctos, esta se activirá para que usted pueda ofrecer sus valiosos servios.", function (e) {
                if (e) {
                    location.href = "/Autenticacion/frmAutenticacion.aspx";
                }
                else {
                    location.href = "/Autenticacion/frmAutenticacion.aspx";
                }
            });
        }

        function aceptarTerminos() {
            alertify.set({ buttonFocus: "none" });
            alertify.set({ labels: {
                ok: "Aceptar"
                //cancel: "Cancelar"
            }
            });
            alertify.alert("Usted debe aceptar los términos y condiciones para poder finalizar el registro. Si no desea aceptarlos, presione el botón 'Salir sin guardar'.");
        }

        function endConfirmation() {
            // custom OK and Cancel label
            // default: OK, Cancel
            alertify.set({ buttonFocus: "none" });
            alertify.set({ buttonReverse: true });
            alertify.set({ labels: {
                ok: "Sí, estoy seguro",
                cancel: "No, deseo continuar en el formulario"
            }
            });
            // button labels will be "Accept" and "Deny"
            alertify.confirm("¿Está seguro que desea salir sin guardar?", function (e) {
                if (e) {
                    location.href = "/Autenticacion/frmAutenticacion.aspx";
                }
            });
        }

        function eliminarEstudio(index) {
            alertify.set({ buttonFocus: "none" });
            alertify.set({ buttonReverse: true });
            alertify.set({ labels: {
                ok: "Sí, quiero eliminarlo",
                cancel: "No, quiero mantenerlo"
            }
            });
            // button labels will be "Accept" and "Deny"
            alertify.confirm("¿Está seguro que desea eliminar este estudio?", function (e) {
                if (e) {
                    eliminarFila("<%= dgEstudios.ClientID %>", index);
                    PageMethods.eliminarEstudio(index, OnSuccess, OnError);
                }
            });
        }

        function validarTelefonosClient(oSrc, args) {
            args.IsValid = (window.txtTelefonoHabitacion.Text != "" || window.txtCelular.Text != "");
        }
        function eliminarExperiencia(index) {
            alertify.set({ buttonFocus: "none" });
            alertify.set({ buttonReverse: true });
            alertify.set({ labels: {
                ok: "Sí, quiero eliminarla",
                cancel: "No, quiero mantenerla"
            }
            });
            // button labels will be "Accept" and "Deny"
            alertify.confirm("¿Está seguro que desea eliminar esta experiencia laboral?", function (e) {
                if (e) {
                    eliminarFila("<%= dgExperienciasLaborales.ClientID %>", index);
                    PageMethods.eliminarExperiencia(index, OnSuccess, OnError);
                }
            });
        }

        function validarUsuarioClient(oSrc, args) {
            args.IsValid = window.CARACTERES_MINIMOS <= args.Value.Length
                                            && args.Value.Length <= window.CARACTERES_MAXIMOS;
        }

        function eliminarFila(id, rowindex) {
            var tabla = document.getElementById(id);
            tabla.deleteRow(rowindex + 1);
        }

        function OnSuccess(response) {
            alertify.set({ buttonFocus: "none" });
            alertify.set({ labels: {
                ok: "Aceptar"
                //cancel: "Cancelar"
            }
            });
            alertify.alert("El proceso de eliminación se llevó a cabo correctamente.");
        }
        function OnError(error) {
            alertify.set({ labels: {
                ok: "Aceptar"
                //cancel: "Cancelar"
            }
            });
            alert(error);
        }
    </script>
    <div id="Div1" style="width: 100%; overflow: auto;">
        <table class="style8">
            <tr>
                <td class="style10">
                </td>
                <td class="style22">
                </td>
                <td class="auto-style33">
                </td>
                <td class="style13">
                </td>
                <td class="style22">
                </td>
                <td class="style12">
                </td>
                <td class="style9">
                </td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;
                </td>
                <td class="style11" colspan="5">
                    <asp:Label ID="lblRegistroAdultoMayor" runat="server" Text="Registro de Persona Adulta Mayor"
                        CssClass="Titulo1"></asp:Label>
                </td>
                <td class="style9">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;
                </td>
                <td class="style11" colspan="5">
                    <asp:ValidationSummary ID="vsRegistroAdultoMayor" runat="server" ForeColor="#CC0000"
                        ValidationGroup="gvDatosPersonales" />
                    <asp:ValidationSummary runat="server" ID="vsDatosAutenticacionPersona" ValidationGroup="gvDatosAutenticacion"
                        ForeColor="#CC0000"></asp:ValidationSummary>
                    <asp:ValidationSummary runat="server" ID="vsEstudios" ForeColor="#CC0000" ValidationGroup="gvEstudios">
                    </asp:ValidationSummary>
                    <asp:ValidationSummary runat="server" ForeColor="#CC0000" ID="vsExperienciasLaborales"
                        ValidationGroup="gvExperienciasLaborales"></asp:ValidationSummary>
                </td>
                <td class="style9">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;
                </td>
                <td class="style11" colspan="5">
                    <asp:MultiView ID="mvRegistroAdultoMayor" runat="server">
                        <asp:View ID="vPaso1" runat="server">
                            <table class="style14">
                                <tr>
                                    <td class="style39" colspan="2">
                                        <asp:Label ID="lblPaso1" runat="server" Text="Paso 1 de 7" CssClass="Titulo2"></asp:Label>
                                    </td>
                                    <td class="style40" colspan="3">
                                        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Right" Style="margin-left: 92px"
                                            Width="400px">
                                            <asp:Button ID="btnCancelar1" runat="server" CssClass="Boton" OnClick="btnCancelar1_Click"
                                                TabIndex="19" Text="Salir sin guardar" UseSubmitBehavior="False" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="btnSiguiente1" runat="server" CssClass="Boton" OnClick="btnSiguiente1_Click"
                                                TabIndex="18" Text="Siguiente" UseSubmitBehavior="False" />
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style24" colspan="2">
                                        <asp:Label ID="lblDatosPersonales" runat="server" Text="Datos personales" CssClass="Titulo3"></asp:Label>
                                    </td>
                                    <td class="style70">
                                        &nbsp;
                                    </td>
                                    <td class="style75">
                                        &nbsp;
                                    </td>
                                    <td class="auto-style13">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style73">
                                        <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
                                    </td>
                                    <td class="style71">
                                        <asp:TextBox ID="txtNombrePersona" runat="server" onblur="this.placeholder = 'Escriba su nombre aquí'"
                                            onfocus="this.placeholder = ''" placeholder="Escriba su nombre aquí" ToolTip="Ejemplo: Laura"
                                            Width="250px" MaxLength="30"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvNombrePersona" runat="server" ControlToValidate="txtNombrePersona"
                                            ErrorMessage="El nombre de la persona es un dato requerido, por lo que debe introducir un valor válido.."
                                            ForeColor="Red" ValidationGroup="gvDatosPersonales">*</asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegEx_Nombre" runat="server" ControlToValidate="txtNombrePersona"
                                            ValidationExpression="([a-zA-ZÀ-ÿ ])*" ErrorMessage="El nombre proporcionado tiene un formato inválido, asegúrese que únicamente contenga símbolos válidos."
                                            ForeColor="Red" ValidationGroup="gvDatosPersonales">*</asp:RegularExpressionValidator>
                                    </td>
                                    <td class="style70">
                                        &nbsp;
                                    </td>
                                    <td class="style75">
                                        <asp:Label ID="lblTelefonoHabitacion" runat="server" Text="Teléfono principal"></asp:Label>
                                    </td>
                                    <td class="auto-style13">
                                        <asp:TextBox ID="txtTelefonoHabitacion" runat="server" Width="250px" onblur="this.placeholder = 'Escriba su teléfono aquí'"
                                            onfocus="this.placeholder = ''" placeholder="Escriba su teléfono aquí" ToolTip="Ejemplo: 25517722 (Por favor, no use guiones)"
                                            TabIndex="12" MaxLength="8"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="revTelefonoHabitacion" runat="server" ControlToValidate="txtTelefonoHabitacion"
                                            ErrorMessage="El número de teléfono principal introducido es inválido." ForeColor="Red"
                                            ValidationExpression="([0-9]*)" ValidationGroup="gvDatosPersonales">*</asp:RegularExpressionValidator>
                                        <asp:CustomValidator ID="cvTelefonoHabitacion" runat="server" OnServerValidate="validarTelefonosServer"
                                            ClientValidationFunction="validarTelefonosClient" ErrorMessage="Debe haber al menos un número de contacto."
                                            ValidationGroup="gvDatosPersonales" ForeColor="red">*</asp:CustomValidator>
                                        <asp:CustomValidator ID="largoHabitacion" runat="server" OnServerValidate="validarLargoHabitacionServer"
                                            ForeColor="red" ErrorMessage="El teléfono principal es inválido (longitud inválida)"
                                            ValidationGroup="gvDatosPersonales">*</asp:CustomValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style73">
                                        <asp:Label ID="lblApellido1" runat="server" Text="Primer apellido"></asp:Label>
                                    </td>
                                    <td class="style71">
                                        <asp:TextBox ID="txtApellido1" runat="server" onblur="this.placeholder = 'Escriba su primer apellido aquí'"
                                            onfocus="this.placeholder = ''" placeholder="Escriba su primer apellido aquí"
                                            Width="250px" ToolTip="Ejemplo: Fernández" TabIndex="1" MaxLength="30"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvApellido1Persona" runat="server" ControlToValidate="txtApellido1"
                                            ErrorMessage="El primer apellido es un dato requerido, por lo que debe introducir un valor válido."
                                            ForeColor="Red" ValidationGroup="gvDatosPersonales">*</asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegEx_Apellido1" runat="server" ControlToValidate="txtApellido1"
                                            ValidationExpression="([a-zA-ZÀ-ÿ ])*" ErrorMessage="El primer apellido proporcionado tiene un formato inválido, asegúrese que únicamente contenga símbolos válidos."
                                            ForeColor="Red" ValidationGroup="gvDatosPersonales">*</asp:RegularExpressionValidator>
                                    </td>
                                    <td class="style70">
                                        &nbsp;
                                    </td>
                                    <td class="style75">
                                        <asp:Label ID="lblTelefonoCelular" runat="server" Text="Teléfono secundario"></asp:Label>
                                    </td>
                                    <td class="auto-style13">
                                        <asp:TextBox ID="txtCelular" runat="server" Width="250px" onblur="this.placeholder = 'Opcionalmente otro teléfono'"
                                            onfocus="this.placeholder = ''" placeholder="Opcionalmente otro teléfono" TabIndex="13"
                                            MaxLength="8" ToolTip="Ejemplo: 87721144 (Por favor, no use guiones)"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="revCelular" runat="server" ControlToValidate="txtCelular"
                                            ErrorMessage="El número de teléfono secundario introducido es inválido." ForeColor="Red"
                                            ValidationExpression="([0-9]*)" ValidationGroup="gvDatosPersonales">*</asp:RegularExpressionValidator>
                                        <asp:CustomValidator ID="validarLargoCelular" runat="server" OnServerValidate="validarLargoMovilServer"
                                            ErrorMessage="El número de teléfono secundario introducido es inválido (longitud inválida)."
                                            ValidationGroup="gvDatosPersonales" ForeColor="red">*</asp:CustomValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style73">
                                        <asp:Label ID="lblApellido2" runat="server" Text="Segundo apellido"></asp:Label>
                                    </td>
                                    <td class="style71">
                                        <asp:TextBox ID="txtApellido2" runat="server" onblur="this.placeholder = 'Escriba su segundo apellido aquí'"
                                            onfocus="this.placeholder = ''" placeholder="Escriba su segundo apellido aquí"
                                            Width="250px" ToolTip="Ejemplo: García" TabIndex="2" MaxLength="30"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvApellido2Persona" runat="server" ControlToValidate="txtApellido2"
                                            ErrorMessage="El segundo apellido es un dato requerido, por lo que debe introducir un valor válido.."
                                            ForeColor="Red" ValidationGroup="gvDatosPersonales">*</asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegEx_Apellido2" runat="server" ControlToValidate="txtApellido2"
                                            ValidationExpression="([a-zA-ZÀ-ÿ ])*" ErrorMessage="El segundo apellido proporcionado tiene un formato inválido, asegúrese que únicamente contenga símbolos válidos."
                                            ForeColor="Red" ValidationGroup="gvDatosPersonales">*</asp:RegularExpressionValidator>
                                    </td>
                                    <td class="style70">
                                        &nbsp;
                                    </td>
                                    <td class="style75">
                                        <asp:Label ID="lblCorreoElectronico" runat="server" Text="Correo electrónico"></asp:Label>
                                    </td>
                                    <td class="auto-style13">
                                        <asp:TextBox ID="txtCorreoElectronico" runat="server" onblur="this.placeholder = 'Escriba su correo electrónico aquí'"
                                            onfocus="this.placeholder = ''" placeholder="Escriba su correo electrónico aquí"
                                            ToolTip="Ejemplo: laura-fernandez@gmail.com" Width="250px" TabIndex="14" MaxLength="80"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvCorreoElectronico" runat="server" ControlToValidate="txtCorreoElectronico"
                                            ErrorMessage="El correo electrónico es un dato requerido." ForeColor="Red" ValidationGroup="gvDatosPersonales">*</asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCorreoElectronico"
                                            ErrorMessage="Correo electrónico inválido." ForeColor="Red" ValidationExpression=".+@.+\..+"
                                            ValidationGroup="gvDatosPersonales">*</asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style73">
                                        <asp:Label ID="lblSexo" runat="server" Text="Sexo"></asp:Label>
                                    </td>
                                    <td class="style71">
                                        <asp:DropDownList ID="drpSexo" runat="server" TabIndex="3">
                                        </asp:DropDownList>
                                    </td>
                                    <td class="style70">
                                        &nbsp;
                                    </td>
                                    <td class="style75">
                                        <asp:Label ID="lblProvincia" runat="server" Text="Provincia"></asp:Label>
                                    </td>
                                    <td class="auto-style13">
                                        <asp:DropDownList ID="drpProvincia" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpProvincia_SelectedIndexChanged"
                                            TabIndex="15">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style73">
                                        <asp:Label ID="lblNacionalidad" runat="server" Text="Nacionalidad"></asp:Label>
                                        &nbsp;
                                    </td>
                                    <td class="style71">
                                        <asp:RadioButtonList ID="ddlNacionalidad" runat="server" OnSelectedIndexChanged="ddlNacionalidad_SelectedIndexChanged"
                                            AutoPostBack="true" TabIndex="4">
                                        </asp:RadioButtonList>
                                    </td>
                                    <td class="style70">
                                        &nbsp;
                                    </td>
                                    <td class="style75">
                                        <asp:Label ID="lblCanton" runat="server" Text="Cantón"></asp:Label>
                                    </td>
                                    <td class="auto-style13">
                                        <asp:DropDownList ID="drpCanton" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpCanton_SelectedIndexChanged"
                                            TabIndex="16">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style73">
                                        <asp:Label ID="lblCedula" runat="server" Text="Cédula"></asp:Label>
                                        &nbsp;
                                    </td>
                                    <td class="style71">
                                        <asp:Panel ID="PanelCedula" runat="server" HorizontalAlign="Left">
                                            <asp:TextBox ID="txtCedula" runat="server" ClientIDMode="Static" MaxLength="1" TabIndex="5"
                                                ToolTip="Ejemplo: 1" Width="30px"></asp:TextBox>
                                            <asp:TextBox ID="txtCedula2" runat="server" AutoPostBack="true" ClientIDMode="Static"
                                                MaxLength="4" OnTextChanged="txtCedula2_TextChanged" TabIndex="6" ToolTip="Ejemplo: 0123"
                                                Width="60px"></asp:TextBox>
                                            <asp:TextBox ID="txtCedula3" runat="server" AutoPostBack="true" ClientIDMode="Static"
                                                MaxLength="4" OnTextChanged="txtCedula3_TextChanged" TabIndex="7" ToolTip="Ejemplo: 1277"
                                                Width="60px"></asp:TextBox>
                                        </asp:Panel>
                                        <asp:TextBox ID="txtCedulaExt" runat="server" Width="250px" ClientIDMode="Static"
                                            MaxLength="20" TabIndex="8" ToolTip="Ejemplo: 765123085622" onblur="this.placeholder = 'Escriba su número de cédula aquí'"
                                            onfocus="this.placeholder = ''" placeholder="Escriba su número de cédula aquí"></asp:TextBox>
                                        <asp:CustomValidator ID="cvCedula" runat="server" OnServerValidate="validarCedulaServer"
                                            ForeColor="red" ErrorMessage="La cédula es un dato requerido, por lo que debe introducir un valor válido."
                                            ValidationGroup="gvDatosPersonales">*</asp:CustomValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtCedula"
                                            ErrorMessage="La cédula introducida tiene un formato inválido. Verifique que empiece con un número entre 1 y 9, y que posteriormente contenga sólo números.."
                                            ForeColor="Red" ValidationExpression="[1-9]*" ValidationGroup="gvDatosPersonales">*</asp:RegularExpressionValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtCedula2"
                                            ErrorMessage="La cédula introducida tiene un formato inválido. Verifique que empiece con un número entre 1 y 9, y que posteriormente contenga sólo números."
                                            ForeColor="Red" ValidationExpression="[0-9]*" ValidationGroup="gvDatosPersonales">*</asp:RegularExpressionValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtCedula3"
                                            ErrorMessage="La cédula introducida tiene un formato inválido. Verifique que empiece con un número entre 1 y 9, y que posteriormente contenga sólo números."
                                            ForeColor="Red" ValidationExpression="[0-9]*" ValidationGroup="gvDatosPersonales">*</asp:RegularExpressionValidator>
                                    </td>
                                    <td class="style70">
                                        &nbsp;
                                    </td>
                                    <td class="style75">
                                        <asp:Label ID="lblDistrito" runat="server" Text="Distrito"></asp:Label>
                                    </td>
                                    <td class="auto-style13">
                                        <asp:DropDownList ID="drpDistrito" runat="server" TabIndex="17">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style73">
                                        <asp:Label ID="lblFechaNacimiento" runat="server" Text="Año, mes y día de nacimiento"></asp:Label>
                                    </td>
                                    <td class="style71">
                                        <asp:DropDownList ID="DdlAnioNacimiento" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DdlAnnoNacimiento_SelectedIndexChanged"
                                            TabIndex="11">
                                        </asp:DropDownList>
                                        <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="La fecha de nacimiento es incorrecta, por favor, introduzca un valor válido."
                                            ForeColor="red" OnServerValidate="validarNacimientoServer" ValidationGroup="gvDatosPersonales">*</asp:CustomValidator>
                                        <asp:DropDownList ID="DdlMesNacimiento" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DdlMesNacimiento_SelectedIndexChanged"
                                            TabIndex="10">
                                        </asp:DropDownList>
                                        <asp:DropDownList ID="DdlDiaNacimiento" runat="server" AutoPostBack="True" TabIndex="9">
                                        </asp:DropDownList>
                                    </td>
                                    <td class="style70">
                                        &nbsp;
                                    </td>
                                    <td class="style75">
                                        &nbsp;
                                    </td>
                                    <td class="auto-style13">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        </asp:View>
                        <br />
                        <asp:View ID="vPaso2" runat="server">
                            <table class="style14">
                                <tr>
                                    <td class="style54">
                                        <asp:Label ID="lblPaso2" runat="server" Text="Paso 2 de 7" CssClass="Titulo2"></asp:Label>
                                    </td>
                                    <td align="right" class="style52">
                                        &nbsp;
                                        <asp:Panel ID="Panel3" runat="server" HorizontalAlign="Right" Style="text-align: justify"
                                            Width="500px">
                                            &nbsp;&nbsp;&nbsp;<asp:Button ID="btnCancelar2" runat="server" CssClass="Boton" OnClick="btnCancelar2_Click"
                                                TabIndex="6" Text="Salir sin guardar" UseSubmitBehavior="False" />
                                            &nbsp;&nbsp;<asp:Button ID="btnAtras" runat="server" CssClass="Boton" OnClick="btnAtras_Click"
                                                TabIndex="5" Text="Atrás" UseSubmitBehavior="False" />
                                            &nbsp;&nbsp;<asp:Button ID="btnSiguiente2" runat="server" CssClass="Boton" OnClick="btnSiguiente2_Click"
                                                TabIndex="4" Text="Siguiente" UseSubmitBehavior="False" />
                                            &nbsp;</asp:Panel>
                                        &nbsp;&nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style55">
                                        <asp:Label ID="lblDatosAutenticacion" runat="server" Text="Datos de autenticación"
                                            CssClass="Titulo3"></asp:Label>
                                    </td>
                                    <td class="style46">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style54">
                                        <asp:Label ID="lblNombreUsuario" runat="server" Text="Nombre de usuario"></asp:Label>
                                    </td>
                                    <td class="style52">
                                        <asp:TextBox ID="txtNombreUsuario" runat="server" ToolTip="Importante: Debe contener más de 5 caracteres. Únicamente se aceptan letras, números y guiones."
                                            Width="260px" onblur="this.placeholder = 'Escriba su nombre de usuario aquí'"
                                            onfocus="this.placeholder = ''" placeholder="Escriba su nombre de usuario aquí"
                                            MaxLength="30"></asp:TextBox>
                                        <asp:CustomValidator ID="cvValidarUsuario" runat="server" ClientValidationFunction="validarUsuarioClient"
                                            ErrorMessage="El usuario debe contener entre 5 a 50 caracteres." ForeColor="red"
                                            OnServerValidate="validarUsuarioServer" ValidationGroup="gvDatosAutenticacion">*</asp:CustomValidator>
                                        <asp:RegularExpressionValidator ID="RegEx_Usuario" runat="server" ControlToValidate="txtNombreUsuario"
                                            ErrorMessage="Nombre de usuario inválido (Símbolos inválidos)." ForeColor="Red"
                                            ValidationExpression="(([0-9A-Za-z]|-|_)*)" ValidationGroup="gvDatosAutenticacion">*</asp:RegularExpressionValidator>
                                        <asp:RequiredFieldValidator ID="rfvNombreUsuario" runat="server" ControlToValidate="txtNombreUsuario"
                                            ErrorMessage="El nombre de usuario es un dato requerido." ForeColor="Red" ValidationGroup="gvDatosAutenticacion">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style54">
                                        <asp:Label ID="lblContraseña" runat="server" Text="Contraseña"></asp:Label>
                                    </td>
                                    <td class="style52">
                                        <asp:TextBox ID="txtContraseña" runat="server" TabIndex="1" TextMode="Password" ToolTip="Importante: Debe contener más de 8 caracteres. Únicamente se aceptan letras y números."
                                            Width="260px" onblur="this.placeholder = 'Escriba su contraseña aquí'" onfocus="this.placeholder = ''"
                                            placeholder="Escriba su contraseña aquí" MaxLength="50"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="txtContraseña"
                                            ErrorMessage="La contraseña es un dato requerido." ForeColor="Red" ValidationGroup="gvDatosAutenticacion">*</asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegEx_Contrasenna" runat="server" ControlToValidate="txtContraseña"
                                            ErrorMessage="Contraseña inválida (Símbolos inválidos)." ForeColor="Red" ValidationExpression="([0-9A-Za-z]*)"
                                            ValidationGroup="gvDatosAutenticacion">*</asp:RegularExpressionValidator>
                                        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="La contraseña debe contener al menos 8 caracteres."
                                            ForeColor="red" OnServerValidate="validarContrasennaServer" ValidationGroup="gvDatosAutenticacion">*</asp:CustomValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style54">
                                        <asp:Label ID="lblConfirmacionContraseña" runat="server" Text="Vuelva escribir la contraseña"></asp:Label>
                                    </td>
                                    <td class="style52">
                                        <asp:TextBox ID="txtConfirmacionContraseña" runat="server" TabIndex="2" ToolTip="Debe escribir la contraseña de nuevo exactamente igual"
                                            TextMode="Password" Width="260px" MaxLength="50"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvConfirmacionContraseña" runat="server" ControlToValidate="txtConfirmacionContraseña"
                                            ErrorMessage="Es necesario confirmar la contraseña." ForeColor="Red" ValidationGroup="gvDatosAutenticacion">*</asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="cvContrasenia" runat="server" ControlToCompare="txtContraseña"
                                            ControlToValidate="txtConfirmacionContraseña" ErrorMessage="El espacio no coincide con el de contraseña."
                                            ForeColor="Red" Operator="Equal" ValidationGroup="gvDatosAutenticacion">*</asp:CompareValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style54">
                                        <asp:Label ID="lblIndicioContraseña" runat="server" Text="Frase para recordar la contraseña"></asp:Label>
                                    </td>
                                    <td class="style52">
                                        <asp:TextBox ID="txtIndicioContraseña" runat="server" TabIndex="3" ToolTip="Importante: Si en algún momento olvida su contraseña, esta frase le permitirá recordarla."
                                            onblur="this.placeholder = 'Escriba su frase aquí'" onfocus="this.placeholder = ''"
                                            placeholder="Escriba su frase aquí" Width="260px" MaxLength="50"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvIndicioContraseña" runat="server" ControlToValidate="txtIndicioContraseña"
                                            ErrorMessage="El indicio de contraseña es un dato requerido." ForeColor="Red"
                                            ValidationGroup="gvDatosAutenticacion">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                            </table>
                        </asp:View>
                        <br />
                        <asp:View ID="vPaso3" runat="server">
                            <table class="style14">
                                <tr>
                                    <td class="style24">
                                        <asp:Label ID="lblPaso3" runat="server" Text="Paso 3 de 7" CssClass="Titulo2"></asp:Label>
                                    </td>
                                    <td class="style25">
                                        &nbsp;
                                    </td>
                                    <td class="style17">
                                    </td>
                                    <td class="style20" colspan="2">
                                        <asp:Panel ID="Panel4" runat="server" HorizontalAlign="Right">
                                            <asp:Button ID="btnCancelar3" runat="server" CssClass="Boton" OnClick="btnCancelar3_Click"
                                                TabIndex="8" Text="Salir sin guardar" UseSubmitBehavior="False" />
                                            &nbsp;&nbsp;<asp:Button ID="btnAtras1" runat="server" CssClass="Boton" OnClick="btnAtras1_Click"
                                                TabIndex="7" Text="Atrás" UseSubmitBehavior="False" />
                                            &nbsp;
                                            <asp:Button ID="btnSiguiente3" runat="server" CssClass="Boton" OnClick="btnSiguiente3_Click"
                                                Text="Siguiente" UseSubmitBehavior="False" TabIndex="6" />
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style24" colspan="4">
                                        <asp:Label ID="lblEstudios" runat="server" Text="Formación académica" CssClass="Titulo3"></asp:Label>
                                    </td>
                                    <td class="style17">
                                        &nbsp;
                                    </td>
                                    <td class="style20">
                                        &nbsp;
                                    </td>
                                    <td class="style11">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style24" colspan="5">
                                        <asp:Panel ID="PanelIngresoDatos" runat="server" BorderStyle="Solid" BorderWidth="2px">
                                            <table class="style14">
                                                <tr>
                                                    <td class="auto-style37">
                                                        <asp:Label ID="lblInstitucion" runat="server" Text="Título Académico"></asp:Label>
                                                    </td>
                                                    <td class="style11">
                                                        <asp:TextBox ID="txtTituloEstudio" runat="server" TabIndex="1" Width="528px" ToolTip="Ejemplo: Bachiller en Educación Media"
                                                            onblur="this.placeholder = 'Escriba su título aquí'" onfocus="this.placeholder = ''"
                                                            placeholder="Escriba su título aquí" MaxLength="50"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvTituloEstudio" runat="server" ControlToValidate="txtTituloEstudio"
                                                            ErrorMessage="El título es un dato requerido." ForeColor="Red" ValidationGroup="gvEstudios">*</asp:RequiredFieldValidator>
                                                        <asp:RegularExpressionValidator ID="RegEx_EstTitulo" runat="server" ControlToValidate="txtTituloEstudio"
                                                            ErrorMessage="Título inválido (Símbolos inválidos)." ForeColor="Red" ValidationExpression="(([0-9a-zA-ZÀ-ÿ ]|\-|\.)*)"
                                                            ValidationGroup="gvEstudios">*</asp:RegularExpressionValidator>
                                                    </td>
                                                    <td class="style28">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style37">
                                                        <asp:Label ID="lblTitulo" runat="server" Text="Institución en la que recibió el título"></asp:Label>
                                                    </td>
                                                    <td class="style11">
                                                        <asp:TextBox ID="txtInstitucionEstudio" runat="server" Width="528px" ToolTip="Ejemplo: Colegio Técnico Profesional de Pococí"
                                                            onblur="this.placeholder = 'Escriba el nombre de la institución aquí'" onfocus="this.placeholder = ''"
                                                            placeholder="Escriba el nombre de la institución aquí" MaxLength="60"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvInstitucionEstudio" runat="server" ControlToValidate="txtInstitucionEstudio"
                                                            ErrorMessage="La institución es un dato requerido." ForeColor="Red" ValidationGroup="gvEstudios">*</asp:RequiredFieldValidator>
                                                        <asp:RegularExpressionValidator ID="RegEx_Institucion" runat="server" ControlToValidate="txtInstitucionEstudio"
                                                            ErrorMessage="Institución inválida (Símbolos inválidos)." ForeColor="Red" ValidationExpression="(([0-9a-zA-ZÀ-ÿ ]|\-|\.)*)"
                                                            ValidationGroup="gvEstudios">*</asp:RegularExpressionValidator>
                                                    </td>
                                                    <td class="style28">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style37">
                                                        &nbsp;
                                                    </td>
                                                    <td class="auto-style3" colspan="2">
                                                        <asp:Panel ID="PanelAgregar1" runat="server" HorizontalAlign="Right">
                                                            <asp:Button ID="btnCancelarAgregarEstudio" runat="server" CssClass="Boton" OnClick="btnCancelarAgregarEstudio_Click"
                                                                Text="Cancelar" TabIndex="4" />
                                                            &nbsp;&nbsp;<asp:Button ID="btnCancelarActualizarEstudio" runat="server" CssClass="Boton"
                                                                OnClick="btnCancelarActualizarEstudio_Click" Text="Cancelar" TabIndex="5" />
                                                            &nbsp;&nbsp;<asp:Button ID="btnAgregarEstudio" runat="server" CssClass="Boton" OnClick="btnAgregarEstudio_Click"
                                                                TabIndex="2" Text="Agregar" UseSubmitBehavior="False" />
                                                            &nbsp;
                                                            <asp:Button ID="btnActualizarEstudio" runat="server" CssClass="Boton" OnClick="btnActualizarEstudio_Click"
                                                                TabIndex="3" Text="Actualizar" UseSubmitBehavior="False" Visible="False" />
                                                        </asp:Panel>
                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style24">
                                        &nbsp;
                                    </td>
                                    <td class="style25">
                                        &nbsp;
                                    </td>
                                    <td class="style17">
                                        &nbsp;
                                    </td>
                                    <td class="style20">
                                        &nbsp;
                                    </td>
                                    <td class="style11">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style24" colspan="5">
                                        <asp:Panel ID="PanelTablaDatosEstudios" runat="server" BorderStyle="None" BorderWidth="2px"
                                            Height="250px" ScrollBars="Auto">
                                            <asp:DataGrid ID="dgEstudios" runat="server" AutoGenerateColumns="False" BackColor="WhiteSmoke"
                                                BorderStyle="Solid" CssClass="GridMantenimiento" Font-Names="Century Gothic"
                                                Font-Size="Small" ForeColor="Black" Height="19px" OnItemCommand="dgEstudios_ItemCommand"
                                                Width="99%" TabIndex="4">
                                                <AlternatingItemStyle BackColor="Gainsboro" />
                                                <HeaderStyle BackColor="Navy" Font-Bold="True" Font-Names="Century Gothic" Font-Size="Larger"
                                                    ForeColor="White" HorizontalAlign="Center" />
                                                <Columns>
                                                    <asp:BoundColumn HeaderText="Institución" DataField="Institucion"></asp:BoundColumn>
                                                    <asp:BoundColumn HeaderText="Título" DataField="Titulo"></asp:BoundColumn>
                                                    <asp:TemplateColumn HeaderText="Editar">
                                                        <ItemTemplate>
                                                            <asp:ImageButton ID="ibtnEditar" runat="server" CommandName="Editar" Height="30px"
                                                                ImageUrl="~/Multimedia/icono-editar.jpg" Width="30px" Style="display: block;
                                                                margin: 0 auto" />
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="Eliminar">
                                                        <ItemTemplate>
                                                            <asp:ImageButton ID="ibtnEliminar" runat="server" CommandName="Eliminar" Height="30px"
                                                                ImageUrl="~/Multimedia/icono-eliminar.jpg" Width="30px" Style="display: block;
                                                                margin: 0 auto" />
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                </Columns>
                                            </asp:DataGrid>
                                        </asp:Panel>
                                    </td>
                                </tr>
                            </table>
                        </asp:View>
                        <br />
                        <asp:View ID="vPaso4" runat="server">
                            <table class="style14">
                                <tr>
                                    <td class="style24" colspan="4">
                                        <asp:Label ID="lblPaso4" runat="server" Text="Paso 4 de 7" CssClass="Titulo2"></asp:Label>
                                    </td>
                                    <td class="auto-style23">
                                        <asp:Panel ID="Panel5" runat="server" HorizontalAlign="Right" Style="margin-left: 74px">
                                            <asp:Button ID="btnCancelar4" runat="server" CssClass="Boton" OnClick="btnCancelar4_Click"
                                                TabIndex="8" Text="Salir sin guardar" UseSubmitBehavior="False" />
                                            &nbsp;
                                            <asp:Button ID="btnAtras2" runat="server" CssClass="Boton" OnClick="btnAtras2_Click"
                                                TabIndex="7" Text="Atrás" UseSubmitBehavior="False" />
                                            &nbsp;
                                            <asp:Button ID="btnSiguiente4" runat="server" CssClass="Boton" OnClick="btnSiguiente4_Click"
                                                Text="Siguiente" UseSubmitBehavior="False" TabIndex="6" />
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style24" colspan="5">
                                        <asp:Label ID="lblExperienciasLaborales" runat="server" Text="Experiencias laborales"
                                            CssClass="Titulo3"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style24" colspan="5">
                                        <asp:Panel ID="PanelIngresoDatos0" runat="server" BorderStyle="Solid" BorderWidth="2px">
                                            <table class="style14">
                                                <tr>
                                                    <td class="auto-style38">
                                                        <asp:Label ID="lblEmpresa" runat="server" Text="Puesto laboral"></asp:Label>
                                                    </td>
                                                    <td class="style27">
                                                        <asp:TextBox ID="txtPuesto" runat="server" TabIndex="1" Width="460px" ToolTip="Ejemplo: Asistente de Mantenimiento"
                                                            onblur="this.placeholder = 'Escriba el puesto aquí'" onfocus="this.placeholder = ''"
                                                            placeholder="Escriba el puesto aquí" MaxLength="50"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvPuesto" runat="server" ControlToValidate="txtPuesto"
                                                            ErrorMessage="El puesto es un dato requerido." ForeColor="Red" ValidationGroup="gvExperienciasLaborales">*</asp:RequiredFieldValidator>
                                                        <asp:RegularExpressionValidator ID="RegEx_Puesto" runat="server" ControlToValidate="txtPuesto"
                                                            ErrorMessage="Puesto inválido (Símbolos inválidos)." ForeColor="Red" ValidationExpression="(([0-9a-zA-ZÀ-ÿ ]|\-|\.)*)"
                                                            ValidationGroup="gvExperienciasLaborales">*</asp:RegularExpressionValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style38">
                                                        <asp:Label ID="lblPuesto" runat="server" Text="Empresa o institución en la que laboró"></asp:Label>
                                                    </td>
                                                    <td class="style11">
                                                        <asp:TextBox ID="txtEmpresa" runat="server" Width="460px" ToolTip="Ejemplo: Ministerio de Obras Públicas y Transporte"
                                                            onblur="this.placeholder = 'Escriba el nombre de la empresa o institución aquí'"
                                                            onfocus="this.placeholder = ''" placeholder="Escriba el nombre de la empresa o institución aquí"
                                                            MaxLength="60"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvEmpresa" runat="server" ControlToValidate="txtEmpresa"
                                                            ErrorMessage="La empresa es un dato requerido." ForeColor="Red" ValidationGroup="gvExperienciasLaborales">*</asp:RequiredFieldValidator>
                                                        <asp:RegularExpressionValidator ID="RegEx_Empresa" runat="server" ControlToValidate="txtEmpresa"
                                                            ErrorMessage="Empresa inválida (Símbolos inválidos)." ForeColor="Red" ValidationExpression="(([0-9a-zA-ZÀ-ÿ ]|\-|\.)*)"
                                                            ValidationGroup="gvExperienciasLaborales">*</asp:RegularExpressionValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style38">
                                                        &nbsp;
                                                    </td>
                                                    <td class="auto-style4">
                                                        <asp:Panel ID="PanelAgregar2" runat="server" HorizontalAlign="Right">
                                                            <asp:Button ID="btnCancelarAgregarExperiencia" runat="server" CssClass="Boton" OnClick="btnCancelarAgregarExperiencia_Click"
                                                                Text="Cancelar" TabIndex="4" />
                                                            &nbsp;&nbsp;<asp:Button ID="btnCancelarActualizarExperiencia" runat="server" CssClass="Boton"
                                                                OnClick="btnCancelarActualizarExperiencia_Click" Text="Cancelar" TabIndex="5" />
                                                            &nbsp;&nbsp;<asp:Button ID="btnAgregarExperienciaLaboral" runat="server" CssClass="Boton"
                                                                OnClick="btnAgregarExperienciaLaboral_Click" TabIndex="2" Text="Agregar" UseSubmitBehavior="False" />
                                                            &nbsp;
                                                            <asp:Button ID="btnActualizarExperienciaLaboral" runat="server" CssClass="Boton"
                                                                OnClick="btnActualizarExperienciaLaboral_Click" TabIndex="3" Text="Actualizar"
                                                                UseSubmitBehavior="False" Visible="False" />
                                                        </asp:Panel>
                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style24">
                                        &nbsp;
                                    </td>
                                    <td class="style25">
                                        &nbsp;
                                    </td>
                                    <td class="style17">
                                        &nbsp;
                                    </td>
                                    <td class="style50">
                                        &nbsp;
                                    </td>
                                    <td class="auto-style23">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style24" colspan="5">
                                        <asp:Panel ID="PanelTablaDatosExperienciasLaborales" runat="server" BorderStyle="None"
                                            BorderWidth="2px" Height="250px" ScrollBars="Auto">
                                            <asp:DataGrid ID="dgExperienciasLaborales" runat="server" AutoGenerateColumns="False"
                                                BackColor="WhiteSmoke" BorderStyle="Solid" CssClass="GridMantenimiento" Font-Names="Century Gothic"
                                                Font-Size="Small" OnItemCommand="dgExperienciasLaborales_ItemCommand" ForeColor="Black"
                                                Height="19px" Width="99%" TabIndex="4">
                                                <AlternatingItemStyle BackColor="Gainsboro" />
                                                <FooterStyle Font-Names="Century Gothic" />
                                                <HeaderStyle BackColor="Navy" Font-Bold="True" Font-Names="Century Gothic" Font-Size="Larger"
                                                    ForeColor="White" HorizontalAlign="Center" />
                                                <Columns>
                                                    <asp:BoundColumn HeaderText="Empresa" DataField="Empresa"></asp:BoundColumn>
                                                    <asp:BoundColumn HeaderText="Puesto" DataField="Puesto"></asp:BoundColumn>
                                                    <asp:TemplateColumn HeaderText="Editar">
                                                        <ItemTemplate>
                                                            <asp:ImageButton ID="ibtnEditar" runat="server" CommandName="Editar" Height="30px"
                                                                Style="display: block; margin: 0 auto" ImageUrl="~/Multimedia/icono-editar.jpg"
                                                                Width="30px" />
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="Eliminar">
                                                        <ItemTemplate>
                                                            <asp:ImageButton ID="ibtnEliminar" runat="server" CommandName="Eliminar" Height="30px"
                                                                Style="display: block; margin: 0 auto" ImageUrl="~/Multimedia/icono-eliminar.jpg"
                                                                Width="30px" />
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                </Columns>
                                            </asp:DataGrid>
                                        </asp:Panel>
                                    </td>
                                </tr>
                            </table>
                        </asp:View>
                        <br />
                        <asp:View ID="vPaso5" runat="server">
                            <table class="style14">
                                <tr>
                                    <td class="style24">
                                        <asp:Label ID="lblPaso5" runat="server" Text="Paso 5 de 7" CssClass="Titulo2"></asp:Label>
                                    </td>
                                    <td class="style25">
                                        &nbsp;
                                    </td>
                                    <td class="style17">
                                    </td>
                                    <td class="auto-style32">
                                    </td>
                                    <td class="style11">
                                        <asp:Panel ID="Panel2" runat="server" HorizontalAlign="Right">
                                            <asp:Button ID="btnCancelar5" runat="server" CssClass="Boton" OnClick="btnCancelar5_Click"
                                                TabIndex="4" Text="Salir sin guardar" UseSubmitBehavior="False" />
                                            &nbsp;
                                            <asp:Button ID="btnAtras3" runat="server" CssClass="Boton" OnClick="btnAtras3_Click"
                                                Text="Atrás" UseSubmitBehavior="False" TabIndex="3" />
                                            &nbsp;&nbsp;<asp:Button ID="btnSiguiente5" runat="server" CssClass="Boton" OnClick="btnSiguiente5_Click"
                                                Text="Siguiente" UseSubmitBehavior="False" TabIndex="2" />
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style24" colspan="2">
                                        <asp:Label ID="lblIdiomasPasatiempos" runat="server" Text="Idiomas" CssClass="Titulo3"></asp:Label>
                                    </td>
                                    <td class="style17">
                                        &nbsp;
                                    </td>
                                    <td class="auto-style32">
                                        &nbsp;
                                    </td>
                                    <td class="style11">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style24" colspan="5">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style24" colspan="5">
                                        <asp:Panel ID="PanelIdiomas" runat="server" BorderStyle="Solid" BorderWidth="2px">
                                            <table class="style14">
                                                <tr>
                                                    <td class="style56" colspan="2">
                                                        <asp:Label ID="lblIdiomas" runat="server" Text="Seleccione los idiomas en los que tenga habilidades escritas, orales, de lectura y/o de escucha"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style56">
                                                        <asp:CheckBoxList ID="chkIdiomas" runat="server" CellPadding="0" CellSpacing="0"
                                                            Height="16px" Width="450px">
                                                            <asp:ListItem>Inglés</asp:ListItem>
                                                            <asp:ListItem>Francés</asp:ListItem>
                                                            <asp:ListItem>Portugués</asp:ListItem>
                                                            <asp:ListItem>Otro</asp:ListItem>
                                                        </asp:CheckBoxList>
                                                    </td>
                                                    <td class="style30">
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style56">
                                                        &nbsp;
                                                    </td>
                                                    <td class="style30">
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style24">
                                        &nbsp;
                                    </td>
                                    <td class="style25">
                                        &nbsp;
                                    </td>
                                    <td class="style17">
                                        &nbsp;
                                    </td>
                                    <td class="auto-style32">
                                        &nbsp;
                                    </td>
                                    <td class="style11">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        </asp:View>
                        <br />
                        <asp:View ID="vPaso6" runat="server">
                            <table class="style14">
                                <tr>
                                    <td class="style24">
                                        <asp:Label ID="Label1" runat="server" Text="Paso 6 de 7" CssClass="Titulo2"></asp:Label>
                                    </td>
                                    <td class="style25">
                                        &nbsp;
                                    </td>
                                    <td class="style17">
                                    </td>
                                    <td class="auto-style32">
                                    </td>
                                    <td class="style11">
                                        <asp:Panel ID="Panel7" runat="server" HorizontalAlign="Right">
                                            <asp:Button ID="btnCancelar7" runat="server" CssClass="Boton" TabIndex="4" Text="Salir sin guardar"
                                                UseSubmitBehavior="False" OnClick="btnCancelar7_Click" />
                                            &nbsp;
                                            <asp:Button ID="btnAtras7" runat="server" CssClass="Boton" Text="Atrás" UseSubmitBehavior="False"
                                                TabIndex="3" OnClick="btnAtras7_Click" />
                                            &nbsp;&nbsp;<asp:Button ID="btnSiguiente7" runat="server" CssClass="Boton" Text="Siguiente"
                                                UseSubmitBehavior="False" TabIndex="2" OnClick="btnSiguiente7_Click" />
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style24" colspan="2">
                                        <asp:Label ID="Label2" runat="server" Text="Pasatiempo favorito" CssClass="Titulo3"></asp:Label>
                                    </td>
                                    <td class="style17">
                                        &nbsp;
                                    </td>
                                    <td class="auto-style32">
                                        &nbsp;
                                    </td>
                                    <td class="style11">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style24" colspan="5">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style24" colspan="5">
                                        <asp:Panel ID="Panel8" runat="server" BorderStyle="Solid" BorderWidth="2px">
                                            <table class="style14">
                                                <tr>
                                                    <td class="style24" colspan="5">
                                                        <asp:Panel ID="PanelIdiomas0" runat="server" BorderStyle="None" BorderWidth="2px">
                                                            <table class="style14">
                                                                <tr>
                                                                    <td colspan="3">
                                                                        <asp:Label ID="lblPasatiempos" runat="server" Text="¿Cuál es su pasatiempo favorito?"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtPasatiempos" runat="server" TabIndex="1" ToolTip="Por favor, ingrese sólo un pasatiempo. Ejemplo: Leer libros de historia."
                                                                            onblur="this.placeholder = 'Escriba su pasatiempo favorito aquí'" onfocus="this.placeholder = ''"
                                                                            placeholder="Escriba su pasatiempo favorito aquí" Width="500px" MaxLength="80"></asp:TextBox>
                                                                        <asp:RegularExpressionValidator ID="RegEx_Pasatiempo" runat="server" ControlToValidate="txtPasatiempos"
                                                                            ErrorMessage="Pasatiempo inválido (Símbolos inválidos)." ForeColor="Red" ValidationExpression="(([0-9a-zA-ZÀ-ÿ ]|\-|\.)*)"
                                                                            ValidationGroup="gvPasatiempos">*</asp:RegularExpressionValidator>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </asp:Panel>
                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                    </td>
                                </tr>
                            </table>
                        </asp:View>
                        <br />
                        <asp:View ID="vPaso7" runat="server">
                            <table class="style14">
                                <tr>
                                    <td class="auto-style30">
                                        <asp:Label ID="lblPaso7" runat="server" Text="Paso 7 de 7" CssClass="Titulo2"></asp:Label>
                                    </td>
                                    <td class="style25">
                                        &nbsp;
                                    </td>
                                    <td class="style17">
                                    </td>
                                    <td class="auto-style35">
                                    </td>
                                    <td class="style11">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style24" colspan="2">
                                        <asp:Label ID="lblTerminosCondicionesUso" runat="server" Text="Términos y condiciones de uso"
                                            CssClass="Titulo3"></asp:Label>
                                    </td>
                                    <td class="style17">
                                        &nbsp;
                                    </td>
                                    <td class="auto-style35">
                                        &nbsp;
                                    </td>
                                    <td class="style11">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style30">
                                        &nbsp;
                                    </td>
                                    <td class="style25">
                                        &nbsp;
                                    </td>
                                    <td class="style17">
                                        &nbsp;
                                    </td>
                                    <td class="auto-style35">
                                        &nbsp;
                                    </td>
                                    <td class="style11">
                                        <asp:Panel ID="Panel6" runat="server" HorizontalAlign="Right">
                                            <asp:Button ID="btnCancelar6" runat="server" CssClass="Boton" OnClick="btnCancelar6_Click"
                                                TabIndex="3" Text="Salir sin guardar" UseSubmitBehavior="False" />
                                            &nbsp;
                                            <asp:Button ID="btnAtras6" runat="server" CssClass="Boton" OnClick="btnAtras6_Click"
                                                Text="Atrás" UseSubmitBehavior="False" TabIndex="2" />
                                            &nbsp;&nbsp;<asp:Button ID="btnFinalizar" runat="server" CssClass="Boton" OnClick="btnFinalizar_Click"
                                                Text="Finalizar" TabIndex="1" />
                                        </asp:Panel>
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style24" colspan="5">
                                        <asp:Panel ID="PanelTerminosCondiciones" runat="server" BorderStyle="Solid" BorderWidth="2px"
                                            Height="170px">
                                            <table class="style14">
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="lblTextoTerminosCondiciones" runat="server" Text="Texto de términos y condiciones"></asp:Label>
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style30" colspan="5">
                                        <asp:CheckBox ID="chkAceptarTerminos" runat="server" Checked="False" Text="Acepto los términos y condiciones anteriores" />
                                    </td>
                                </tr>
                            </table>
                        </asp:View>
                        <br />
                    </asp:MultiView>
                </td>
                <td class="style9">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;
                </td>
                <td class="style22">
                    &nbsp;
                </td>
                <td class="auto-style33">
                    &nbsp;
                </td>
                <td class="style13">
                    &nbsp;
                </td>
                <td class="style22">
                    &nbsp;
                </td>
                <td class="auto-style25">
                    &nbsp;
                </td>
                <td class="style9">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;
                </td>
                <td class="style22">
                    &nbsp;
                </td>
                <td class="auto-style33">
                    &nbsp;
                </td>
                <td class="style13">
                    &nbsp;
                </td>
                <td class="style22">
                    &nbsp;
                </td>
                <td class="auto-style25">
                    &nbsp;
                </td>
                <td class="style9">
                    &nbsp;
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
