<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title></title>
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
        .style1
        {
            width: 100%;
        }
        .style3
        {
            width: 743px;
        }
        .style7
        {
            width: 743px;
            height: 40px;
        }
        .style8
        {
            width: 225px;
            height: 40px;
        }
        .style9
        {
            width: 225px;
        }
        .style11
        {
            width: 445px;
        }
        .style13
        {
            width: 50px;
        }
        .style14
        {
            width: 25px;
        }
        .style15
        {
            width: 176px;
        }
    </style>
</head>
<body bgcolor="#cccccc">
    <script type="text/javascript" src="../js/jquery.js"></script>
    <script type="text/javascript" src="../js/jquery.maskedinput.min.js"></script>
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../js/bootbox.js"></script> 
    <script type="text/javascript">
        function custom_alert(msg) {
            bootbox.dialog({
                closeButton: false,
                message: msg,
                buttons: {
                    success: {
                        label: "Aceptar",
                        className: "btn-primary"
                    }
                }
            });
        }
    </script>
    <form id="form1" runat="server">
    <table class="style1" align="center">
        <tr>
            <td class="style8">
                </td>
            <td class="style7" bgcolor="#005190">
                </td>
            <td class="style8">
                </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style3">
                <asp:Panel ID="PanelBanner2" runat="server" HorizontalAlign="Center">
                    <asp:Image ID="imgBanner2" runat="server" Height="200px" 
    ImageUrl="~/Multimedia/banner_autenticacion.jpg" Width="900px" />
                </asp:Panel>
            </td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style3">

                <asp:Panel ID="PanelBarra" runat="server" BackColor="#005190" Height="38px" 
                    Width="900px">
                </asp:Panel>
                <asp:Panel ID="Panel1" runat="server" BackColor="White" Height="700px" 
                    Width="900px">
                    <table class="style1" bgcolor="White">
                        <tr>
                            <td class="style14" bgcolor="White">
                                &nbsp;</td>
                            <td bgcolor="White" class="style11">
                                &nbsp;</td>
                            <td class="style13" bgcolor="White">
                                &nbsp;</td>
                            <td colspan="2" bgcolor="White">
                                &nbsp;</td>
                            <td bgcolor="White">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style14" bgcolor="White">
                                &nbsp;</td>
                            <td bgcolor="White" class="style11">
                                <asp:Label ID="lblAcercaBolsaTrabajo" runat="server" Font-Bold="True" 
                                    Font-Size="18pt" ForeColor="#292459" Text="Acerca de la bolsa de trabajo"></asp:Label>
                            </td>
                            <td class="style13" bgcolor="White">
                                &nbsp;</td>
                            <td colspan="2" bgcolor="White">
                                <asp:Label ID="lblIniciarSesion" runat="server" ForeColor="#292459" 
                                    Text="Iniciar sesión" Font-Bold="True" Font-Size="18pt"></asp:Label>
                            </td>
                            <td class = "style14" bgcolor="White">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style14" bgcolor="White">
                                &nbsp;</td>
                            <td bgcolor="White" class="style11">
                                &nbsp;</td>
                            <td class="style13" bgcolor="White">
                                &nbsp;</td>
                            <td colspan="2" bgcolor="White">
                                &nbsp;</td>
                            <td bgcolor="White">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style14" rowspan="5" bgcolor="White">
                                &nbsp;</td>
                            <td bgcolor="White" class="style11" rowspan="5">
                                <p><asp:Label ID="lblTextoAcerca" runat="server" ForeColor="#005190" 
                                    Text="Tiene como finalidad facilitar el derecho al trabajo de la PAM."></asp:Label></p>
                                    <p><asp:Label ID="lblTextoAcerca1" runat="server" ForeColor="#005190" 
Text="Es un espacio virtual en el que convergen las personas adultas mayores oferentes de productos y servicios en jornada parcial o total, en forma remunerada o voluntaria y las empresas demandantes que se inscriben para contratarlas.
"></asp:Label></p><p><asp:Label ID="lblTextoAcerca2" runat="server" ForeColor="#005190" 
Text="El espacio busca reivindicar los derechos, el protagonismo y los saberes de las personas adultas mayores, así como la responsabilidad social de las empresas para facilitar su inclusión en su entorno inmediato."></asp:Label>
                          </p>  </td>
                            <td class="style13" rowspan="5" bgcolor="White">
                                <asp:Image ID="Image1" runat="server" Height="259px" 
                                    ImageUrl="~/Multimedia/RayaAutenticacion.PNG" style="margin-left: 16px" 
                                    Width="16px" />
                            </td>
                            <td bgcolor="White" class="style15">
                                <asp:Label ID="lblNombreUsuario" runat="server" ForeColor="#005190" 
                                    Text="Nombre de usuario" Font-Bold="True"></asp:Label>
                            </td>
                            <td bgcolor="White">
                                <asp:TextBox ID="txtNombreUsuario" runat="server"></asp:TextBox>
                            </td>
                            <td bgcolor="White">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td bgcolor="White" class="style15">
                                <asp:Label ID="lblContraseña" runat="server" ForeColor="#005190" 
                                    Text="Contraseña" Font-Bold="True"></asp:Label>
                            </td>
                            <td bgcolor="White">
                                <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                            <td bgcolor="White">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td bgcolor="White" class="style15">
                                &nbsp;</td>
                            <td bgcolor="White">
                                <asp:Panel ID="PanelBotonIniciarSesion" runat="server" HorizontalAlign="Right">
                                    <asp:Button ID="btnIniciarSesion" runat="server" CssClass="Boton" 
                                        onclick="btnIniciarSesion_Click" Text="Iniciar" />
                                </asp:Panel>
                            </td>
                            <td bgcolor="White">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2" bgcolor="White">
                                &nbsp;</td>
                            <td bgcolor="White">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td bgcolor="White" class="style15">
                                <asp:HyperLink ID="hlRegistrarPersona" runat="server" ForeColor="#005190" 
                                    NavigateUrl="~/AdultoMayor/frmRegistroAdultoMayor.aspx">Registrar persona</asp:HyperLink>
                            </td>
                            <td bgcolor="White">
                                <asp:HyperLink ID="hlRegistrarEmpresa" runat="server" ForeColor="#005190" 
                                    NavigateUrl="~/Empresa/frmRegistroEmpresa.aspx">Registrar empresa</asp:HyperLink>
                            </td>
                            <td bgcolor="White">
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        </table>
    </form>
</body>
</html>
