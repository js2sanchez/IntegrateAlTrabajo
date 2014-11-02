<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraEmpresa.Master" AutoEventWireup="true"
    CodeBehind="frmEditarDatosGeneralesEmpresa.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.Empresa.frmEditarDatosGeneralesEmpresa" %>

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
            width: 200px;
        }
        .style9
        {
            width: 15px;
        }
        .style10
        {
            width: 100%;
        }
        .style16
        {
            height: 25px;
        }
        .style18
        {
        }
        .style19
        {
            width: 351px;
            height: 25px;
        }
        .style20
        {
            width: 166px;
        }
        .style21
        {
            width: 123px;
        }
        .style22
        {
            width: 337px;
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style3">
        <tr>
            <td class="style4">
                &nbsp;
            </td>
            <td class="style5" colspan="2">
                <asp:Label ID="lblActualizarDatosGenerales" runat="server" CssClass="Titulo1" Text="Actualizar datos generales"></asp:Label>
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style5">
                &nbsp;
            </td>
            <td class="style8">
                &nbsp;
            </td>
            <td class="style9">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;
            </td>
            <td class="style5" colspan="5">
                <asp:ValidationSummary ID="vsPaso1" runat="server" ForeColor="#CC0000" ValidationGroup="gvDatosGenerales">
                </asp:ValidationSummary>
            </td>
            <td class="style9">
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
            <td class="style8">
                &nbsp;
            </td>
            <td class="style9">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;
            </td>
            <td class="style5" colspan="5">
                <asp:Panel ID="PanelActualizarDatosGenerales" runat="server" BorderWidth="2px">
                    <table class="style10">
                        <tr>
                            <td class="style18" colspan="4">
                                <asp:Panel ID="PanelBotonAplicar" runat="server" HorizontalAlign="Right">
                                    <asp:Button ID="btnCancelarActualización" runat="server" CssClass="Boton" 
                                        OnClick="btnCancelarActualización_Click" TabIndex="9" Text="Cancelar" />
                                    &nbsp;
                                    <asp:Button ID="btnAplicarCambios" runat="server" CssClass="Boton" 
                                        OnClick="btnAplicarCambios_Click" TabIndex="8" Text="Aplicar cambios" />
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td class="style21">
                                &nbsp;</td>
                            <td class="style22">
                                &nbsp;</td>
                            <td class="style16">
                                &nbsp;</td>
                            <td class="style5">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style21">
                                <asp:Label ID="lblNombreEmpresa" runat="server" Text="Nombre"></asp:Label>
                            </td>
                            <td class="style22">
                                <asp:TextBox ID="txtNombreE" runat="server" Enabled="False" Width="300px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvNombreEmpresa" runat="server" 
                                    ControlToValidate="txtNombreE" 
                                    ErrorMessage="El nombre de la empresa es un dato requerido, por lo que debe introducir un valor válido." ForeColor="Red" 
                                    ValidationGroup="gvDatosGenerales">*</asp:RequiredFieldValidator>
                            </td>
                            <td class="style16">
                                <asp:Label ID="lblEmail" runat="server" Text="Correo electrónico"></asp:Label>
                            </td>
                            <td class="style5">
                                <asp:TextBox ID="txtEmail" runat="server" 
                                    onblur="this.placeholder = 'Escriba el correo electrónico aquí'" 
                                    onfocus="this.placeholder = ''" 
                                    placeholder="Escriba el correo electrónico aquí" TabIndex="4" 
                                    ToolTip="Ejemplo: recursos-humanos@intel.com" Width="300px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="txtEmail" 
                                    ErrorMessage="El correo electrónico de la empresa es un dato requerido, por lo que debe introducir un valor válido." 
                                    ForeColor="Red" ValidationGroup="gvDatosGenerales">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revEmail" runat="server" 
                                    ControlToValidate="txtEmail" ErrorMessage="El correo electrónico proporcionado tiene un formato inválido, asegúrese que únicamente contenga símbolos válidos." 
                                    ForeColor="Red" ValidationExpression=".+@.+\..+" 
                                    ValidationGroup="gvDatosGenerales">*</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style21">
                                <asp:Label ID="lblCedulaJuridica" runat="server" Text="Cédula Jurídica"></asp:Label>
                            </td>
                            <td class="style22">
                                <asp:TextBox ID="txtCedulaE" runat="server" Width="300px" Enabled="False" TabIndex="1"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCedulaE"
                                    ErrorMessage="La cédula jurídica de la empresa es un dato requerido, por lo que debe introducir un valor válido." ForeColor="Red"
                                    ValidationGroup="gvDatosGenerales">*</asp:RequiredFieldValidator>
                            </td>
                            <td class="style16">
                                <asp:Label ID="lblProvincia" runat="server" Text="Provincia"></asp:Label>
                            </td>
                            <td class="style5">
                                <asp:DropDownList ID="drpProvincia" runat="server" AutoPostBack="True" 
                                    OnSelectedIndexChanged="drpProvincia_SelectedIndexChanged" TabIndex="5" 
                                    Width="181px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style21">
                                <asp:Label ID="lblDescripcion" runat="server" Text="Descripción"></asp:Label>
                            </td>
                            <td class="style22">
                                <asp:TextBox ID="txtDscE" runat="server" TextMode="MultiLine" Height="50px" Width="300px"
                                    onblur="this.placeholder = 'Escriba la descripción aquí'" onfocus="this.placeholder = ''"
                                    placeholder="Escriba la descripción aquí." ToolTip="Ejemplo: Intel diseña y construye las tecnologías escenciales que sirven como base para los dispositivos del mundo computacional."
                                    TabIndex="2"></asp:TextBox>
                            </td>
                            <td class="style16">
                                &nbsp;
                                <asp:Label ID="lblCanton" runat="server" Text="Cantón"></asp:Label>
                            </td>
                            <td class="style5">
                                &nbsp;
                                <asp:DropDownList ID="drpCanton" runat="server" AutoPostBack="True" 
                                    OnSelectedIndexChanged="drpCanton_SelectedIndexChanged" TabIndex="6" 
                                    Width="179px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style21">
                                <asp:Label ID="lblTelefono" runat="server" Text="Teléfono"></asp:Label>
                            </td>
                            <td class="style22">
                                <asp:TextBox ID="txtTelefono" runat="server" Width="300px" MaxLength="8" TabIndex="3"
                                    onblur="this.placeholder = 'Escriba el teléfono aquí'" onfocus="this.placeholder = ''"
                                    placeholder="Escriba el teléfono aquí" ToolTip="Ejemplo: 25511922. Por favor, no utilice guiones."></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtTelefono"
                                    ErrorMessage="El teléfono de la empresa es un dato requerido, por lo que debe introducir un valor válido." ForeColor="Red"
                                    ValidationGroup="gvDatosGenerales">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revTelefono" runat="server" ControlToValidate="txtTelefono"
                                    ErrorMessage="El número de teléfono introducido es inválido, asegúrese que únicamente contenga símbolos válidos." ForeColor="Red"
                                    ValidationExpression="([26789][0-9]*)" ValidationGroup="gvDatosGenerales">*</asp:RegularExpressionValidator>
                            </td>
                            <td class="style16">
                                &nbsp;
                                <asp:Label ID="lblDistrito" runat="server" Text="Distrito"></asp:Label>
                            </td>
                            <td class="style5">
                                &nbsp;
                                <asp:DropDownList ID="drpDistrito" runat="server" AutoPostBack="True" 
                                    TabIndex="7" Width="181px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="style9">
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
            <td class="style8">
                &nbsp;
            </td>
            <td class="style9">
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
