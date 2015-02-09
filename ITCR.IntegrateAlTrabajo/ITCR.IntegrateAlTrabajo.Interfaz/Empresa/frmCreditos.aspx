<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraEmpresa.Master" AutoEventWireup="true"
    CodeBehind="frmCreditos.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.Empresa.frmCreditos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style3
        {
            width: 98%;
        }
        .style5
        {
            height: 25px;
            width: 15px;
        }
        .style6
        {
            height: 25px;
        }
        .style7
        {
            height: 25px;
            width: 250px;
        }
        .style8
        {
            height: 25px;
            width: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style3">
        <tr>
            <td class="style5">
            </td>
            <td class="style6" colspan="5">
                <asp:Label ID="lblCreditos" runat="server" CssClass="Titulo1" Text="Créditos"></asp:Label>
            </td>
            <td class="style5">
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style8">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style5">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;
            </td>
            <td class="style6">
                <asp:Label ID="lblDesarrolladores" runat="server" CssClass="Titulo2" Text="Desarrolladores"></asp:Label>
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style8">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style5">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;
            </td>
            <td class="style6" colspan="2">
                <asp:Label ID="lblDesarrollador1" runat="server" Text="Ing. Jonathan Sánchez Salazar (Líder técnico y Desarrollador)"></asp:Label>
            </td>
            <td class="style8">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style5">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;
            </td>
            <td class="style6" colspan="2">
                <asp:Label ID="lblDesarrollador2" runat="server" Text="Ing. Satcha Villafuerte Ramírez (Desarrolladora)"></asp:Label>
            </td>
            <td class="style8">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style5">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;
            </td>
            <td class="style6" colspan="2">
                <asp:Label ID="lblDesarrollador3" runat="server" Text="Ing. Fernanda Coto Morales (Desarrolladora)"></asp:Label>
            </td>
            <td class="style8">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style5">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;
            </td>
            <td class="style6" colspan="5">
                <asp:Label ID="lblDescripcion1" runat="server" Font-Bold="True" Font-Italic="True"
                    Font-Size="Small" Text="Graduados 2014 de la Escuela de Computación, Instituto Tecnológico de Costa Rica"
                    Style="font-size: x-smal"></asp:Label>
            </td>
            <td class="style5">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style8">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style5">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;
            </td>
            <td class="style6">
                <asp:Label ID="lblDiseñador" runat="server" CssClass="Titulo2" Text="Diseñador gráfico"></asp:Label>
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style8">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style5">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;
            </td>
            <td class="style6" colspan="2">
                <asp:Label ID="lblDiseñadorGrafico" runat="server" Text="Ing. Freddy Guzmán Rizo"></asp:Label>
            </td>
            <td class="style8">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style5">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;
            </td>
            <td class="style6" colspan="2">
                <asp:Label ID="lblDescripcion2" runat="server" Font-Bold="True" Font-Italic="True"
                    Font-Size="Small" Text="Escuela de Diseño Industrial, Instituto Tecnológico de Costa Rica"
                    Style="font-size: x-smal"></asp:Label>
            </td>
            <td class="style8">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style5">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style8">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style5">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;
            </td>
            <td class="style6">
                <asp:Label ID="lblAsistentes" runat="server" CssClass="Titulo2" Text="Asistentes"></asp:Label>
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style8">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style5">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;
            </td>
            <td class="style6" colspan="2">
                <asp:Label ID="lblAsistente1" runat="server" Text="Jean Carlo Alfaro Campos"></asp:Label>
            </td>
            <td class="style8">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style5">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;
            </td>
            <td class="style6" colspan="2">
                <asp:Label ID="lblAsistente2" runat="server" Text="Michael Montano Bermúdez"></asp:Label>
            </td>
            <td class="style8">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style5">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;
            </td>
            <td class="style6" colspan="2">
                <asp:Label ID="lblDescripcion3" runat="server" Font-Bold="True" Font-Italic="True"
                    Font-Size="Small" Text="Estudiantes de la Escuela de Computación, Instituto Tecnológico de Costa Rica"
                    Style="font-size: x-smal"></asp:Label>
            </td>
            <td class="style8">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style5">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style8">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style5">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;
            </td>
            <td class="style6">
                <asp:Label ID="lblProponentes" runat="server" CssClass="Titulo2" Text="Proponentes del proyecto"></asp:Label>
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style8">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style5">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;
            </td>
            <td class="style6" colspan="5">
                <asp:Label ID="lblProponente1" runat="server" Text="Programa Atención a la Persona Adulta Mayor (Universidad Nacional)"></asp:Label>
            </td>
            <td class="style5">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;
            </td>
            <td class="style6" colspan="5">
                <asp:Label ID="lblProponente2" runat="server" Text="Programa de Gerontología (Universidad Estatal a Distancia)"></asp:Label>
            </td>
            <td class="style5">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;
            </td>
            <td class="style6" colspan="5">
                <asp:Label ID="lblProponente3" runat="server" Text="Proyecto Educativo para la Persona Adulta Mayor (Instituto Tecnológico de Costa Rica)"></asp:Label>
            </td>
            <td class="style5">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style8">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style5">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;
            </td>
            <td class="style6" colspan="2">
                <asp:Label ID="lblPatrocinador" runat="server" CssClass="Titulo2" Text="Patrocinador"></asp:Label>
            </td>
            <td class="style8">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style5">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;
            </td>
            <td class="style6" colspan="5">
                <asp:Label ID="lblPatrocinadorDato" runat="server" Text="Proyecto Empoderar y Emprender: la persona adulta mayor agente de cambio."></asp:Label>
            </td>
            <td class="style5">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;
            </td>
            <td class="style6" colspan="5">
                <asp:Label ID="lblDescripcion4" runat="server" Font-Bold="True" Font-Italic="True"
                    Font-Size="Small" Text="Sub-Comisión Persona Adulta Mayor. Consejo Nacional de Rectores. "
                    Style="font-size: x-smal"></asp:Label>
            </td>
            <td class="style5">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style8">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style5">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;
            </td>
            <td class="style6" colspan="2">
                <asp:Label ID="lblAgradecimientos" runat="server" CssClass="Titulo2" Text="Agradecimientos"></asp:Label>
            </td>
            <td class="style8">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style5">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;
            </td>
            <td class="style6" colspan="5">
                <asp:Label ID="lblAgradecimiento1" runat="server" Text="Dr. Jaime Solano Soto (Profesor del curso Proyecto de Software)"></asp:Label>
            </td>
            <td class="style5">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;
            </td>
            <td class="style6" colspan="5">
                <asp:Label ID="lblAgradecimiento2" runat="server" Text="Máster Sonia Mora González (Profesora del curso Administración de Proyectos)"></asp:Label>
            </td>
            <td class="style5">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;
            </td>
            <td class="style6" colspan="5">
                <asp:Label ID="lblDescripcion5" runat="server" Font-Bold="True" Font-Italic="True"
                    Font-Size="Small" Text="Escuela de Computación, Instituto Tecnológico de Costa Rica"
                    Style="font-size: x-smal"></asp:Label>
            </td>
            <td class="style5">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style8">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style5">
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
