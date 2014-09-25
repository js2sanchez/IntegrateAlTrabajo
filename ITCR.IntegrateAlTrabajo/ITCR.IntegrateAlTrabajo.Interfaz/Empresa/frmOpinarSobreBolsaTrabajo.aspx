<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraEmpresa.Master" AutoEventWireup="true" CodeBehind="frmOpinarSobreBolsaTrabajo.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.Empresa.frmOpinarSobreBolsaTrabajo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
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
    <table class="style3">
        <tr>
            <td class="style8">
                &nbsp;
            </td>
            <td class="style5" colspan="5">
                <asp:Label ID="lblTituloPagina" runat="server" CssClass="Titulo1" 
                    Text="Comentarios y sugerencias sobre la bolsa de trabajo"></asp:Label>
                &nbsp;
                &nbsp;
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
                &nbsp;</td>
            <td class="style5" colspan="5">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
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
                    ErrorMessage="El comentario o sugerencia que está intentando enviar no es válido." ForeColor="Red" ValidationGroup="gvOpinion">*</asp:RequiredFieldValidator>
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
                    <asp:Button ID="btnEnviarOpinión" runat="server" Text="Enviar" CssClass="Boton" 
                        OnClick="btnEnviarOpinión_Click" 
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
