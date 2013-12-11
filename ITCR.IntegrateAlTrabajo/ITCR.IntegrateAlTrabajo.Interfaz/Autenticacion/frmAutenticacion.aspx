<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmAutenticacion.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.Autenticacion.frmAutenticacion" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title></title>

    <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />

    <style type="text/css">
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
    </style>
</head>
<body bgcolor="#cccccc">
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
                                <asp:Label ID="lblTextoAcerca" runat="server" ForeColor="#005190" 
                                    Text="El proyecto a desarrollar es parte de la iniciativa “Empoderar y Emprender: las Personas Adultas Mayores Protagonistas y Agentes de Cambio”, el cual está centrado en hacer que los adultos mayores tengan un envejecimiento activo.  Este proyecto como un todo, comprende talleres y capacitaciones para los adultos mayores en los cuales se tratan diversos temas, con el fin de incidir efectivamente en un cambio en el estilo de vida de la persona adulta mayor, para que ésta alcance una mejor calidad de vida y se integre en su entorno personal, familiar y social."></asp:Label>
                            </td>
                            <td class="style13" rowspan="5" bgcolor="White">
                                <asp:Image ID="Image1" runat="server" Height="259px" 
                                    ImageUrl="~/Multimedia/RayaAutenticacion.PNG" style="margin-left: 16px" 
                                    Width="16px" />
                            </td>
                            <td bgcolor="White">
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
                            <td bgcolor="White">
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
                            <td bgcolor="White">
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
                            <td bgcolor="White">
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
