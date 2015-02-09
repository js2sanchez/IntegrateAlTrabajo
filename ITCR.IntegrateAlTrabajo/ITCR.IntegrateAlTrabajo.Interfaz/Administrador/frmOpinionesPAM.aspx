<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraAdministrador.Master"
    AutoEventWireup="true" CodeBehind="frmOpinionesPAM.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.Administrador.frmOpinionesSobreBolsaTrabajo" %>

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
        .style3
        {
            width: 97%;
        }
        .style4
        {
            width: 15px;
            height: 25px;
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
        function eliminarOpinion(index) {
            bootbox.dialog({
                closeButton: false,
                title: "Comentario o Sugerencia",
                message: "¿Está seguro que desea eliminar este comentario o sugerencia?",
                buttons: {
                    success: {
                        label: "Sí, estoy seguro",
                        className: "btn-primary",
                        callback: function () {
                            PageMethods.eliminarOpinion(index, OnSuccess, OnError);
                        }
                    },
                    main: {
                        label: "No, deseo mantenerlo (a)",
                        className: "btn-primary"
                    }
                }
            });
        }


        function OnSuccess(response) {
            bootbox.dialog({
                closeButton: false,
                message: "¡El comentario o sugerencia se eliminó correctamente!.",
                title: "Eliminación exitosa",
                buttons: {
                    success: {
                        label: "Aceptar",
                        className: "btn-primary",
                        callback: function () {
                            location.href = "frmOpinionesPAM.aspx";
                        }
                    }
                }
            });
        }

        function OnError(error) {
            bootbox.alert("Hubo un error. Inténtelo más tarde.");
        }
    </script>
    <table class="style3">
        <tr>
            <td class="style4">
            </td>
            <td class="style5" colspan="5">
                <asp:Label ID="lblTituloPagina" runat="server" CssClass="Titulo1" Text="Comentarios y sugerencias de PAMs"></asp:Label>
            </td>
            <td class="style8">
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;
            </td>
            <td class="style5">
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
            <td class="style6">
                &nbsp;
            </td>
            <td class="style8">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;
            </td>
            <td class="style5" colspan="5">
                <asp:Panel ID="PanelTablaDatos" runat="server" Height="250px" ScrollBars="Auto">
                    <asp:DataGrid ID="dgOpinionesBolsaTrabajo" runat="server" AutoGenerateColumns="False"
                        BackColor="WhiteSmoke" BorderStyle="Solid" CssClass="GridMantenimiento" Font-Names="Century Gothic"
                        Font-Size="Small" ForeColor="Black" Height="19px" Width="100%" OnItemCommand="dgOpinionesBolsaTrabajo_ItemCommand">
                        <AlternatingItemStyle BackColor="Gainsboro" />
                        <HeaderStyle BackColor="Navy" Font-Bold="True" Font-Names="Century Gothic" Font-Size="Larger"
                            ForeColor="White" HorizontalAlign="Center" />
                        <Columns>
                            <asp:BoundColumn DataField="Id_Opinion" HeaderText="IdOpinion" Visible="False"></asp:BoundColumn>
                            <asp:BoundColumn HeaderText="Detalle de opinión" DataField="Detalle"></asp:BoundColumn>
                            <asp:BoundColumn DataField="FK_IdUsuario" HeaderText="Usuario"></asp:BoundColumn>
                            <asp:TemplateColumn HeaderText="Procesar">
                                <ItemTemplate>
                                    <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
                                        <asp:ImageButton ID="ibtnProcesar" runat="server" CommandName="Procesar" Height="30px"
                                            ImageUrl="~/Multimedia/icono-editar.jpg" Style="text-align: right" ToolTip="Presione este botón para marcar como procesado el comentario o sugerencia"
                                            Width="30px" />
                                    </asp:Panel>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="Eliminar">
                                <ItemTemplate>
                                    <asp:Panel ID="Panel2" runat="server" HorizontalAlign="Center">
                                        <asp:ImageButton ID="ibtnEliminar" runat="server" CommandName="Eliminar" Height="30px"
                                            ImageUrl="~/Multimedia/icono-eliminar.jpg" ToolTip="Presione este botón para eliminar el comentario o sugerencia"
                                            Width="30px" />
                                    </asp:Panel>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                        </Columns>
                    </asp:DataGrid>
                </asp:Panel>
            </td>
            <td class="style8">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;
            </td>
            <td class="style5">
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
            <td class="style6">
                &nbsp;
            </td>
            <td class="style8">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;
            </td>
            <td class="style5">
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
            <td class="style6">
                &nbsp;
            </td>
            <td class="style8">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;
            </td>
            <td class="style5">
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
            <td class="style6">
                &nbsp;
            </td>
            <td class="style8">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;
            </td>
            <td class="style5">
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
            <td class="style6">
                &nbsp;
            </td>
            <td class="style8">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;
            </td>
            <td class="style5">
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
            <td class="style6">
                &nbsp;
            </td>
            <td class="style8">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;
            </td>
            <td class="style5">
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
            <td class="style6">
                &nbsp;
            </td>
            <td class="style8">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;
            </td>
            <td class="style5">
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
            <td class="style6">
                &nbsp;
            </td>
            <td class="style8">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;
            </td>
            <td class="style5">
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
            <td class="style6">
                &nbsp;
            </td>
            <td class="style8">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;
            </td>
            <td class="style5">
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
            <td class="style6">
                &nbsp;
            </td>
            <td class="style8">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;
            </td>
            <td class="style5">
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
            <td class="style6">
                &nbsp;
            </td>
            <td class="style8">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;
            </td>
            <td class="style5">
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
            <td class="style6">
                &nbsp;
            </td>
            <td class="style8">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;
            </td>
            <td class="style5">
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
            <td class="style6">
                &nbsp;
            </td>
            <td class="style8">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;
            </td>
            <td class="style5">
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
            <td class="style6">
                &nbsp;
            </td>
            <td class="style8">
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
