<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraAdministrador.Master" AutoEventWireup="true" CodeBehind="frmPublicarNoticiaArticulo.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.Administrador.frmPublicarNoticia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
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
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style3">
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style5" colspan="2">
                <asp:Label ID="lblTituloPagina" runat="server" CssClass="Titulo1" 
                    Text="Publicar noticias y artículos"></asp:Label>
            </td>
        <td class="style7">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style4">
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
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style5" colspan="5">
            <asp:Panel ID="pnl_tipo_publicacion" runat="server" Height="74px">
                Seleccione el tipo de publicación<asp:RadioButtonList ID="RadioButtonList1" 
                    runat="server" AutoPostBack="True" Height="39px"  Width="170px" 
                    onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
                    <asp:ListItem Value="1">Artículo</asp:ListItem>
                    <asp:ListItem Value="2">Noticia</asp:ListItem>
                </asp:RadioButtonList>
                <br />
            </asp:Panel>
            <br />
        </td>
        <td class="style4">
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
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style5" colspan="5">
        <asp:ValidationSummary runat="server" ID="rfvcnoticia" 
                    ValidationGroup="gvnoticia" ForeColor="#CC0000">
                </asp:ValidationSummary>
        <asp:ValidationSummary runat="server" ID="rfvarticulo" 
                    ValidationGroup="gvarticulo" ForeColor="#CC0000">
                </asp:ValidationSummary>
            <asp:MultiView ID="mv_articulo_o_noticia" runat="server">
                <asp:View ID="noticia" runat="server">
                    Título:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_titulo" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvtitulonoticia" runat="server" ControlToValidate="txt_titulo"
                                    ErrorMessage="El título es un dato requerido." ForeColor="Red" ValidationGroup="gvnoticia">*</asp:RequiredFieldValidator>
                    <br />
                    <br />
                    Contenido:
                    <asp:TextBox ID="txt_contenido" runat="server" TextMode="MultiLine" 
                        Width="441px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvcontenidonoticia" runat="server" ControlToValidate="txt_contenido"
                                    ErrorMessage="El contenido es un dato requerido." ForeColor="Red" ValidationGroup="gvnoticia">*</asp:RequiredFieldValidator>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_guardar_noticia" runat="server" Text="Guardar" 
                        onclick="btn_guardar_noticia_Click" />
                    <br />
                    <br />
                </asp:View>
                <br />
                <asp:View ID="vw_articulo" runat="server">
                    Título:
                    <asp:TextBox ID="txt_titulo_articulo" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <input id="fl_import" type="file" />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_guardar_articulo" runat="server" Text="Guardar" />
                    <br />
                </asp:View>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </asp:MultiView>
        </td>
        <td class="style4">
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
        <td class="style4">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
