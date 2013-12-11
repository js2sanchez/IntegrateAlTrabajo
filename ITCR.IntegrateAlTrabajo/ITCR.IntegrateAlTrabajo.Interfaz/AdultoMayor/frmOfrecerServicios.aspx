<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraAdultoMayor.Master" AutoEventWireup="true" CodeBehind="frmOfrecerServicios.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.AdultoMayor.frmOfrecerServicios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style3
        {
            width: 97%;
        }
        .style4
        {
            height: 24px;
            width: 15px;
        }
        .style5
        {
            height: 24px;
            width: 15px;
        }
        .style6
        {
            height: 24px;
            }
        .style7
        {
            height: 24px;
            width: 250px;
        }
        .style8
        {
            height: 24px;
            width: 20px;
        }
        .style14
        {
            width: 100%;
        }
        .style24
        {
            height: 25px;
        }
        .style25
        {
            width: 299px;
            height: 25px;
        }
        .style17
        {
            width: 25px;
            height: 25px;
        }
        .style20
        {
            width: 118px;
            height: 25px;
        }
        .style11
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
            height: 51px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style3">
        <tr>
            <td class="style5">
            </td>
            <td class="style6">
            </td>
            <td class="style7">
            </td>
            <td class="style8">
            </td>
            <td class="style6">
            </td>
            <td class="style7">
            </td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6" colspan="2">
                <asp:Label ID="lblAgregarServicio" runat="server" 
                    Text="Agregar Servicios" CssClass="Titulo1"></asp:Label>
            </td>
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style30" colspan="7">
                <asp:ValidationSummary ID="vsOfrecerServicios" runat="server" 
                    ForeColor="#CC0000" ValidationGroup="gvServicios" />
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6" colspan="5">
                <asp:MultiView ID="mvOfrecerServicios" runat="server">
                    <asp:View ID="vPaso1" runat="server">
                        <table class="style14">
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
                                                    <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
                                                    &nbsp;del servicio</td>
                                                <td class="style27">
                                                    <asp:TextBox ID="txtNombreServicios" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfvNombreServicio" runat="server" 
                                                        ControlToValidate="txtNombreServicios" 
                                                        ErrorMessage="El nombre del servicio es un dato requerido." 
                                                        ForeColor="Red" ValidationGroup="gvServicios">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td class="style28">
                                                </td>
                                                <td class="style29">
                                                    <asp:Label ID="lblCategoria" runat="server" Text="Categoría"></asp:Label>
                                                </td>
                                                <td class="style11">
                                                    <asp:DropDownList ID="drpCategoriaServicio" runat="server" Height="30px" 
                                                        Width="122px">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style26">
                                                    <asp:Label ID="lblTipo" runat="server" Text="Tipo"></asp:Label>
                                                    &nbsp;de servicio</td>
                                                <td class="style27">
                                                    <asp:DropDownList ID="drpTipoServicio" runat="server" Height="30px" 
                                                        Width="121px">
                                                    </asp:DropDownList>
                                                </td>
                                                <td class="style28">
                                                    &nbsp;</td>
                                                <td class="style29">
                                                    <asp:Label ID="lblDescripcion" runat="server" Text="Descripción"></asp:Label>
                                                </td>
                                                <td class="style11">
                                                    <asp:TextBox ID="txtDescripcionServicios" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style26">
                                                    <asp:Label ID="lblDias" runat="server" Text="Días"></asp:Label>
                                                </td>
                                                <td class="style27">
                                                    <asp:CheckBox ID="chkLunes" runat="server" Text="Lunes" 
                                                        oncheckedchanged="chkLunes_CheckedChanged" AutoPostBack="True" />
                                                </td>
                                                <td class="style28">
                                                    &nbsp;</td>
                                                <td class="style29">
                                                    <asp:Label ID="lblHoras" runat="server" Text="Horas"></asp:Label>
                                                </td>
                                                <td class="style11">
                                                    <asp:DropDownList ID="drpHora1" runat="server" Height="30px" Width="121px" 
                                                        Enabled="False" onselectedindexchanged="drpHora1_SelectedIndexChanged">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style26">
                                                    &nbsp;</td>
                                                <td class="style27">
                                                    <asp:CheckBox ID="chkMartes" runat="server" Text="Martes" 
                                                        oncheckedchanged="chkMartes_CheckedChanged" AutoPostBack="True" />
                                                </td>
                                                <td class="style28">
                                                    &nbsp;</td>
                                                <td class="style29">
                                                    &nbsp;</td>
                                                <td class="style11">
                                                    <asp:DropDownList ID="drpHora2" runat="server" Height="30px" Width="121px" 
                                                        Enabled="False">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style26">
                                                    &nbsp;</td>
                                                <td class="style27">
                                                    <asp:CheckBox ID="chkMiercoles" runat="server" Text="Miércoles" 
                                                        oncheckedchanged="chkMiercoles_CheckedChanged" AutoPostBack="True" />
                                                </td>
                                                <td class="style28">
                                                    &nbsp;</td>
                                                <td class="style29">
                                                    &nbsp;</td>
                                                <td class="style11">
                                                    <asp:DropDownList ID="drpHora3" runat="server" Height="30px" Width="121px" 
                                                        Enabled="False">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style26">
                                                    &nbsp;</td>
                                                <td class="style27">
                                                    <asp:CheckBox ID="chkJueves" runat="server" Text="Jueves" 
                                                        oncheckedchanged="chkJueves_CheckedChanged" AutoPostBack="True" />
                                                </td>
                                                <td class="style28">
                                                    &nbsp;</td>
                                                <td class="style29">
                                                    &nbsp;</td>
                                                <td class="style11">
                                                    <asp:DropDownList ID="drpHora4" runat="server" Height="30px" Width="121px" 
                                                        Enabled="False">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style26">
                                                    &nbsp;</td>
                                                <td class="style27">
                                                    <asp:CheckBox ID="chkViernes" runat="server" Text="Viernes" 
                                                        oncheckedchanged="chkViernes_CheckedChanged" AutoPostBack="True" />
                                                </td>
                                                <td class="style28">
                                                    &nbsp;</td>
                                                <td class="style29">
                                                    &nbsp;</td>
                                                <td class="style11">
                                                    <asp:DropDownList ID="drpHora5" runat="server" Height="30px" Width="121px" 
                                                        Enabled="False">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style26">
                                                    &nbsp;</td>
                                                <td class="style27">
                                                    <asp:CheckBox ID="chkSabado" runat="server" Text="Sábado" 
                                                        oncheckedchanged="chkSabado_CheckedChanged" AutoPostBack="True" />
                                                </td>
                                                <td class="style28">
                                                    &nbsp;</td>
                                                <td class="style29">
                                                    &nbsp;</td>
                                                <td class="style11">
                                                    <asp:DropDownList ID="drpHora6" runat="server" Height="30px" Width="121px" 
                                                        Enabled="False">
                                                    </asp:DropDownList>
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
                                                    <asp:Panel ID="PanelBotonAgregar" runat="server" HorizontalAlign="Right">
                                                        <asp:Button ID="btnAgregarServicio" runat="server" CssClass="Boton" 
                                                            onclick="btnAgregarServicio_Click" Text="Agregar" />
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
                                    <asp:Panel ID="PanelTablaDatosServicios" runat="server" BorderStyle="None" 
                                        BorderWidth="2px" Height="250px" ScrollBars="Auto">
                                        <asp:DataGrid ID="dgServicios" runat="server" AutoGenerateColumns="False" 
                                            BackColor="WhiteSmoke" BorderStyle="Solid" CssClass="GridMantenimiento" 
                                            Font-Names="Century Gothic" Font-Size="Small" ForeColor="Black" Height="19px" 
                                            Width="99%" onselectedindexchanged="dgEstudios_SelectedIndexChanged">
                                            <AlternatingItemStyle BackColor="Gainsboro" />
                                            <HeaderStyle BackColor="Navy" Font-Bold="True" Font-Names="Century Gothic" 
                                                Font-Size="Larger" ForeColor="White" HorizontalAlign="Center" />
                                            <Columns>
                                                <asp:BoundColumn HeaderText="Id" DataField="Id_Servicio" Visible="False"></asp:BoundColumn>
                                                <asp:BoundColumn HeaderText="Nombre" DataField="Nom_Servicio"></asp:BoundColumn>
                                                <asp:BoundColumn HeaderText="Descripción" DataField="Descripcion"></asp:BoundColumn>
                                                <asp:BoundColumn DataField="FK_IdCategoriaServicio" HeaderText="Categoría">
                                                </asp:BoundColumn>
                                                <asp:BoundColumn DataField="FK_IdTipoServicio" HeaderText="Tipo">
                                                </asp:BoundColumn>
                                                <asp:BoundColumn HeaderText="Horario"></asp:BoundColumn>
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
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                            </tr>
                        </table>
                    </asp:View>
                    <br />
                </asp:MultiView>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
