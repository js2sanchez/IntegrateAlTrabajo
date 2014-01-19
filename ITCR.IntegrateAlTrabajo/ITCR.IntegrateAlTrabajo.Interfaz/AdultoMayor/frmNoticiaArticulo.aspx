<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraAdultoMayor.Master" AutoEventWireup="true" CodeBehind="frmNoticiaArticulo.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.AdultoMayor.frmNoticiaArticulo" %>
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
                    <asp:DataGrid ID="dgNoticia" runat="server" AutoGenerateColumns="False" 
                                            BackColor="WhiteSmoke" BorderStyle="Solid" CssClass="GridMantenimiento" 
                                            Font-Names="Verdana" Font-Size="Smaller" 
                        ForeColor="Black" Height="19px" 
                                            Width="99%" 
                        onitemcommand="dgNoticia_ItemCommand">
                        <AlternatingItemStyle BackColor="Gainsboro" />
                        <HeaderStyle BackColor="Navy" Font-Bold="True" Font-Names="Verdana" 
                                                Font-Size="Larger" ForeColor="White" 
                            HorizontalAlign="Center" />
                        <Columns>
                            <asp:BoundColumn DataField="Id_Noticia" HeaderText="Id_Noticia" 
                                Visible="False"></asp:BoundColumn>
                            <asp:BoundColumn HeaderText="Título" DataField="Titulo">
                            </asp:BoundColumn>
                            <asp:TemplateColumn>
                                <ItemTemplate>
                                    <asp:ImageButton ID="ibtnVer" runat="server" CommandName="Ver" 
                                                        Height="30px" ImageAlign="Right" ImageUrl="~/Multimedia/icono-buscar.jpg" 
                                                        Width="30px" ToolTip="Ver" />
                                </ItemTemplate>
                            </asp:TemplateColumn>
                        </Columns>
                    </asp:DataGrid>
                </td>
        <td class="style4">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
