﻿<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraEmpresa.Master" AutoEventWireup="true" CodeBehind="frmPerfilAdultoMayor.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.Empresa.frmPerfilAdultoMayor" %>
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
        .style30
        {
            width: 115px;
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
        .style44
        {
            width: 298px;
            height: 25px;
        }
        .style46
        {
            width: 375px;
            height: 25px;
        }
        .style48
        {
            width: 203px;
            height: 25px;
        }
        .style50
        {
            width: 251px;
            height: 25px;
        }
        .style51
        {
            width: 19px;
            height: 25px;
        }
        .style53
        {
            width: 182px;
            height: 25px;
        }
        .style54
        {
            width: 195px;
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
                <asp:Label ID="lblMiPerfil" runat="server" Text="Perfil Persona Adulta Mayor" CssClass="Titulo1"></asp:Label>
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
                            <td class="style51">
                            </td>
                            <td class="style53">
                            </td>
                            <td class="style6">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style48">
                                <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
                            </td>
                            <td class="style50">
                                <asp:Label ID="lblNombreDato" runat="server"></asp:Label>
                            </td>
                            <td class="style51">
                                &nbsp;</td>
                            <td class="style53">
                                <asp:Label ID="lblTelefonoCelular" runat="server" Text="Teléfono secundario"></asp:Label>
                            </td>
                            <td class="style6">
                                <asp:Label ID="lblTelefonoCelularDato" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style48">
                                <asp:Label ID="lblApellido1" runat="server" Text="Primer apellido"></asp:Label>
                            </td>
                            <td class="style50">
                                <asp:Label ID="lblApellido1Dato" runat="server"></asp:Label>
                            </td>
                            <td class="style51">
                                &nbsp;</td>
                            <td class="style53">
                                <asp:Label ID="lblCorreoElectronico" runat="server" Text="Correo electrónico"></asp:Label>
                            </td>
                            <td class="style6">
                                <asp:Label ID="lblCorreoElectronicoDato" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style48">
                                <asp:Label ID="lblApellido2" runat="server" Text="Segundo apellido"></asp:Label>
                            </td>
                            <td class="style50">
                                <asp:Label ID="lblApellido2Dato" runat="server"></asp:Label>
                            </td>
                            <td class="style51">
                                &nbsp;</td>
                            <td class="style53">
                                <asp:Label ID="lblProvincia" runat="server" Text="Provincia"></asp:Label>
                            </td>
                            <td class="style6">
                                <asp:Label ID="lblProvinciaDato" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style48">
                                <asp:Label ID="lblSexo" runat="server" Text="Sexo"></asp:Label>
                            </td>
                            <td class="style50">
                                <asp:Label ID="lblSexoDato" runat="server"></asp:Label>
                            </td>
                            <td class="style51">
                                &nbsp;</td>
                            <td class="style53">
                                <asp:Label ID="lblCanton" runat="server" Text="Cantón"></asp:Label>
                            </td>
                            <td class="style6">
                                <asp:Label ID="lblCantonDato" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style48">
                                <asp:Label ID="lblCedula" runat="server" Text="Cédula"></asp:Label>
                            </td>
                            <td class="style50">
                                <asp:Label ID="lblCedulaDato" runat="server"></asp:Label>
                            </td>
                            <td class="style51">
                                &nbsp;</td>
                            <td class="style53">
                                <asp:Label ID="lblDistrito" runat="server" Text="Distrito"></asp:Label>
                            </td>
                            <td class="style6">
                                <asp:Label ID="lblDistritoDato" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style48">
                                <asp:Label ID="lblFechaNacimiento" runat="server" Text="Fecha de nacimiento"></asp:Label>
                            </td>
                            <td class="style50">
                                <asp:Label ID="lblFechaNacimientoDato" runat="server"></asp:Label>
                            </td>
                            <td class="style51">
                                &nbsp;</td>
                            <td class="style53">
                                &nbsp;</td>
                            <td class="style6">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style48">
                                <asp:Label ID="lblTelefonoHabitacion" runat="server" 
                                    Text="Teléfono primario"></asp:Label>
                            </td>
                            <td class="style50">
                                <asp:Label ID="lblTelefonoHabitacionDato" runat="server"></asp:Label>
                            </td>
                            <td class="style51">
                                &nbsp;</td>
                            <td class="style53">
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
                                <asp:Label ID="lblEstudios" runat="server" Text="Formación académica" 
                                    CssClass="Titulo2"></asp:Label>
                            </td>
                            <td class="style36">
                            </td>
                            <td class="style35">
                            </td>
                            <td class="style37">
                                &nbsp;</td>
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
                                &nbsp;</td>
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
                                <asp:Label ID="lblOtros" runat="server" Text="Idiomas" CssClass="Titulo2"></asp:Label>
                            </td>
                            <td class="style20">
                            </td>
                            <td class="style46">
                            </td>
                            <td class="style6" width="165px">
                            </td>
                        </tr>
                        <tr>
                            <td class="style30">
                                &nbsp;</td>
                            <td class="style44">
                                &nbsp;</td>
                            <td class="style20">
                                &nbsp;</td>
                            <td class="style46">
                                &nbsp;</td>
                            <td class="style6">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style30">
                                <asp:Label ID="lblIdiomas" runat="server" Text="Idiomas"></asp:Label>                                
                            </td>
                            <td class="style19" colspan="3">
                                <asp:CheckBoxList ID="chkIdiomas" runat="server" CellPadding="0" 
                                                        CellSpacing="0" Height="16px" RepeatDirection="Horizontal" Width="100%">
                                                        <asp:ListItem>Inglés</asp:ListItem>
                                                        <asp:ListItem>Francés</asp:ListItem>
                                                        <asp:ListItem>Portugués</asp:ListItem>
                                                        <asp:ListItem>Otro</asp:ListItem>
                                                    </asp:CheckBoxList>
                            </td>
                            <td>
                                &nbsp;</td>
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
                <asp:Panel ID="Panel2" runat="server" BorderStyle="Solid" BorderWidth="2px">
                    <table class="style9">
                        <tr>
                            <td class="style6" colspan="2">
                                <asp:Label ID="Label1" runat="server" Text="Pasatiempo favorito" CssClass="Titulo2"></asp:Label>
                            </td>
                            <td class="style20">
                            </td>
                            <td class="style46">
                            </td>
                            <td class="style6" width="165px">
                            </td>
                        </tr>
                        <tr>
                            <td class="style54">
                                &nbsp;</td>
                            <td class="style44">
                                &nbsp;</td>
                            <td class="style20">
                                &nbsp;</td>
                            <td class="style46">
                                &nbsp;</td>
                            <td class="style6">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style54">
                                <asp:Label ID="lblPasatiempos" runat="server" Text="Pasatiempo favorito"></asp:Label>
                            </td>
                            <td class="style19" colspan="3">
                                <asp:Label ID="lblPasatiemposDato" runat="server"></asp:Label>
                                <asp:TextBox ID="txtPasatiempo" runat="server" 
                                tooltip="Por favor, ingrese sólo un pasatiempo. Ejemplo: Leer libros de historia."
                                onblur="this.placeholder = 'Escriba su pasatiempo favorito aquí'" 
                                onfocus="this.placeholder = ''" placeholder="Escriba su pasatiempo favorito aquí" 
                                 Width="100%" MaxLength="80" />
                            </td>
                            <td>                                
                                    &nbsp;</td>
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
        </table>
</asp:Content>
