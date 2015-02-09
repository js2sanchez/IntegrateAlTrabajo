<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraAdultoMayor.Master" AutoEventWireup="true" CodeBehind="frmAplicarOfertaTrabajo.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.AdultoMayor.frmAplicarOfertaTrabajo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />
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
        .style3
        {
            width: 100%;
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
            width: 20px;
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
            width: 335px;
        }
        .style31
        {
            width: 15px;
            height: 330px;
        }
        .style32
        {
            height: 330px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript" src="../js/jquery.js"></script>
    <script type="text/javascript" src="../js/jquery.maskedinput.min.js"></script>
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../js/bootbox.js"></script>  
    <script type="text/javascript">
        function custom_alert(msg) {
            var box = bootbox.dialog({
                closeButton: false,
                message: msg,
                buttons: {
                    success: {
                        label: "Aceptar",
                        className: "btn-primary"
                    }
                }
            });

            box.bind("shown.bs.modal", function () {
                box.find("btn-primary:first").focus();
            });
        }
    </script>
    <table class="style3">
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5" colspan="2">
                <asp:Label ID="lblDescripciónOferta" runat="server" Text="Descripción del puesto" 
                    CssClass="Titulo1"></asp:Label>
            </td>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style31">
            </td>
            <td class="style32" colspan="5">
                                    <asp:Panel ID="PanelOfertaTrabajo" runat="server" BorderStyle="Solid" 
                                        BorderWidth="2px" Height="327px">
                                        <table class="style14">
                                            <tr>
                                                <td class="style26">
                                                    &nbsp;</td>
                                                <td class="style27">
                                                    &nbsp;</td>
                                                <td class="style28">
                                                    &nbsp;</td>
                                                <td class="style29">
                                                    &nbsp;</td>
                                                <td class="style30">
                                                    <asp:Panel ID="PanelBotonAplicar0" runat="server" HorizontalAlign="Right">
                                                        <asp:Button ID="btnAplicarOfertaTrabajo0" runat="server" CssClass="Boton" 
                                                            onclick="btnAplicarOfertaTrabajo_Click" 
                                                            Text="Aplicar a esta oferta de trabajo" />
                                                    </asp:Panel>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style26">
                                                    <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
                                                    &nbsp;del puesto</td>
                                                <td class="style27">
                                                    <asp:TextBox ID="txtNombrePuesto" runat="server" Enabled="False" Width="250px"></asp:TextBox>
                                                </td>
                                                <td class="style28">
                                                </td>
                                                <td class="style29">
                                                    Empresa</td>
                                                <td class="style30">
                                                    <asp:TextBox ID="txtEmpresaPuesto" runat="server" Enabled="False" Width="250px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style26">
                                                    Descripción</td>
                                                <td class="style27">
                                                    <asp:TextBox ID="txtDescripciónPuesto" runat="server" Enabled="False" 
                                                        Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                                                </td>
                                                <td class="style28">
                                                    &nbsp;</td>
                                                <td class="style29">
                                                    Requisitos</td>
                                                <td class="style30">
                                                    <asp:TextBox ID="txtRequisitosPuesto" runat="server" Enabled="False" 
                                                        Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style26">
                                                    Categoría</td>
                                                <td class="style27">
                                                    <asp:TextBox ID="txtCategoríaPuesto" runat="server" Enabled="False" 
                                                        Width="250px"></asp:TextBox>
                                                    </td>
                                                <td class="style28">
                                                    </td>
                                                <td class="style29">
                                                    Tipo de trabajo</td>
                                                <td class="style30">
                                                    <asp:TextBox ID="txtTipoTrabajoPuesto" runat="server" Enabled="False" 
                                                        Width="250px"></asp:TextBox>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="style26">
                                                    Teléfono</td>
                                                <td class="style27">
                                                    <asp:TextBox ID="txtTeléfonoPuesto" runat="server" Enabled="False" 
                                                        Width="250px"></asp:TextBox>
                                                </td>
                                                <td class="style28">
                                                    &nbsp;</td>
                                                <td class="style29">
                                                    Correo electrónico</td>
                                                <td class="style30">
                                                    <asp:TextBox ID="txtCorreoElectrónicoPuesto" runat="server" Enabled="False" 
                                                        Width="250px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style26">
                                                    Ubicación</td>
                                                <td class="style27">
                                                    <asp:TextBox ID="txtUbicaciónPuesto" runat="server" Enabled="False" 
                                                        Width="250px"></asp:TextBox>
                                                </td>
                                                <td class="style28">
                                                    &nbsp;</td>
                                                <td class="style29">
                                                    Información adicional</td>
                                                <td class="style30">
                                                    <asp:TextBox ID="txtInformaciónAdicionalPuesto" runat="server" Enabled="False" 
                                                        Width="250px"></asp:TextBox>
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
                                                <td class="style30">
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                </td>
            <td class="style32">
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>
