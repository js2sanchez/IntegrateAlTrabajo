<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraEmpresa.Master" AutoEventWireup="true" CodeBehind="frmEditarPerfilEmpresa.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.Empresa.frmEditarPerfilEmpresa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style3
        {
            width: 99%;
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
            width: 100%;
        }
        .style9
        {}
        .style12
        {
            height: 25px;
            }
        .style13
        {
            width: 116px;
            height: 25px;
        }
        .style14
        {
            width: 299px;
            height: 25px;
        }
        .style15
        {
            width: 26px;
            height: 25px;
        }
        .style16
        {
            width: 119px;
            height: 25px;
        }
        .style18
        {
            width: 306px;
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
        .style21
        {
            width: 125px;
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style3">
        <tr>
            <td class="style4">
            </td>
            <td class="style12">
                <asp:Label ID="lblEditarPerfilEmpresa" runat="server" Text="Editar Perfil" 
                    CssClass="Titulo1"></asp:Label>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
            </td>
            <td class="style12">
            </td>
            <td class="style6">
            </td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style12" colspan="5">
                <asp:ValidationSummary ID="vsPaso1" runat="server" 
                    ForeColor="#CC0000" ValidationGroup="gvDatosGenerales">
                </asp:ValidationSummary>
                <asp:ValidationSummary ID="vsPaso2" runat="server"
                    ForeColor="#CC0000" ValidationGroup="gvDatosCuenta">
                </asp:ValidationSummary>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5" colspan="5">
                <table class="style8">
                    <tr>
                        <td class="style9">
                            <asp:MultiView ID="mvEditarPerfil" runat="server">
                                <asp:View ID="vEPPaso1" runat="server">
                                    <table class="style8">
                                        <tr>
                                            <td class="style13">
                                                <asp:Label ID="lblPaso1E" runat="server" Text="Paso 1 de 2 " CssClass="Titulo2"></asp:Label>
                                            </td>
                                            <td class="style14">
                                                &nbsp;</td>
                                            <td class="style15">
                                                &nbsp;</td>
                                            <td class="style16">
                                                &nbsp;</td>
                                            <td class="style5">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style13">
                                                <asp:Label ID="lblNombreEmpresa" runat="server" Text="Nombre"></asp:Label>
                                            </td>
                                            <td class="style14">
                                                <asp:TextBox ID="txtNombreE" runat="server" Width="181px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfvNombreEmpresa" runat="server" ControlToValidate="txtNombreE"
                                                 ErrorMessage="El nombre de la empresa es un dato requerido." ForeColor="Red" ValidationGroup="gvDatosGenerales">*</asp:RequiredFieldValidator>
                                            </td>
                                            <td class="style15">
                                            </td>
                                            <td class="style16">
                                            </td>
                                            <td class="style5">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style13">
                                                <asp:Label ID="lblCedulaJuridica" runat="server" Text="Cédula Jurídica"></asp:Label>
                                            </td>
                                            <td class="style14">
                                                <asp:TextBox ID="txtCedulaE" runat="server" Width="177px" TextMode="Number"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCedulaE"
                                                ErrorMessage="La cédula jurídica de la empresa es un dato requerido." ForeColor="Red" ValidationGroup="gvDatosGenerales">*</asp:RequiredFieldValidator>
                                            </td>
                                            <td class="style15">
                                            </td>
                                            <td class="style16">
                                            </td>
                                            <td class="style5">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style13">
                                                <asp:Label ID="lblDescripcion" runat="server" Text="Descripción"></asp:Label>
                                            </td>
                                            <td class="style14">
                                                <asp:TextBox ID="txtDscE" runat="server" TextMode="MultiLine"></asp:TextBox>
                                            </td>
                                            <td class="style15">
                                                &nbsp;</td>
                                            <td class="style16">
                                                &nbsp;</td>
                                            <td class="style5">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style13">
                                                <asp:Label ID="lblTelefono" runat="server" Text="Teléfono"></asp:Label>
                                            </td>
                                            <td class="style14">
                                                <asp:TextBox ID="txtTelefono" runat="server" Width="181px" TextMode="Number"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtTelefono"
                                                ErrorMessage="El teléfono de la empresa es un dato requerido." ForeColor="Red" ValidationGroup="gvDatosGenerales">*</asp:RequiredFieldValidator>
                                            </td>
                                            <td class="style15">
                                                &nbsp;</td>
                                            <td class="style16">
                                                &nbsp;</td>
                                            <td class="style5">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style13">
                                                <asp:Label ID="lblEmail" runat="server" Text="Correo electrónico"></asp:Label>
                                            </td>
                                            <td class="style14">
                                                <asp:TextBox ID="txtEmail" runat="server" Width="181px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail"
                                                ErrorMessage="El correo electrónico de la empresa es un dato requerido." ForeColor="Red" ValidationGroup="gvDatosGenerales">*</asp:RequiredFieldValidator>
                                            </td>
                                            <td class="style15">
                                                &nbsp;</td>
                                            <td class="style16">
                                                &nbsp;</td>
                                            <td class="style5">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style13">
                                                <asp:Label ID="lblProvincia" runat="server" Text="Provincia"></asp:Label>
                                            </td>
                                            <td class="style14">
                                                <asp:DropDownList ID="drpProvincia" runat="server" AutoPostBack="True" 
                                                    Width="181px" onselectedindexchanged="drpProvincia_SelectedIndexChanged">
                                                </asp:DropDownList>
                                            </td>
                                            <td class="style15">
                                                &nbsp;</td>
                                            <td class="style16">
                                                &nbsp;</td>
                                            <td class="style5">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style13">
                                                <asp:Label ID="lblCanton" runat="server" Text="Cantón"></asp:Label>
                                            </td>
                                            <td class="style14">
                                                <asp:DropDownList ID="drpCanton" runat="server" AutoPostBack="True" 
                                                    Width="179px" onselectedindexchanged="drpCanton_SelectedIndexChanged">
                                                </asp:DropDownList>
                                            </td>
                                            <td class="style15">
                                                &nbsp;</td>
                                            <td class="style16">
                                                &nbsp;</td>
                                            <td class="style5">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style13">
                                                <asp:Label ID="lblDistrito" runat="server" Text="Distrito"></asp:Label>
                                            </td>
                                            <td class="style14">
                                                <asp:DropDownList ID="drpDistrito" runat="server" AutoPostBack="True" 
                                                    Width="181px">
                                                </asp:DropDownList>
                                            </td>
                                            <td class="style15">
                                                &nbsp;</td>
                                            <td class="style16">
                                                &nbsp;</td>
                                            <td class="style5">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style13">
                                                &nbsp;</td>
                                            <td class="style14">
                                                &nbsp;</td>
                                            <td class="style15">
                                                &nbsp;</td>
                                            <td class="style16">
                                                &nbsp;</td>
                                            <td class="style5">
                                                &nbsp;<asp:Button ID="btnCancelarPaso1" runat="server" Text="Cancelar" 
                                                    onclick="btnCancelarPaso1_Click" />
                                                &nbsp;&nbsp;
                                                <asp:Button ID="btnSiguiente" runat="server" onclick="btnSiguiente_Click" 
                                                    Text="Siguiente" />
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                </asp:View>
                                <br />
                                <br />
                                <asp:View ID="vEPPaso2" runat="server">
                                    <table class="style8">
                                        <tr>
                                            <td class="style21">
                                                <asp:Label ID="lblPaso2E" runat="server" Text="Paso 2 de 2" CssClass="Titulo2"></asp:Label>
                                            </td>
                                            <td class="style18">
                                                &nbsp;</td>
                                            <td class="style19">
                                            </td>
                                            <td class="style20">
                                            </td>
                                            <td class="style5">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style21">
                                                <asp:Label ID="lblNomUsuario" runat="server" Text="Nombre de usuario"></asp:Label>
                                            </td>
                                            <td class="style18">
                                                <asp:TextBox ID="txtNombreUsuario" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfvNombreUsuario" runat="server" ControlToValidate="txtNombreUsuario"
                                                ErrorMessage="El nombre de usuario es un dato requerido." ForeColor="Red" ValidationGroup="gvDatosCuenta">*</asp:RequiredFieldValidator>
                                            </td>
                                            <td class="style19">
                                                &nbsp;</td>
                                            <td class="style20">
                                                &nbsp;</td>
                                            <td class="style5">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style21">
                                                <asp:Label ID="lblContraseñaAnterior" runat="server" Text="Antigua contraseña"></asp:Label>
                                            </td>
                                            <td class="style18">
                                                <asp:TextBox ID="txtAntiguaContraseña" runat="server" TextMode="Password"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfvAC" runat="server" ControlToValidate="txtAntiguaContraseña"
                                                ErrorMessage="La contraseña es un dato requerido." ForeColor="Red" ValidationGroup="gvDatosCuenta">*</asp:RequiredFieldValidator>
                                            </td>
                                            <td class="style19">
                                                &nbsp;</td>
                                            <td class="style20">
                                                &nbsp;</td>
                                            <td class="style5">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style21">
                                                <asp:Label ID="lblNuevaContraseña" runat="server" Text="Nueva contraseña"></asp:Label>
                                            </td>
                                            <td class="style18">
                                                <asp:TextBox ID="txtNuevaContraseña" runat="server" TextMode="Password"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfvNC" runat="server" ControlToValidate="txtNuevaContraseña"
                                    ErrorMessage="La nueva contraseña es un dato requerido." ForeColor="Red" ValidationGroup="gvDatosCuenta">*</asp:RequiredFieldValidator>
                                            </td>
                                            <td class="style19">
                                            </td>
                                            <td class="style20">
                                            </td>
                                            <td class="style5">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style21">
                                                <asp:Label ID="lblConfirmación" runat="server" 
                                                    Text="Confirmación de contraseña"></asp:Label>
                                            </td>
                                            <td class="style18">
                                                <asp:TextBox ID="txtConfirmacion" runat="server" TextMode="Password"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfvConfirmacion" runat="server" ControlToValidate="txtConfirmacion"
                                                ErrorMessage="La confirmación de la contraseña es un dato requerido." ForeColor="Red" ValidationGroup="gvDatosCuenta">*</asp:RequiredFieldValidator>
                                            </td>
                                            <td class="style19">
                                                &nbsp;</td>
                                            <td class="style20">
                                                &nbsp;</td>
                                            <td class="style5">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style21">
                                                <asp:Label ID="lblIndicio" runat="server" Text="Indicio de contraseña"></asp:Label>
                                            </td>
                                            <td class="style18">
                                                <asp:TextBox ID="txtIndicio" runat="server"></asp:TextBox>
                                            </td>
                                            <td class="style19">
                                                &nbsp;</td>
                                            <td class="style20">
                                                &nbsp;</td>
                                            <td class="style5">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style21">
                                                &nbsp;</td>
                                            <td class="style18">
                                                &nbsp;</td>
                                            <td class="style19">
                                                &nbsp;</td>
                                            <td class="style20">
                                                &nbsp;</td>
                                            <td class="style5">
                                                <asp:Button ID="btnCancelarPaso2" runat="server" Text="Cancelar" 
                                                    onclick="btnCancelarPaso2_Click" />
                                                &nbsp;
                                                <asp:Button ID="btnFinalizarE" runat="server" Text="Finalizar" 
                                                    onclick="btnFinalizarE_Click" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style21">
                                                &nbsp;</td>
                                            <td class="style18">
                                                &nbsp;</td>
                                            <td class="style19">
                                                &nbsp;</td>
                                            <td class="style20">
                                                &nbsp;</td>
                                            <td class="style5">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style21">
                                                &nbsp;</td>
                                            <td class="style18">
                                                &nbsp;</td>
                                            <td class="style19">
                                                &nbsp;</td>
                                            <td class="style20">
                                                &nbsp;</td>
                                            <td class="style5">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style21">
                                                &nbsp;</td>
                                            <td class="style18">
                                                &nbsp;</td>
                                            <td class="style19">
                                                &nbsp;</td>
                                            <td class="style20">
                                                &nbsp;</td>
                                            <td class="style5">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style21">
                                                &nbsp;</td>
                                            <td class="style18">
                                                &nbsp;</td>
                                            <td class="style19">
                                                &nbsp;</td>
                                            <td class="style20">
                                                &nbsp;</td>
                                            <td class="style5">
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                    <br />
                                </asp:View>
                                <br />
                            </asp:MultiView>
                            <br />
                        </td>
                    </tr>
                </table>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
