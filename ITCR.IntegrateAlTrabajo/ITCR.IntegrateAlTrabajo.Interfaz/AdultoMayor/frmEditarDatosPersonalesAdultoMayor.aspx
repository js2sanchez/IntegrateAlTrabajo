<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraAdultoMayor.Master" AutoEventWireup="true" CodeBehind="frmEditarDatosPersonalesAdultoMayor.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.AdultoMayor.frmEditarDatosPersonalesAdultoMayor" %>
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
        .style29
        {
            width: 116px;
            height: 25px;
        }
        .style26
        {
            height: 25px;
            width: 108px;
        }
        .style27
        {
            width: 261px;
            height: 25px;
        }
        .style30
        {
            height: 25px;
        }
        .style31
        {
            width: 23px;
            height: 25px;
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
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5" colspan="5">
                <asp:Panel ID="PanelDatos" runat="server" BorderStyle="Solid" BorderWidth="2px">
                    <table class="style9">
                        <tr>
                            <td class="style26">
                                <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
                            </td>
                            <td class="style27">
                                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                            </td>
                            <td class="style31">
                                &nbsp;</td>
                            <td class="style29">
                                <asp:Label ID="lblTelefonoCelular" runat="server" Text="Teléfono celular"></asp:Label>
                            </td>
                            <td class="style6">
                                <asp:TextBox ID="txtTelefonoCelular" runat="server" TextMode="Phone"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style26">
                                <asp:Label ID="lblApellido1" runat="server" Text="Primer apellido"></asp:Label>
                            </td>
                            <td class="style27">
                                <asp:TextBox ID="txtApellido1" runat="server"></asp:TextBox>
                            </td>
                            <td class="style31">
                                &nbsp;</td>
                            <td class="style29">
                                <asp:Label ID="lblCorreoElectronico" runat="server" Text="Correo electrónico"></asp:Label>
                            </td>
                            <td class="style6">
                                <asp:TextBox ID="txtCorreoElectronico" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style26">
                                <asp:Label ID="lblApellido2" runat="server" Text="Segundo apellido"></asp:Label>
                            </td>
                            <td class="style27">
                                <asp:TextBox ID="txtApellido2" runat="server"></asp:TextBox>
                            </td>
                            <td class="style31">
                                &nbsp;</td>
                            <td class="style29">
                                <asp:Label ID="lblProvincia" runat="server" Text="Provincia"></asp:Label>
                            </td>
                            <td class="style6">
                                <asp:DropDownList ID="drpProvincia" runat="server" AutoPostBack="True" 
                                    ontextchanged="drpProvincia_TextChanged">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style26">
                                <asp:Label ID="lblSexo" runat="server" Text="Sexo"></asp:Label>
                            </td>
                            <td class="style27">
                                <asp:DropDownList ID="drpSexo" runat="server">
                                </asp:DropDownList>
                            </td>
                            <td class="style31">
                                &nbsp;</td>
                            <td class="style29">
                                <asp:Label ID="lblCanton" runat="server" Text="Cantón"></asp:Label>
                            </td>
                            <td class="style6">
                                <asp:DropDownList ID="drpCanton" runat="server" AutoPostBack="True" 
                                    ontextchanged="drpCanton_TextChanged">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style26">
                                <asp:Label ID="lblCedula" runat="server" Text="Cédula"></asp:Label>
                            </td>
                            <td class="style27">
                                <asp:TextBox ID="txtCedula" runat="server"></asp:TextBox>
                            </td>
                            <td class="style31">
                                &nbsp;</td>
                            <td class="style29">
                                <asp:Label ID="lblDistrito" runat="server" Text="Distrito"></asp:Label>
                            </td>
                            <td class="style6">
                                <asp:DropDownList ID="drpDistrito" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style26">
                                <asp:Label ID="lblFechaNacimiento" runat="server" Text="Fecha de nacimiento"></asp:Label>
                            </td>
                            <td class="style27">
                                <asp:TextBox ID="txtFechaNacimiento" runat="server"></asp:TextBox>
                            </td>
                            <td class="style31">
                                &nbsp;</td>
                            <td class="style29">
                                &nbsp;</td>
                            <td class="style6">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style26">
                                <asp:Label ID="lblTelefonoHabitacion" runat="server" 
                                    Text="Teléfono de habitación"></asp:Label>
                            </td>
                            <td class="style27">
                                <asp:TextBox ID="txtTelefonoHabitacion" runat="server" TextMode="Phone"></asp:TextBox>
                            </td>
                            <td class="style31">
                                &nbsp;</td>
                            <td class="style29">
                                &nbsp;</td>
                            <td class="style6">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Panel ID="PanelBotonActualizar" runat="server" 
                                    HorizontalAlign="Right" Width="255px">
                                    <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" 
                                        onclick="btnActualizar_Click" CssClass="Boton" />
                                </asp:Panel>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
