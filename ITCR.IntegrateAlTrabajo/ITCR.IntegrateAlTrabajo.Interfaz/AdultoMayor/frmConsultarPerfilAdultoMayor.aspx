<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraAdultoMayor.Master" AutoEventWireup="true" CodeBehind="frmConsultarPerfilAdultoMayor.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.AdultoMayor.frmConsultarPerfilAdultoMayor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style3
        {
            width: 97%;
        }
        .style5
        {
            width: 15px;
            height: 25px;
        }
        .style6
        {
            height: 25px;
        }
        .style7
        {
            width: 250px;
            height: 25px;
        }
        .style8
        {
            width: 20px;
            height: 25px;
        }
        .style9
        {
            width: 100%;
        }
        .style10
        {
            height: 25px;
        }
        .style14
        {
            height: 25px;
        }
        .style16
        {
            width: 23px;
            height: 25px;
        }
        .style18
        {
            height: 25px;
        }
        .style19
        {
            height: 25px;
        }
        .style20
        {
            width: 29px;
            height: 25px;
        }
        .style25
        {
            width: 100px;
            height: 25px;
        }
        .style26
        {
            height: 25px;
            width: 112px;
        }
        .style27
        {
            width: 294px;
            height: 25px;
        }
        .style28
        {
            width: 27px;
            height: 25px;
        }
        .style29
        {
            width: 116px;
            height: 25px;
        }
        .style30
        {
            width: 115px;
            height: 25px;
        }
        .style31
        {
            height: 25px;
            width: 289px;
        }
        .style32
        {
            width: 117px;
            height: 25px;
        }
        .style34
        {
            height: 22px;
            width: 408px;
        }
        .style35
        {
            width: 131px;
            height: 22px;
        }
        .style36
        {
            width: 31px;
            height: 22px;
        }
        .style37
        {
            height: 22px;
        }
        .style39
        {
            height: 25px;
            width: 410px;
        }
        .style40
        {
            width: 121px;
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style3">
        <tr>
            <td class="style5">
                </td>
            <td class="style6" colspan="2">
                <asp:Label ID="lblMiPerfil" runat="server" Text="Mi perfil" CssClass="Titulo1"></asp:Label>
            </td>
            <td class="style8">
                </td>
            <td class="style25">
                </td>
            <td class="style7">
                </td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td class="style5">
                </td>
            <td class="style25">
                </td>
            <td class="style7">
                </td>
            <td class="style8">
                </td>
            <td class="style25">
                </td>
            <td class="style7">
                </td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6" colspan="5">
                <asp:Panel ID="PanelDatosPersonales" runat="server" BorderStyle="Solid" 
                    BorderWidth="2px">
                    <table class="style9">
                        <tr>
                            <td class="style10" colspan="2">
                                <asp:Label ID="lblDatosPersonales" runat="server" Text="Datos personales" 
                                    CssClass="Titulo2"></asp:Label>
                            </td>
                            <td class="style28">
                            </td>
                            <td class="style29">
                            </td>
                            <td class="style6">
                                <asp:Panel ID="PanelEditarDatosPersonales" runat="server" 
                                    HorizontalAlign="Right">
                                    <asp:ImageButton ID="ibtnEditarDatosPersonales" runat="server" Height="50px" 
                                        ImageUrl="~/Multimedia/icono-editar.jpg" 
                                        onclick="ibtnEditarDatosPersonales_Click1" Width="50px" />
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td class="style26">
                                <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
                            </td>
                            <td class="style27">
                                <asp:Label ID="lblNombreDato" runat="server"></asp:Label>
                            </td>
                            <td class="style28">
                                &nbsp;</td>
                            <td class="style29">
                                <asp:Label ID="lblTelefonoCelular" runat="server" Text="Teléfono celular"></asp:Label>
                            </td>
                            <td class="style6">
                                <asp:Label ID="lblTelefonoCelularDato" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style26">
                                <asp:Label ID="lblApellido1" runat="server" Text="Primer apellido"></asp:Label>
                            </td>
                            <td class="style27">
                                <asp:Label ID="lblApellido1Dato" runat="server"></asp:Label>
                            </td>
                            <td class="style28">
                                &nbsp;</td>
                            <td class="style29">
                                <asp:Label ID="lblCorreoElectronico" runat="server" Text="Correo electrónico"></asp:Label>
                            </td>
                            <td class="style6">
                                <asp:Label ID="lblCorreoElectronicoDato" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style26">
                                <asp:Label ID="lblApellido2" runat="server" Text="Segundo apellido"></asp:Label>
                            </td>
                            <td class="style27">
                                <asp:Label ID="lblApellido2Dato" runat="server"></asp:Label>
                            </td>
                            <td class="style28">
                                &nbsp;</td>
                            <td class="style29">
                                <asp:Label ID="lblProvincia" runat="server" Text="Provincia"></asp:Label>
                            </td>
                            <td class="style6">
                                <asp:Label ID="lblProvinciaDato" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style26">
                                <asp:Label ID="lblSexo" runat="server" Text="Sexo"></asp:Label>
                            </td>
                            <td class="style27">
                                <asp:Label ID="lblSexoDato" runat="server"></asp:Label>
                            </td>
                            <td class="style28">
                                &nbsp;</td>
                            <td class="style29">
                                <asp:Label ID="lblCanton" runat="server" Text="Cantón"></asp:Label>
                            </td>
                            <td class="style6">
                                <asp:Label ID="lblCantonDato" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style26">
                                <asp:Label ID="lblCedula" runat="server" Text="Cédula"></asp:Label>
                            </td>
                            <td class="style27">
                                <asp:Label ID="lblCedulaDato" runat="server"></asp:Label>
                            </td>
                            <td class="style28">
                                &nbsp;</td>
                            <td class="style29">
                                <asp:Label ID="lblDistrito" runat="server" Text="Distrito"></asp:Label>
                            </td>
                            <td class="style6">
                                <asp:Label ID="lblDistritoDato" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style26">
                                <asp:Label ID="lblFechaNacimiento" runat="server" Text="Fecha de nacimiento"></asp:Label>
                            </td>
                            <td class="style27">
                                <asp:Label ID="lblFechaNacimientoDato" runat="server"></asp:Label>
                            </td>
                            <td class="style28">
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
                                <asp:Label ID="lblTelefonoHabitacionDato" runat="server"></asp:Label>
                            </td>
                            <td class="style28">
                                &nbsp;</td>
                            <td class="style29">
                                &nbsp;</td>
                            <td class="style6">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style25">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style25">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6" colspan="5">
                <asp:Panel ID="PanelEstudios" runat="server" BorderStyle="Solid" 
                    BorderWidth="2px" Height="200px" ScrollBars="Auto">
                    <table class="style9">
                        <tr>
                            <td class="style34">
                                <asp:Label ID="lblEstudios" runat="server" Text="Estudios" CssClass="Titulo2"></asp:Label>
                            </td>
                            <td class="style36">
                            </td>
                            <td class="style35">
                            </td>
                            <td class="style37">
                                <asp:Panel ID="PanelEditarEstudios" runat="server" HorizontalAlign="Right">
                                    <asp:ImageButton ID="ibtnEditarEstudios" runat="server" Height="50px" 
                                        ImageUrl="~/Multimedia/icono-editar.jpg" 
                                        onclick="ibtnEditarDatosPersonales_Click" Width="50px" />
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td class="style14" colspan="4">
                                <asp:DataGrid ID="dgEstudios" runat="server" AutoGenerateColumns="False" 
                                    BackColor="WhiteSmoke" BorderStyle="Solid" CssClass="GridMantenimiento" 
                                    Font-Names="Century Gothic" Font-Size="Small" ForeColor="Black" Height="19px" 
                                    Width="99%">
                                    <AlternatingItemStyle BackColor="Gainsboro" />
                                    <HeaderStyle BackColor="Navy" Font-Bold="True" Font-Names="Century Gothic" 
                                        Font-Size="Larger" ForeColor="White" HorizontalAlign="Center" />
                                    <Columns>
                                        <asp:BoundColumn DataField="Id_Estudio" HeaderText="Id_Estudio" Visible="False">
                                        </asp:BoundColumn>
                                        <asp:BoundColumn DataField="AnnoInicial" HeaderText="Año inicial">
                                        </asp:BoundColumn>
                                        <asp:BoundColumn DataField="AnnoFinal" HeaderText="Año final"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="Institucion" HeaderText="Institución">
                                        </asp:BoundColumn>
                                        <asp:BoundColumn DataField="Titulo" HeaderText="Título"></asp:BoundColumn>
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style25">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style25">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6" colspan="5">
                <asp:Panel ID="PanelExperienciasLaborales" runat="server" BorderStyle="Solid" 
                    BorderWidth="2px" Height="200px" ScrollBars="Auto">
                    <table class="style9">
                        <tr>
                            <td class="style39">
                                <asp:Label ID="lblExperienciasLaborales" runat="server" 
                                    Text="Experiencias laborales" CssClass="Titulo2"></asp:Label>
                            </td>
                            <td class="style16">
                            </td>
                            <td class="style40">
                            </td>
                            <td class="style6">
                                <asp:Panel ID="Panel1" runat="server">
                                </asp:Panel>
                                <asp:Panel ID="PanelBotonEditarExperienciasLaborales" runat="server" 
                                    HorizontalAlign="Right">
                                    <asp:ImageButton ID="ibtnEditarExperienciasLaborales" runat="server" 
                                        Height="50px" ImageUrl="~/Multimedia/icono-editar.jpg" 
                                        onclick="ibtnEditarExperienciasLaborales_Click" Width="50px" />
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td class="style14" colspan="4">
                                <asp:DataGrid ID="dgExperienciasLaborales" runat="server" 
                                    AutoGenerateColumns="False" BackColor="WhiteSmoke" BorderStyle="Solid" 
                                    CssClass="GridMantenimiento" Font-Names="Century Gothic" Font-Size="Small" 
                                    ForeColor="Black" Height="19px" Width="99%">
                                    <AlternatingItemStyle BackColor="Gainsboro" />
                                    <HeaderStyle BackColor="Navy" Font-Bold="True" Font-Names="Century Gothic" 
                                        Font-Size="Larger" ForeColor="White" HorizontalAlign="Center" />
                                    <Columns>
                                        <asp:BoundColumn DataField="Id_ExperienciaLaboral" 
                                            HeaderText="Id_ExperienciaLaboral" Visible="False"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="AnnoInicial" HeaderText="Año inicial">
                                        </asp:BoundColumn>
                                        <asp:BoundColumn DataField="AnnoFinal" HeaderText="Año final"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="Empresa" HeaderText="Empresa"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="Puesto" HeaderText="Puesto"></asp:BoundColumn>
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style25">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style25">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6" colspan="5">
                <asp:Panel ID="PanelOtros" runat="server" BorderStyle="Solid" BorderWidth="2px">
                    <table class="style9">
                        <tr>
                            <td class="style18" colspan="2">
                                <asp:Label ID="lblOtros" runat="server" Text="Otros" CssClass="Titulo2"></asp:Label>
                            </td>
                            <td class="style20">
                            </td>
                            <td class="style32">
                            </td>
                            <td class="style6">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style30">
                                &nbsp;</td>
                            <td class="style31">
                                &nbsp;</td>
                            <td class="style20">
                                &nbsp;</td>
                            <td class="style32">
                                &nbsp;</td>
                            <td class="style6">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style30">
                                <asp:Label ID="lblIdiomas" runat="server" Text="Idiomas"></asp:Label>
                            </td>
                            <td class="style19" colspan="4">
                                <asp:Label ID="lblIdiomasDato" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style30">
                                <asp:Label ID="lblPasatiempos" runat="server" Text="Pasatiempos"></asp:Label>
                            </td>
                            <td class="style19" colspan="4">
                                <asp:Label ID="lblPasatiemposDato" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style25">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style25">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style25">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style25">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style25">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style25">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style25">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style25">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style25">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style25">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style25">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style25">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style25">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style25">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
