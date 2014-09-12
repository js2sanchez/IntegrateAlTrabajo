<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraAdministrador.Master" AutoEventWireup="true" CodeBehind="frmCambiarEstadoPerfilPersona.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.Administrador.frmCambiarEstadoPerfilPersona" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link rel="stylesheet" href="../Styles/bootstrap.min.css" />
    <style type="text/css">
        .style3
        {
            width: 97%;
            height: 25px;
        }
        .style4
        {}
        .style5
        {}
        .style6
        {
            width: 250px;
        }
        .style7
        {
            width: 20px;
        }
        .style8
        {
            width: 15px;
        }
        .style9
        {
        }
        .style10
        {
        }
        .style11
        {
        }
        .style12
        {
    }
        .auto-style1 {
            width: 15px;
            height: 24px;
        }
        .auto-style2 {
            height: 24px;
        }
        .auto-style3 {
            width: 250px;
            height: 24px;
        }
        .auto-style4 {
            width: 20px;
            height: 24px;
        }
        .auto-style5 {
            width: 15px;
            height: 25px;
        }
        .auto-style6 {
            height: 25px;
        }
        .auto-style7 {
            width: 20px;
            height: 25px;
        }
        .auto-style8 {
            width: 250px;
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
        function cambioEstado() {
            bootbox.alert("Los cambios sobre los estados de los perfiles se aplicaron correctamente.");
        }

    </script>
    <table class="style3">
        <tr>
            <td class="style8">
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
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style12" colspan="2">
                <asp:Label ID="lblActivarDesactivarEstado" runat="server" 
                    Text="Activar/Desactivar Estado" CssClass="Titulo1"></asp:Label>
            </td>
            <td class="style7">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                </td>
            <td class="auto-style2">
                </td>
            <td class="auto-style3">
                </td>
            <td class="auto-style4">
                </td>
            <td class="auto-style2">
                </td>
            <td class="auto-style3">
                                <asp:Panel ID="PanelBotonActualizar" runat="server" HorizontalAlign="Right" 
                                    Width="441px">
                                    <asp:Button ID="btnGuardarEstado" runat="server" CssClass="Boton" onclick="btnGuardarEstado_Click" Text="Guardar" />
                                </asp:Panel>
                </td>
            <td class="auto-style1">
                </td>
        </tr>
        <tr>
            <td class="auto-style5">
                </td>
            <td class="auto-style6" colspan="2">
                                    <asp:Label ID="lblAdultosMayores" runat="server" 
                    Text="Adultos Mayores" CssClass="Titulo2"></asp:Label>
                                </td>
            <td class="auto-style7">
                </td>
            <td class="auto-style6">
                </td>
            <td class="auto-style8">
                </td>
            <td class="auto-style5">
                </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style5" colspan="5">
                    <asp:Panel ID="panelAdultosMayores" runat="server">
                        <asp:DataGrid ID="dgPerfilesAdultosMayores" runat="server" AutoGenerateColumns="False" 
                                            BackColor="WhiteSmoke" 
    BorderStyle="Solid" CssClass="GridMantenimiento" 
                                            Font-Names="Century Gothic" Font-Size="Small" 
                        ForeColor="Black" Height="19px" 
                                            Width="99%" 
                            onitemcommand="dgPerfilesAdultosMayores_ItemCommand" TabIndex="4">
                            <AlternatingItemStyle BackColor="Gainsboro" />
                            <HeaderStyle BackColor="Navy" Font-Bold="True" Font-Names="Century Gothic" 
                                                Font-Size="Larger" ForeColor="White" 
                            HorizontalAlign="Center" />
                            <Columns>
                                <asp:BoundColumn HeaderText="Id Usuario" DataField="FK_IdUsuario" 
                                    Visible="False"></asp:BoundColumn>
                                <asp:BoundColumn DataField="Id_Persona" HeaderText="Id Persona" Visible="False"></asp:BoundColumn>
                                <asp:BoundColumn HeaderText="Nombre" DataField="Nom_Persona"></asp:BoundColumn>
                                <asp:BoundColumn HeaderText="Apellido 1" DataField="Apellido1"></asp:BoundColumn>
                                <asp:BoundColumn DataField="Apellido2" HeaderText="Apellido 2"></asp:BoundColumn>
                                <asp:BoundColumn DataField="Num_Cedula" HeaderText="Cédula"></asp:BoundColumn>
                                <asp:BoundColumn HeaderText="Teléfono"></asp:BoundColumn>
                                <asp:BoundColumn HeaderText="Correo"></asp:BoundColumn>
                                <asp:TemplateColumn HeaderText="Estado">
                                    <ItemTemplate>
                                        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
                                            <asp:DropDownList ID="drpEstado" runat="server" Width="250px">
                                            </asp:DropDownList>
                                        </asp:Panel>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:BoundColumn HeaderText="Nom_Usuario" Visible="False"></asp:BoundColumn>
                                <asp:BoundColumn HeaderText="Contraseña" Visible="False"></asp:BoundColumn>
                                <asp:BoundColumn HeaderText="Indicio" Visible="False"></asp:BoundColumn>
                                <asp:BoundColumn HeaderText="Tipo Usuario" Visible="False"></asp:BoundColumn>
                                <asp:TemplateColumn HeaderText="Ver perfil">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="imgbtn_verperfilpersona" runat="server" CommandName="PerfilPersona" Height="30px" ImageAlign="Right" ImageUrl="~/Multimedia/icono-buscar.jpg" />
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                            </Columns>
                        </asp:DataGrid>
                    </asp:Panel>
                </td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
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
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style10" colspan="2">
                                    &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style11" colspan="5">
                    &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>
