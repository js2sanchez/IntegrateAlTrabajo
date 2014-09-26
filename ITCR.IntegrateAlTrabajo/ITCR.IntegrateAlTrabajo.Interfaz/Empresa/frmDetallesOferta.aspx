<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraEmpresa.Master" AutoEventWireup="true"
    CodeBehind="frmDetallesOferta.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.Empresa.frmDetallesOferta" %>

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
            font-family:Century Gothic;
            font-size:15px;
            text-align:justify;
            border-spacing: 8px;
            border-collapse: separate;
        }
        label
        {
            font-weight:normal;
        }
        input
        {
            font-weight:normal;
        }
        .style3
        {
            width: 98%;
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
            width: 100%;
        }
        .style11
        {
            width: 25px;
            height: 25px;
        }
        .style13
        {
            height: 25px;
        }
        .style15
        {
            width: 321px;
            height: 25px;
        }
        .style16
        {
            height: 25px;
            width: 164px;
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
        function eliminarOferta(id) {
            bootbox.dialog({
                closeButton: false,
                title: false,
                message: "¿Está seguro que desea eliminar esta oferta de trabajo?",
                buttons: {
                    success: {
                        label: "Sí, estoy seguro",
                        className: "btn-primary",
                        callback: function () {
                            PageMethods.eliminarOferta(id, OnSuccess, OnError);
                        }
                    },
                    main: {
                        label: "No, deseo mantenerla",
                        className: "btn-primary"
                    }
                }
            });
        }


        function OnSuccess(response) {
            bootbox.dialog({
                closeButton: false,
                message: "La oferta se ha eliminado de la bolsa de trabajo exitosamente.",
                title: "Eliminación completada",
                buttons: {
                    success: {
                        label: "Volver a la página de ofertas de trabajo",
                        className: "btn-primary",
                        callback: function () {
                            location.href = "/Empresa/frmOfertasTrabajo.aspx";
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
            <td class="style4">
            </td>
            <td class="style5" colspan="2">
                <asp:Label ID="lblDetallesOfertaTrabajo" runat="server" CssClass="Titulo1" Text="Detalles de oferta de trabajo"></asp:Label>
            </td>
            <td class="style7">
            </td>
            <td class="style13">
            </td>
            <td class="style6">
            </td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td class="style4">
            </td>
            <td class="style4">
            </td>
            <td class="style8" colspan="5">
                <asp:Panel ID="pnlPerfil" runat="server" BorderStyle="Solid" BorderWidth="2px">
                    <table class="style8">
                        <tr>
                            <td class="style31" colspan="2">
                                <asp:Label ID="lblDatosGenerales" runat="server" CssClass="Titulo2" Text="Datos de la oferta de trabajo"></asp:Label>
                            </td>
                            <td class="style25" colspan="2">
                                <asp:Panel ID="PanelEditarDatosPersonales" runat="server" HorizontalAlign="Right">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:ImageButton ID="ibtnEditarOferta" runat="server" Height="50px" 
                                        ImageUrl="~/Multimedia/icono-editar.jpg" Width="50px" 
                                        onclick="ibtnEditarOferta_Click" />
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td class="style16">
                                &nbsp;
                            </td>
                            <td class="style15">
                                &nbsp;
                            </td>
                            <td class="style11">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style16">
                                <asp:Label ID="lblNombrePuesto" runat="server" Text="Nombre del puesto"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblNombrePuestoDato" runat="server" Width="99%"></asp:Label>
                            </td>
                            <td class="style11">
                            </td>
                        </tr>
                        <tr>
                            <td class="style16">
                                <asp:Label ID="lblDescripcion" runat="server" Text="Descripción"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblDescripcionDato" runat="server"
                                    Width="99%"></asp:Label>
                            </td>
                            <td class="style11">
                            </td>
                        </tr>
                        <tr>
                            <td class="style16">
                                <asp:Label ID="lblTipo" runat="server" Text="Tipo"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:Label ID="lblTipoDato" runat="server" Width="250px">
                                </asp:Label>
                            </td>
                            <td class="style11">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style16">
                                <asp:Label ID="lblCategoria" runat="server" Text="Categoría"></asp:Label>
                            </td>
                            <td class="style5">
                                <asp:Label ID="lblCategoriaDato" runat="server" Width="250px">
                                </asp:Label>
                            </td>
                            <td class="style11">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style16">
                                <asp:Label ID="lblRequisitos" runat="server" Text="Requisitos"></asp:Label>
                            </td>
                            <td colspan="2">
                                <asp:Panel ID="PanelTablaDatos" runat="server">
                                    <asp:DataGrid ID="dgRequisitos" runat="server" AutoGenerateColumns="False" BackColor="WhiteSmoke"
                                        BorderStyle="Solid" CssClass="GridMantenimiento" Font-Names="Verdana" Font-Size="Smaller"
                                        ForeColor="Black" Height="19px" Width="99%">
                                        <AlternatingItemStyle BackColor="Gainsboro" />
                                        <HeaderStyle BackColor="Navy" Font-Bold="True" Font-Names="Verdana" Font-Size="Larger"
                                            ForeColor="White" HorizontalAlign="Center" />
                                        <Columns>
                                            <asp:BoundColumn DataField="Id_RequisitoOfertaTrabajo" HeaderText="Id_Requisito" Visible="False">
                                            </asp:BoundColumn>
                                            <asp:BoundColumn HeaderText="Requisito" DataField="Detalle"></asp:BoundColumn>
                                            <asp:BoundColumn DataField="FK_IdOfertaTrabajo" HeaderText="FK_IdOfertaTrabajo" Visible="False">
                                            </asp:BoundColumn>
                                        </Columns>
                                    </asp:DataGrid>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td class="style16">
                                <asp:Label ID="lblObservaciones" runat="server" Text="Observaciones adicionales"></asp:Label>
                            </td>
                            <td colspan="2">
                                <asp:Label ID="lblObservacionesDato" runat="server"
                                    Width="99%"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td colspan="8">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="8">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style4">
            </td>
            <td class="style4">
            </td>
            <td class="style8" colspan="5">
                <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" BorderWidth="2px">
                    <table class="style8">
                        <tr>
                            <td class="style31" colspan="4">
                                <asp:Label ID="Label1" runat="server" CssClass="Titulo2" Text="Eliminar oferta de trabajo"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style31" colspan="3">
                                <asp:Label ID="Label2" runat="server" Text="Presione el siguiente botón si desea eliminar la oferta de trabajo por completo de la bolsa de trabajo."></asp:Label>
                            </td>
                            <td>
                                <asp:Panel ID="Panel2" runat="server" HorizontalAlign="Right">
                                    <asp:ImageButton ID="ibtEliminarOferta" runat="server" Height="50px" 
                                        ImageUrl="~/Multimedia/icono-eliminar.jpg" Width="50px" 
                                        onclick="ibtEliminarOferta_Click" />
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td colspan="8">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="8">
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
