﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.Default" %>

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
            font-family: Century Gothic;
            font-size: 15px;
            text-align: justify;
            border-spacing: 8px;
            border-collapse: separate;
        }
        label
        {
            font-weight: normal;
        }
        input
        {
            font-weight: normal;
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
        .style21
        {
            width: 445px;
            height: 55px;
        }
        .style22
        {
            width: 50px;
            height: 55px;
        }
        .style27
        {
            height: 10px;
        }
        .style28
        {
            height: 50px;
        }
        .style29
        {
            height: 22px;
        }
        .style30
        {
            height: 22px;
            width: 164px;
        }
        .style31
        {
            width: 164px;
        }
        .style34
        {
            width: 25px;
            height: 55px;
        }
        .style35
        {
            height: 55px;
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
                title: "Ingreso a la bolsa de trabajo",
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
            <td class="style7">
                <asp:Panel ID="Panel2" runat="server" BackColor="#005190" Height="38px" Width="900px">
                </asp:Panel>
            </td>
            <td class="style8">
            </td>
        </tr>
        <tr>
            <td class="style9">
            </td>
            <td class="style3">
                <asp:Panel ID="PanelBanner2" runat="server" HorizontalAlign="Center" Style="background-color: White;
                    display: block; width: 900px;">
                    <asp:Image ID="imgBanner2" runat="server" Height="200px" ImageUrl="~/Multimedia/banner2.png"
                        Style="width: 100%; display: block;" />
                </asp:Panel>
            </td>
            <td class="style9">
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;
            </td>
            <td class="style3">
                <asp:Panel ID="PanelBarra" runat="server" BackColor="#005190" Height="38px" Width="900px">
                </asp:Panel>
                <asp:Panel ID="Panel1" runat="server" BackColor="White" Height="500px" Width="900px">
                    <table class="style1" bgcolor="White">
                        <tr>
                            <td class="style14" bgcolor="White">
                                &nbsp;
                            </td>
                            <td bgcolor="White" class="style11">
                                &nbsp;
                            </td>
                            <td class="style13" bgcolor="White">
                                &nbsp;
                            </td>
                            <td colspan="2" bgcolor="White">
                                &nbsp;
                            </td>
                            <td bgcolor="White">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style34" bgcolor="White">
                            </td>
                            <td bgcolor="White" class="style21">
                                <asp:Label ID="lblRegistrarse" runat="server" Font-Bold="True" Font-Size="24pt" ForeColor="#292459"
                                    Text="1. Registrarme como:"></asp:Label>
                            </td>
                            <td class="style13" bgcolor="White" rowspan="4">
                                <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl="~/Multimedia/RayaAutenticacion.PNG"
                                    Style="margin-left: 16px" Width="16px" />
                            </td>
                            <td colspan="2" bgcolor="White" class="style35">
                                <asp:Label ID="lblIniciarSesion" runat="server" ForeColor="#292459" Text="2. Ingresar al sistema"
                                    Font-Bold="True" Font-Size="24pt"></asp:Label>
                            </td>
                            <td class="style34" bgcolor="White">
                            </td>
                        </tr>
                        <tr>
                            <td class="style14" bgcolor="White" rowspan="3">
                                &nbsp;
                            </td>
                            <td bgcolor="White" class="style11" rowspan="3">
                                <asp:Panel ID="PanelBotones" runat="server" HorizontalAlign="Right">
                                    <asp:Button ID="btnPersona" runat="server" CssClass="Boton" Font-Size="Large" OnClick="btnPersona_Click"
                                        Text="Persona Adulta Mayor" Width="210px" UseSubmitBehavior="False" />
                                    <br />
                                    <br />
                                    <asp:Button ID="btnEmpresa" runat="server" CssClass="Boton" Font-Size="Large" OnClick="btnEmpresa_Click"
                                        Text="Empresa" Width="210px" UseSubmitBehavior="False" />
                                </asp:Panel>
                            </td>
                            <td bgcolor="White" class="style30">
                                <asp:Label ID="lblNombreUsuario" runat="server" Font-Bold="True" ForeColor="#005190"
                                    Text="Nombre de usuario"></asp:Label>
                            </td>
                            <td bgcolor="White" class="style29">
                                <asp:TextBox ID="txtNombreUsuario" runat="server" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style31" bgcolor="White">
                                <asp:Label ID="lblContraseña" runat="server" Font-Bold="True" ForeColor="#005190"
                                    Text="Contraseña"></asp:Label>
                            </td>
                            <td bgcolor="White">
                                <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                            <td bgcolor="White">
                                <asp:Panel ID="PanelBotonIniciarSesion" runat="server" HorizontalAlign="Right">
                                    &nbsp;&nbsp;
                                    <asp:Button ID="btnIniciarSesion" runat="server" CssClass="Boton" OnClick="btnIniciarSesion_Click"
                                        Text="Ingresar" Font-Size="Large" />
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="White" class="style28">
                                &nbsp;
                            </td>
                            <td colspan="2" bgcolor="White" class="style27">
                                <br />
                                <asp:Label ID="lblAcercaBolsaTrabajo" runat="server" Font-Bold="True" Font-Size="24pt"
                                    ForeColor="#292459" Text="Acerca de la bolsa de trabajo"></asp:Label>
                            </td>
                            <td bgcolor="White" class="style27">
                            </td>
                            <td bgcolor="White" class="style28">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="White" class="style28">
                                &nbsp;
                            </td>
                            <td rowspan="4" bgcolor="White" class="style28" colspan="4">
                                <p>
                                    <asp:Label ID="lblTextoAcerca" runat="server" ForeColor="#005190" Text="Tiene como finalidad facilitar el derecho al trabajo de la PAM."></asp:Label>
                                </p>
                                <p>
                                    <asp:Label ID="lblTextoAcerca1" runat="server" ForeColor="#005190" Text="Es un espacio virtual en el que convergen las personas adultas mayores oferentes de productos y servicios en jornada parcial o total, en forma remunerada o voluntaria y las empresas demandantes que se inscriben para contratarlas.
"></asp:Label>
                                </p>
                                <p>
                                    <asp:Label ID="lblTextoAcerca2" runat="server" ForeColor="#005190" Text="El espacio busca reivindicar los derechos, el protagonismo y los saberes de las personas adultas mayores, así como la responsabilidad social de las empresas para facilitar su inclusión en su entorno inmediato."></asp:Label>
                                </p>
                            </td>
                            <td bgcolor="White">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="White" class="style28">
                                &nbsp;
                            </td>
                            <td bgcolor="White">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="White" class="style28">
                                &nbsp;
                            </td>
                            <td bgcolor="White">
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="style9">
                &nbsp;
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
