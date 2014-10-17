<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraAdultoMayor.Master"
    AutoEventWireup="true" CodeBehind="frmConsultarServiciosOfrecidos.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.AdultoMayor.frmConsultarServiciosOfrecidos" %>

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
            width: 98%;
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
        .style9
        {
            width: 15px;
        }
        .GridMantenimiento
        {
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
    <script type="text/javascript" src="../js/alertify.min.js"></script>
    <script type="text/javascript" src="../js/bootbox.js"></script>
    <script type="text/javascript">
        function mostrarErrorSistema() {
            bootbox.dialog({
                closeButton: false,
                message: "Estimado usuario (a): El sistema Intégrate al trabajo está presentando algunos problemas, por favor intente llevar a cabo sus tareas más tarde. ¡Gracias por su comprensión!",
                title: "¡Error del sistema!",
                buttons: {
                    success: {
                        label: "Aceptar",
                        className: "btn-primary",
                        callback: function () {
                            location.href = "/home.aspx";
                        }
                    }
                }
            });
        }

        function OnSuccess(response) {
            
            bootbox.alert("El proceso de eliminación se llevó a cabo correctamente.",
            function()
            {
                window.location.href = "frmConsultarServiciosOfrecidos.aspx";
            }
            );
        }

        function OnError(error) {
            bootbox.alert(error);
        }
    </script>
    <table class="style3">
        <tr>
            <td class="style9">
                &nbsp;
            </td>
            <td class="style5">
                <asp:Label ID="lblConsultarServicios" runat="server" Text="Mis Servicios" CssClass="Titulo1"></asp:Label>
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
            <td class="style9">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;
            </td>
            <td class="style5" colspan="4">
                <asp:Panel ID="PanelNoDatos" runat="server">
                    <asp:Label ID="Label2" runat="server" Text="No hay ningún servicio para mostrar."></asp:Label>
                </asp:Panel>
            </td>
            <td class="style9">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;
            </td>
            <td class="style5" colspan="4">
                <asp:Panel ID="PanelTablaDatos" runat="server">
                    <asp:DataGrid ID="dgServicios" runat="server" AutoGenerateColumns="False" BackColor="WhiteSmoke"
                        BorderStyle="Solid" CssClass="GridMantenimiento" Font-Names="Century Gothic"
                        Font-Size="Small" ForeColor="Black" Height="19px" Width="100%"
                        OnItemCommand="dgServicios_ItemCommand">
                        <AlternatingItemStyle BackColor="Gainsboro" />
                        <HeaderStyle BackColor="Navy" Font-Bold="True" Font-Names="Century Gothic" Font-Size="Larger"
                            ForeColor="White" HorizontalAlign="Center" />
                        <Columns>
                            <asp:BoundColumn HeaderText="Id" DataField="Id_Servicio" Visible="False"></asp:BoundColumn>
                            <asp:BoundColumn HeaderText="Nombre" DataField="Nom_Servicio"></asp:BoundColumn>
                            <asp:BoundColumn DataField="FK_IdTipoServicio" HeaderText="Tipo"></asp:BoundColumn>
                            <asp:BoundColumn HeaderText="Categoría" DataField="FK_IdCategoriaServicio"></asp:BoundColumn>
                            <asp:TemplateColumn HeaderText="Ver detalles">
                                <ItemTemplate>
                                    <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
                                        <asp:ImageButton ID="ibtnVerDetalles" runat="server" CommandName="VerDetalles" Height="30px"
                                            ImageUrl="~/Multimedia/icono-buscar.jpg" Width="30px" 
                                            
                                            ToolTip="Presione este botón para ver, actualizar y eliminar los datos de este servicio" />
                                    </asp:Panel>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                        </Columns>
                    </asp:DataGrid>
                </asp:Panel>
            </td>
            <td class="style9">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;
            </td>
            <td class="style5" colspan="4">
                &nbsp;
            </td>
            <td class="style9">
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
