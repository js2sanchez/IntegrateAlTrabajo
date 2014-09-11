<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraEmpresa.Master" AutoEventWireup="true"
    CodeBehind="frmOpinarSobreBolsaTrabajo.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.Empresa.frmOpinarSobreBolsaTrabajo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
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
            border-spacing: 5px;
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
        .DisabledButton input[disabled="true"][type="button"]
        {
            color: Gray;
        }
        input[disabled="true"][type="submit"]
        {
            color: Gray;
        }
        .style3
        {
            width: 97%;
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
        .style8
        {
            width: 15px;
            height: 25px;
        }
        .style9
        {
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

        function mostrarMensajeAgradecimiento() {
            bootbox.dialog({
                closeButton: false,
                message: "¡Muchas gracias por enviar sus comentarios y sugerencias, esto nos ayudará a mejorar!",
                title: "Comentarios y sugerencias",
                buttons: {
                    success: {
                        label: "Aceptar",
                        className: "btn-primary",
                        callback: function () {
                            location.href = "frmPerfilEmpresa.aspx";
                        }
                    }
                }
            });
        }
    </script>
    <table class="style3">
        <tr>
            <td class="style8">
                &nbsp;
            </td>
            <td class="style5" colspan="5">
                <asp:Label ID="lblTituloPagina" runat="server" CssClass="Titulo1" Text="Comentarios y sugerencias sobre la bolsa de trabajo"></asp:Label>
                &nbsp; &nbsp; &nbsp;
            </td>
            <td class="style8">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;
            </td>
            <td class="style9" colspan="5">
                <asp:ValidationSummary ID="vsOpinion" runat="server" ForeColor="#CC0000" ValidationGroup="gvOpinion" />
            </td>
            <td class="style8">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;
            </td>
            <td class="style9" colspan="5">
                <asp:Label ID="lblMensaje" runat="server" Text="Estimado usuario, siempre es importante mejorar, por lo que le agradecemos que nos envíe sus sugerencias o nos comente aquellos aspectos que considera sobresalientes."></asp:Label>
            </td>
            <td class="style8">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;
            </td>
            <td class="style5" colspan="5">
                &nbsp;
            </td>
            <td class="style8">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;
            </td>
            <td class="style5" colspan="5">
                <asp:TextBox ID="txtOpinion" runat="server" Height="120px" TextMode="MultiLine" ToolTip="Ejemplo: La letra es muy pequeña y esto dificulta la lectura."
                    onblur="this.placeholder = 'Por favor introduzca su comentario o sugerencia aquí'"
                    onfocus="this.placeholder = ''" placeholder="Por favor introduzca su comentario o sugerencia aquí"
                    Width="860px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvOpinion" runat="server" ControlToValidate="txtOpinion"
                    ErrorMessage="El comentario o sugerencia que está intentando enviar no es válido."
                    ForeColor="Red" ValidationGroup="gvOpinion">*</asp:RequiredFieldValidator>
            </td>
            <td class="style8">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;
            </td>
            <td class="style9" colspan="5">
                <asp:Panel ID="PanelBotonEnviar" runat="server" HorizontalAlign="Right">
                    <asp:Button ID="btnEnviarOpinión" runat="server" Text="Enviar" CssClass="Boton" OnClick="btnEnviarOpinión_Click"
                        ToolTip="Presione este botón para enviar su comentario o sugerencia" />
                </asp:Panel>
            </td>
            <td class="style8">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;
            </td>
            <td class="style9">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style9">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style8">
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
