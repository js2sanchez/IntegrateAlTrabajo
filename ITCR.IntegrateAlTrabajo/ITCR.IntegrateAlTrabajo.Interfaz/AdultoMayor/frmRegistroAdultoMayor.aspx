<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmRegistroAdultoMayor.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.AdultoMayor.frmRegistroAdultoMayor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style8
        {
            width: 98%;
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
        .style30
        {
            height: 25px;
        }
        .style31
        {
            width: 299px;
        }
        .style32
        {
            width: 25px;
        }
        .style33
        {
            width: 118px;
        }
        .style35
        {
            width: 240px;
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style8">
        <tr>
            <td class="style10">
            </td>
            <td class="style22">
            </td>
            <td class="style12">
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
                &nbsp;</td>
            <td class="style11" colspan="2">
                <asp:Label ID="lblRegistroAdultoMayor" runat="server" 
                    Text="Registro de Adulto Mayor" CssClass="Titulo1"></asp:Label>
            </td>
            <td class="style13">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style11" colspan="5">
                <asp:ValidationSummary ID="vsRegistroAdultoMayor" runat="server" 
                    ForeColor="#CC0000" ValidationGroup="gvDatosPersonales" />
                <asp:ValidationSummary runat="server" ID="vsDatosAutenticacionPersona" 
                    ValidationGroup="gvDatosAutenticacion" ForeColor="#CC0000">
                </asp:ValidationSummary>
                <asp:ValidationSummary runat="server" ID="vsEstudios" ForeColor="#CC0000" 
                    ValidationGroup="gvEstudios">
                </asp:ValidationSummary>
                <asp:ValidationSummary runat="server" ForeColor="#CC0000" 
                    ID="vsExperienciasLaborales" ValidationGroup="gvExperienciasLaborales">
                </asp:ValidationSummary>

            </td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style11" colspan="5">
                <asp:MultiView ID="mvRegistroAdultoMayor" runat="server">
                    <asp:View ID="vPaso1" runat="server">
                        <table class="style14">
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblPaso1" runat="server" Text="Paso 1 de 6" CssClass="Titulo2"></asp:Label>
                                </td>
                                <td class="style25">
                                    &nbsp;</td>
                                <td class="style17">
                                </td>
                                <td class="style20">
                                </td>
                                <td class="style11">
                                </td>
                            </tr>
                            <tr>
                                <td class="style24" colspan="2">
                                    <asp:Label ID="lblDatosPersonales" runat="server" Text="Datos personales" 
                                        CssClass="Titulo3"></asp:Label>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
                                </td>
                                <td class="style25">
                                    <asp:TextBox ID="txtNombrePersona" runat="server" ToolTip="Laura"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvNombrePersona" runat="server" ControlToValidate="txtNombrePersona"
                                    ErrorMessage="El nombre de la persona es un dato requerido." ForeColor="Red" ValidationGroup="gvDatosPersonales">*</asp:RequiredFieldValidator>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblApellido1" runat="server" Text="Primer apellido"></asp:Label>
                                </td>
                                <td class="style25">
                                    <asp:TextBox ID="txtApellido1" runat="server" ToolTip="Brenes"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvApellido1Persona" runat="server" ControlToValidate="txtApellido1"
                                    ErrorMessage="El primer apellido es un dato requerido." ForeColor="Red" ValidationGroup="gvDatosPersonales">*</asp:RequiredFieldValidator>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblApellido2" runat="server" Text="Segundo apellido"></asp:Label>
                                </td>
                                <td class="style25">
                                    <asp:TextBox ID="txtApellido2" runat="server" ToolTip="Fernández"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvApellido2Persona" runat="server" ControlToValidate="txtApellido2"
                                    ErrorMessage="El segundo apellido es un dato requerido." ForeColor="Red" ValidationGroup="gvDatosPersonales">*</asp:RequiredFieldValidator>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblSexo" runat="server" Text="Sexo"></asp:Label>
                                </td>
                                <td class="style25">
                                    <asp:DropDownList ID="drpSexo" runat="server">
                                    </asp:DropDownList>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblCedula" runat="server" Text="Cédula"></asp:Label>
                                </td>
                                <td class="style25">
                                    <asp:TextBox ID="txtCedula" runat="server"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="revCedula" runat="server" ControlToValidate="txtCedula"
                                    ErrorMessage="El número de cédula introducido es inválido." ForeColor="Red" ValidationExpression="([0-9]*)"
                                    ValidationGroup="gvDatosPersonales">*</asp:RegularExpressionValidator>
                                    <asp:RequiredFieldValidator ID="rfvCedula" runat="server" ControlToValidate="txtCedula"
                                    ErrorMessage="El número de cédula es un dato requerido." ForeColor="Red" ValidationGroup="gvDatosPersonales">*</asp:RequiredFieldValidator>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblFechaNacimiento" runat="server" Text="Fecha de nacimiento"></asp:Label>
                                </td>
                                <td class="style25">
                                    <asp:TextBox ID="txtFechaNacimiento" runat="server" TextMode="Date"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvFechaNacimiento" runat="server" ControlToValidate="txtFechaNacimiento"
                                    ErrorMessage="La fecha de nacimiento es un dato requerido." ForeColor="Red" ValidationGroup="gvDatosPersonales">*</asp:RequiredFieldValidator>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblTelefonoHabitacion" runat="server" 
                                        Text="Teléfono de habitación"></asp:Label>
                                </td>
                                <td class="style25">
                                    <asp:TextBox ID="txtTelefonoHabitacion" runat="server" TextMode="Phone"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="revTelefonoHabitacion" runat="server" ControlToValidate="txtTelefonoHabitacion"
                                    ErrorMessage="El número de teléfono de habitación introducido es inválido." ForeColor="Red" ValidationExpression="([0-9]*)"
                                    ValidationGroup="gvDatosPersonales">*</asp:RegularExpressionValidator>
                                    <asp:RequiredFieldValidator ID="rfvTelefonoHabitacion" runat="server" ControlToValidate="txtTelefonoHabitacion"
                                    ErrorMessage="El número de teléfono de habitación es un dato requerido." ForeColor="Red" ValidationGroup="gvDatosPersonales">*</asp:RequiredFieldValidator>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblTelefonoCelular" runat="server" Text="Teléfono celular"></asp:Label>
                                </td>
                                <td class="style25">
                                    <asp:TextBox ID="txtCelular" runat="server" TextMode="Phone"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="revCelular" runat="server" ControlToValidate="txtCelular"
                                    ErrorMessage="El número de celular introducido es inválido." ForeColor="Red" ValidationExpression="([0-9]*)"
                                    ValidationGroup="gvDatosPersonales">*</asp:RegularExpressionValidator>
                                    <asp:RequiredFieldValidator ID="rfvCelular" runat="server" ControlToValidate="txtCelular"
                                    ErrorMessage="El número de celular es un dato requerido." ForeColor="Red" ValidationGroup="gvDatosPersonales">*</asp:RequiredFieldValidator>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblCorreoElectronico" runat="server" Text="Correo electrónico"></asp:Label>
                                </td>
                                <td class="style25">
                                    <asp:TextBox ID="txtCorreoElectronico" runat="server" TextMode="Email"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvCorreoElectronico" runat="server" ControlToValidate="txtCorreoElectronico"
                                    ErrorMessage="El correo electrónico es un dato requerido." ForeColor="Red" ValidationGroup="gvDatosPersonales">*</asp:RequiredFieldValidator>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblProvincia" runat="server" Text="Provincia"></asp:Label>
                                </td>
                                <td class="style25">
                                    <asp:DropDownList ID="drpProvincia" runat="server" AutoPostBack="True" 
                                        onselectedindexchanged="drpProvincia_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblCanton" runat="server" Text="Cantón"></asp:Label>
                                </td>
                                <td class="style31">
                                    <asp:DropDownList ID="drpCanton" runat="server" AutoPostBack="True" 
                                        onselectedindexchanged="drpCanton_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </td>
                                <td class="style32">
                                    </td>
                                <td class="style33">
                                    </td>
                                <td>
                                    </td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblDistrito" runat="server" Text="Distrito"></asp:Label>
                                </td>
                                <td class="style25">
                                    <asp:DropDownList ID="drpDistrito" runat="server">
                                    </asp:DropDownList>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    &nbsp;</td>
                                <td class="style25" colspan="4">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Panel ID="Panel1" runat="server" HorizontalAlign="Right">
                                        <asp:Button ID="btnCancelar1" runat="server" CssClass="Boton" 
                                            onclick="btnCancelar1_Click" Text="Cancelar" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="btnSiguiente1" runat="server" CssClass="Boton" 
                                            onclick="btnSiguiente1_Click" Text="Siguiente" />
                                    </asp:Panel>
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <br />
                    <asp:View ID="vPaso2" runat="server">
                        <table class="style14">
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblPaso2" runat="server" Text="Paso 2 de 6" CssClass="Titulo2"></asp:Label>
                                </td>
                                <td class="style35">
                                    &nbsp;</td>
                                <td class="style17">
                                </td>
                                <td class="style20">
                                </td>
                                <td class="style11">
                                </td>
                            </tr>
                            <tr>
                                <td class="style24" colspan="2">
                                    <asp:Label ID="lblDatosAutenticacion" runat="server" 
                                        Text="Datos de autenticación" CssClass="Titulo3"></asp:Label>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblNombreUsuario" runat="server" Text="Nombre de usuario"></asp:Label>
                                </td>
                                <td class="style35">
                                    <asp:TextBox ID="txtNombreUsuario" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvNombreUsuario" runat="server" ControlToValidate="txtNombreUsuario"
                                    ErrorMessage="El nombre de usuario es un dato requerido." ForeColor="Red" ValidationGroup="gvDatosAutenticacion">*</asp:RequiredFieldValidator>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblContraseña" runat="server" Text="Contraseña"></asp:Label>
                                </td>
                                <td class="style35">
                                    <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="txtContraseña"
                                    ErrorMessage="La contraseña es un dato requerido." ForeColor="Red" ValidationGroup="gvDatosAutenticacion">*</asp:RequiredFieldValidator>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblConfirmacionContraseña" runat="server" 
                                        Text="Confirmación de contraseña"></asp:Label>
                                </td>
                                <td class="style35">
                                    <asp:TextBox ID="txtConfirmacionContraseña" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvConfirmacionContraseña" runat="server" ControlToValidate="txtConfirmacionContraseña"
                                    ErrorMessage="Es necesario confirmar la contraseña." ForeColor="Red" ValidationGroup="gvDatosAutenticacion">*</asp:RequiredFieldValidator>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblIndicioContraseña" runat="server" 
                                        Text="Indicio de contraseña"></asp:Label>
                                </td>
                                <td class="style35">
                                    <asp:TextBox ID="txtIndicioContraseña" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvIndicioContraseña" runat="server" ControlToValidate="txtIndicioContraseña"
                                    ErrorMessage="El indicio de contraseña es un dato requerido." ForeColor="Red" ValidationGroup="gvDatosAutenticacion">*</asp:RequiredFieldValidator>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24" colspan="5">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Panel ID="Panel3" runat="server" HorizontalAlign="Right">
                                        <asp:Button ID="btnAtras" runat="server" CssClass="Boton" 
                                            onclick="btnAtras_Click" Text="Atrás" />
                                        &nbsp;
                                        <asp:Button ID="btnCancelar2" runat="server" CssClass="Boton" Text="Cancelar" />
                                        &nbsp;&nbsp;&nbsp;<asp:Button ID="btnSiguiente2" runat="server" CssClass="Boton" 
                                            onclick="btnSiguiente2_Click" Text="Siguiente" />
                                        &nbsp;</asp:Panel>
                                    &nbsp;&nbsp;&nbsp;&nbsp;</td>
                            </tr>
                        </table>
                    </asp:View>
                    <br />
                    <asp:View ID="vPaso3" runat="server">
                        <table class="style14">
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblPaso3" runat="server" Text="Paso 3 de 6" CssClass="Titulo2"></asp:Label>
                                </td>
                                <td class="style25">
                                    &nbsp;</td>
                                <td class="style17">
                                </td>
                                <td class="style20">
                                </td>
                                <td class="style11">
                                </td>
                            </tr>
                            <tr>
                                <td class="style24" colspan="2">
                                    <asp:Label ID="lblEstudios" runat="server" Text="Estudios" CssClass="Titulo3"></asp:Label>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
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
                                                    ErrorMessage="El año inicial es un dato requerido." ForeColor="Red" ValidationGroup="gvEstudios">*</asp:RequiredFieldValidator>
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
                                                    ErrorMessage="El año final es un dato requerido." ForeColor="Red" ValidationGroup="gvEstudios">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style26">
                                                    <asp:Label ID="lblInstitucion" runat="server" Text="Institución"></asp:Label>
                                                </td>
                                                <td class="style27">
                                                    <asp:TextBox ID="txtInstitucionEstudio" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfvInstitucionEstudio" runat="server" ControlToValidate="txtInstitucionEstudio"
                                                    ErrorMessage="La institución es un dato requerido." ForeColor="Red" ValidationGroup="gvEstudios">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td class="style28">
                                                    &nbsp;</td>
                                                <td class="style29">
                                                    <asp:Label ID="lblTitulo" runat="server" Text="Título"></asp:Label>
                                                </td>
                                                <td class="style11">
                                                    <asp:TextBox ID="txtTituloEstudio" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfvTituloEstudio" runat="server" ControlToValidate="txtTituloEstudio"
                                                    ErrorMessage="El título es un dato requerido." ForeColor="Red" ValidationGroup="gvEstudios">*</asp:RequiredFieldValidator>
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
                                                    <asp:Panel ID="PanelAgregar1" runat="server" HorizontalAlign="Right">
                                                        <asp:Button ID="btnAgregarEstudio" runat="server" CssClass="Boton" 
                                                            onclick="btnAgregarEstudio_Click" Text="Agregar" />
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
                                            Width="99%">
                                            <AlternatingItemStyle BackColor="Gainsboro" />
                                            <HeaderStyle BackColor="Navy" Font-Bold="True" Font-Names="Century Gothic" 
                                                Font-Size="Larger" ForeColor="White" HorizontalAlign="Center" />
                                            <Columns>
                                                <asp:BoundColumn HeaderText="Año inicial" DataField="AnnoInicial"></asp:BoundColumn>
                                                <asp:BoundColumn HeaderText="Año final" DataField="AnnoFinal"></asp:BoundColumn>
                                                <asp:BoundColumn HeaderText="Institución" DataField="Institucion"></asp:BoundColumn>
                                                <asp:BoundColumn HeaderText="Título" DataField="Titulo"></asp:BoundColumn>
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
                                <td class="style20" colspan="2">
                                    <asp:Panel ID="Panel4" runat="server" HorizontalAlign="Right">
                                        <asp:Button ID="btnAtras1" runat="server" CssClass="Boton" 
                                            onclick="btnAtras1_Click" Text="Atrás" />
                                        &nbsp;&nbsp;
                                        <asp:Button ID="btnCancelar3" runat="server" CssClass="Boton" 
                                            onclick="btnCancelar3_Click" Text="Cancelar" />
                                        &nbsp;&nbsp;
                                        <asp:Button ID="btnSiguiente3" runat="server" CssClass="Boton" 
                                            onclick="btnSiguiente3_Click" Text="Siguiente" />
                                    </asp:Panel>
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <br />
                    <asp:View ID="vPaso4" runat="server">
                        <table class="style14">
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblPaso4" runat="server" Text="Paso 4 de 6" CssClass="Titulo2"></asp:Label>
                                </td>
                                <td class="style25">
                                    &nbsp;</td>
                                <td class="style17">
                                </td>
                                <td class="style20">
                                </td>
                                <td class="style11">
                                </td>
                            </tr>
                            <tr>
                                <td class="style24" colspan="2">
                                    <asp:Label ID="lblExperienciasLaborales" runat="server" 
                                        Text="Experiencias laborales" CssClass="Titulo3"></asp:Label>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
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
                                    <asp:Panel ID="PanelIngresoDatos0" runat="server" BorderStyle="Solid" 
                                        BorderWidth="2px">
                                        <table class="style14">
                                            <tr>
                                                <td class="style26">
                                                    <asp:Label ID="lblAñoInicial2" runat="server" Text="Año inicial"></asp:Label>
                                                </td>
                                                <td class="style27">
                                                    <asp:TextBox ID="txtAñoInicialExperienciaLaboral" runat="server"></asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="revAñoInicialExperienciaLaboral" runat="server" ControlToValidate="txtAñoInicialExperienciaLaboral"
                                                    ErrorMessage="El año inicial introducido es inválido." ForeColor="Red" ValidationExpression="([0-9]{4})"
                                                    ValidationGroup="gvExperienciasLaborales">*</asp:RegularExpressionValidator>
                                                    <asp:RequiredFieldValidator ID="rfvAñoInicialExperienciaLaboral" runat="server" ControlToValidate="txtAñoInicialExperienciaLaboral"
                                                    ErrorMessage="El año inicial es un dato requerido." ForeColor="Red" ValidationGroup="gvExperienciasLaborales">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td class="style28">
                                                </td>
                                                <td class="style29">
                                                    <asp:Label ID="lblAñoFinal2" runat="server" Text="Año final"></asp:Label>
                                                </td>
                                                <td class="style11">
                                                    <asp:TextBox ID="txtAñoFinalExperienciaLaboral" runat="server"></asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="revAñoFinalExperienciaLaboral" runat="server" ControlToValidate="txtAñoFinalExperienciaLaboral"
                                                    ErrorMessage="El año final introducido es inválido." ForeColor="Red" ValidationExpression="([0-9]{4})"
                                                    ValidationGroup="gvExperienciasLaborales">*</asp:RegularExpressionValidator>
                                                    <asp:RequiredFieldValidator ID="rfvAñoFinalExperienciaLaboral" runat="server" ControlToValidate="txtAñoFinalExperienciaLaboral"
                                                    ErrorMessage="El año final es un dato requerido." ForeColor="Red" ValidationGroup="gvExperienciasLaborales">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style26">
                                                    <asp:Label ID="lblEmpresa" runat="server" Text="Empresa"></asp:Label>
                                                </td>
                                                <td class="style27">
                                                    <asp:TextBox ID="txtEmpresa" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfvEmpresa" runat="server" ControlToValidate="txtEmpresa"
                                                    ErrorMessage="La empresa es un dato requerido." ForeColor="Red" ValidationGroup="gvExperienciasLaborales">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td class="style28">
                                                    &nbsp;</td>
                                                <td class="style29">
                                                    <asp:Label ID="lblPuesto" runat="server" Text="Puesto"></asp:Label>
                                                </td>
                                                <td class="style11">
                                                    <asp:TextBox ID="txtPuesto" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfvPuesto" runat="server" ControlToValidate="txtPuesto"
                                                    ErrorMessage="El puesto es un dato requerido." ForeColor="Red" ValidationGroup="gvExperienciasLaborales">*</asp:RequiredFieldValidator>
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
                                                    <asp:Panel ID="PanelAgregar2" runat="server" HorizontalAlign="Right">
                                                        <asp:Button ID="btnAgregarExperienciaLaboral" runat="server" CssClass="Boton" 
                                                            onclick="btnAgregarExperienciaLaboral_Click" Text="Agregar" />
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
                                            ForeColor="Black" Height="19px" Width="99%">
                                            <AlternatingItemStyle BackColor="Gainsboro" />
                                            <FooterStyle Font-Names="Century Gothic" />
                                            <HeaderStyle BackColor="Navy" Font-Bold="True" Font-Names="Century Gothic" 
                                                Font-Size="Larger" ForeColor="White" HorizontalAlign="Center" />
                                            <Columns>
                                                <asp:BoundColumn HeaderText="Año inicial" DataField="AnnoInicial">
                                                </asp:BoundColumn>
                                                <asp:BoundColumn HeaderText="Año final" DataField="AnnoFinal"></asp:BoundColumn>
                                                <asp:BoundColumn HeaderText="Empresa" DataField="Empresa"></asp:BoundColumn>
                                                <asp:BoundColumn HeaderText="Puesto" DataField="Puesto"></asp:BoundColumn>
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
                                    <asp:Panel ID="Panel5" runat="server" HorizontalAlign="Right">
                                        <asp:Button ID="btnAtras2" runat="server" CssClass="Boton" 
                                            onclick="btnAtras2_Click" Text="Atrás" />
                                        &nbsp;&nbsp;
                                        <asp:Button ID="btnCancelar4" runat="server" CssClass="Boton" 
                                            onclick="btnCancelar4_Click" Text="Cancelar" />
                                        &nbsp;&nbsp;
                                        <asp:Button ID="btnSiguiente4" runat="server" CssClass="Boton" 
                                            onclick="btnSiguiente4_Click" Text="Siguiente" />
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
                                    <asp:Label ID="lblPaso5" runat="server" Text="Paso 5 de 6" CssClass="Titulo2"></asp:Label>
                                </td>
                                <td class="style25">
                                    &nbsp;</td>
                                <td class="style17">
                                </td>
                                <td class="style20">
                                </td>
                                <td class="style11">
                                </td>
                            </tr>
                            <tr>
                                <td class="style24" colspan="2">
                                    <asp:Label ID="lblIdiomasPasatiempos" runat="server" 
                                        Text="Idiomas y pasatiempos" CssClass="Titulo3"></asp:Label>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
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
                                    <asp:Panel ID="PanelIdiomas" runat="server" BorderStyle="Solid" 
                                        BorderWidth="2px">
                                        <table class="style14">
                                            <tr>
                                                <td class="style26">
                                                    <asp:Label ID="lblIdiomas" runat="server" Text="Idiomas"></asp:Label>
                                                </td>
                                                <td class="style30">
                                                    <asp:CheckBoxList ID="chkIdiomas" runat="server" CellPadding="0" 
                                                        CellSpacing="0" Height="16px" RepeatDirection="Horizontal" Width="744px">
                                                        <asp:ListItem>Inglés</asp:ListItem>
                                                        <asp:ListItem>Francés</asp:ListItem>
                                                        <asp:ListItem>Portugués</asp:ListItem>
                                                        <asp:ListItem>Mandarín</asp:ListItem>
                                                        <asp:ListItem>Otro</asp:ListItem>
                                                    </asp:CheckBoxList>
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
                                    <asp:Panel ID="PanelIdiomas0" runat="server" BorderStyle="Solid" 
                                        BorderWidth="2px">
                                        <table class="style14">
                                            <tr>
                                                <td class="style26">
                                                    <asp:Label ID="lblPasatiempos" runat="server" Text="Pasatiempos"></asp:Label>
                                                </td>
                                                <td class="style30">
                                                    <asp:TextBox ID="txtPasatiempos" runat="server" Height="80px" 
                                                        TextMode="MultiLine" Width="740px"></asp:TextBox>
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
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Panel ID="Panel2" runat="server" HorizontalAlign="Right">
                                        <asp:Button ID="btnAtras3" runat="server" CssClass="Boton" 
                                            onclick="btnAtras3_Click" Text="Atrás" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="btnCancelar5" runat="server" CssClass="Boton" 
                                            onclick="btnCancelar5_Click" Text="Cancelar" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="btnSiguiente5" runat="server" CssClass="Boton" 
                                            onclick="btnSiguiente5_Click" Text="Siguiente" />
                                    </asp:Panel>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <br />
                    <asp:View ID="vPaso6" runat="server">
                        <table class="style14">
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblPaso6" runat="server" Text="Paso 6 de 6" CssClass="Titulo2"></asp:Label>
                                </td>
                                <td class="style25">
                                    &nbsp;</td>
                                <td class="style17">
                                </td>
                                <td class="style20">
                                </td>
                                <td class="style11">
                                </td>
                            </tr>
                            <tr>
                                <td class="style24" colspan="2">
                                    <asp:Label ID="lblTerminosCondicionesUso" runat="server" 
                                        Text="Términos y condiciones de uso" CssClass="Titulo3"></asp:Label>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24" colspan="5">
                                    <asp:Panel ID="PanelTerminosCondiciones" runat="server" BorderStyle="Solid" 
                                        BorderWidth="2px" Height="170px">
                                        <table class="style14">
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lblTextoTerminosCondiciones" runat="server" 
                                                        Text="Texto de términos y condiciones"></asp:Label>
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
                                                    <asp:CheckBox ID="chkAceptarTerminos" runat="server" 
                                                        Text="Acepto los términos y condiciones anteriores" AutoPostBack="True" 
                                                        oncheckedchanged="chkAceptarTerminos_CheckedChanged" />
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
                                <td class="style24">
                                    &nbsp;</td>
                                <td class="style25">
                                    &nbsp;</td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    <asp:Panel ID="Panel6" runat="server" HorizontalAlign="Right">
                                        <asp:Button ID="btnCancelar6" runat="server" CssClass="Boton" 
                                            onclick="btnCancelar6_Click" Text="Cancelar" />
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="btnFinalizar" runat="server" CssClass="Boton" 
                                            onclick="btnFinalizar_Click" Text="Finalizar" />
                                    </asp:Panel>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                            </tr>
                        </table>
                    </asp:View>
                    <br />
                </asp:MultiView>
            </td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
