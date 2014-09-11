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
        function alertBoxCustom(acceptText, cancelText, message) {
            // custom OK and Cancel label
            // default: OK, Cancel
            alertify.set({ labels: {
                ok: acceptText,
                cancel: cancelText
            }
            });
            // button labels will be "Accept" and "Deny"
            alertify.confirm(message)
        }

        function eliminarServicio(IdServicio, index) {
            bootbox.dialog({
            closeButton: false,
            title: "Servicio",
            message: "¿Está seguro (a) que desea eliminar este servicio?",
            buttons: {
                success: {
                    label: "Sí, quiero eliminarlo",
                    className: "btn-primary",
                    callback: function () {
                            PageMethods.eliminarServicio(IdServicio, OnSuccess, OnError);
                        }
                    },
                    main: {
                        label: "No, quiero mantenerlo",
                        className: "btn-primary"
                    }
                }
            });
        }

        function eliminarFila(id, rowindex) {
            var tabla = document.getElementById(id);
            tabla.deleteRow(rowindex + 1);
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

        function NotificarErrorCantidadDias() {
            bootbox.dialog({
                closeButton: false,
                message: "El servicio se debe ofrecer al menos 1 día a la semana. Si todavía no está seguro (a) de los días en los que ofrecerá el servicio, ingréselo posteriormente.",
                title: "Servicio",
                buttons: {
                    success: {
                        label: "Aceptar",
                        className: "btn-primary",
                    }
                }
            });
        }
    </script>
    <table class="style3">
        <tr>
            <td class="style9">
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
            <td class="style9">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;
            </td>
            <td class="style5" colspan="2">
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
            <td class="style5" colspan="5">
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
            <td class="style5" colspan="5">
                <asp:Panel ID="PanelTablaDatos" runat="server">
                    <asp:DataGrid ID="dgServicios" runat="server" AutoGenerateColumns="False" BackColor="WhiteSmoke"
                        BorderStyle="Solid" CssClass="GridMantenimiento" Font-Names="Century Gothic"
                        Font-Size="Small" ForeColor="Black" Height="19px" Width="100%" OnDeleteCommand="dgServicios_DeleteCommand"
                        OnItemCommand="dgServicios_ItemCommand" OnItemDataBound="dgServicios_ItemDataBound">
                        <AlternatingItemStyle BackColor="Gainsboro" />
                        <HeaderStyle BackColor="Navy" Font-Bold="True" Font-Names="Century Gothic" Font-Size="Larger"
                            ForeColor="White" HorizontalAlign="Center" />
                        <Columns>
                            <asp:BoundColumn HeaderText="Id" DataField="Id_Servicio" Visible="False"></asp:BoundColumn>
                            <asp:BoundColumn HeaderText="Nombre" DataField="Nom_Servicio"></asp:BoundColumn>
                            <asp:BoundColumn HeaderText="Descripción" DataField="Descripcion"></asp:BoundColumn>
                            <asp:BoundColumn DataField="FK_IdCategoriaServicio" HeaderText="Categoría"></asp:BoundColumn>
                            <asp:BoundColumn DataField="FK_IdTipoServicio" HeaderText="Tipo"></asp:BoundColumn>
                            <asp:BoundColumn HeaderText="Horario"></asp:BoundColumn>
                            <asp:TemplateColumn HeaderText="Editar">
                                <ItemTemplate>
                                    <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
                                        <asp:ImageButton ID="ibtnEditar" runat="server" CommandName="Editar" Height="30px"
                                            ImageUrl="~/Multimedia/icono-editar.jpg" Width="30px" />
                                    </asp:Panel>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="Eliminar">
                                <ItemTemplate>
                                    <asp:Panel ID="Panel2" runat="server" HorizontalAlign="Center">
                                        <asp:ImageButton ID="ibtnEliminar" runat="server" CommandName="Eliminar" Height="24px"
                                            ImageUrl="~/Multimedia/icono-eliminar.jpg" Width="23px" />
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
            <td class="style5" colspan="5">
                &nbsp;
            </td>
            <td class="style9">
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
