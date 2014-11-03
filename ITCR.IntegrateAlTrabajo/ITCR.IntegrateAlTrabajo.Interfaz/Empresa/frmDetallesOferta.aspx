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
        .style17
        {
            width: 25px;
        }
        .style18
        {
            width: 36px;
            height: 25px;
        }
        .style19
        {
            width: 36px;
            height: 29px;
        }
        .style20
        {
            width: 25px;
            height: 1px;
        }
        .style21
        {
            height: 1px;
        }
        .style22
        {
            width: 36px;
            height: 1px;
        }
        .style23
        {
            width: 25px;
            height: 29px;
        }
        .style24
        {
            height: 29px;
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
                        label: "No, deseo mantenerla",
                        className: "btn-primary"
                    },
                    main: {
                        label: "Sí, estoy seguro",
                        className: "btn-primary",
                        callback: function () {
                            PageMethods.eliminarOferta(id, OnSuccess, OnError);
                        }
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
            <td class="style5">
                <asp:Label ID="lblDetallesOfertaTrabajo" runat="server" CssClass="Titulo1" Text="Detalles de oferta de trabajo"></asp:Label>
            </td>
            <td class="style7">
            </td>
            <td class="style13">
            </td>
            <td align="right">
            <asp:Button ID="btnRegresar" runat="server" CssClass="Boton"
               Text="Regresar" UseSubmitBehavior="False" onclick="btnRegresar_Click"/>
               &nbsp&nbsp
            <asp:Button ID="btnInteresados" runat="server" CssClass="Boton"
               Text="Ver interesados" UseSubmitBehavior="False" 
                    onclick="btnInteresados_Click" />
            </td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td align="right">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
            </td>
            <td class="style4">
            </td>
            <td class="style8" colspan="4">
                <asp:Panel ID="pnlPerfil" runat="server" BorderStyle="Solid" BorderWidth="2px">
                    <table class="style8">
                        <tr>
                            <td class="style20">
                            </td>
                            <td class="style21" colspan="2">
                            </td>
                            <td class="style22">
                            </td>
                            <td class="style21">
                            </td>
                        </tr>
                        <tr>
                            <td class="style23">
                            </td>
                            <td class="style24" colspan="2">
                                <asp:Label ID="lblDatosGenerales" runat="server" CssClass="Titulo2" 
                                    Text="Datos de la oferta de trabajo"></asp:Label>
                            </td>
                            <td class="style19">
                                <asp:Panel ID="PanelEditarDatosPersonales" runat="server" 
                                    HorizontalAlign="Right">
                                    &nbsp;<asp:ImageButton ID="ibtnEditarOferta" runat="server" Height="50px" 
                                        ImageUrl="~/Multimedia/icono-editar.jpg" onclick="ibtnEditarOferta_Click" 
                                        ToolTip="Presione este botón para actualizar la oferta de trabajo" 
                                        Width="50px" />
                                </asp:Panel>
                            </td>
                            <td class="style24">
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style16">
                                <asp:Label ID="lblNombrePuesto" runat="server" Text="Nombre del puesto"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblNombrePuestoDato" runat="server" Width="99%"></asp:Label>
                            </td>
                            <td class="style18">
                            </td>
                            <td class="style11">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style16">
                                <asp:Label ID="lblDescripcion" runat="server" Text="Descripción"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblDescripcionDato" runat="server"
                                    Width="99%"></asp:Label>
                            </td>
                            <td class="style18">
                            </td>
                            <td class="style11">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style16">
                                <asp:Label ID="lblTipo" runat="server" Text="Tipo"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:Label ID="lblTipoDato" runat="server" Width="250px">
                                </asp:Label>
                            </td>
                            <td class="style18">
                                &nbsp;
                            </td>
                            <td class="style11">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style16">
                                <asp:Label ID="lblCategoria" runat="server" Text="Categoría"></asp:Label>
                            </td>
                            <td class="style5">
                                <asp:Label ID="lblCategoriaDato" runat="server" Width="250px">
                                </asp:Label>
                            </td>
                            <td class="style18">
                                &nbsp;
                            </td>
                            <td class="style11">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style16">
                                <asp:Label ID="Label4" runat="server" Text="Vencimiento"></asp:Label>
                            </td>
                            <td class="style5">
                                <asp:Label ID="lblVencimiento" runat="server" Width="250px">
                                </asp:Label>
                            </td>
                            <td class="style18">
                                &nbsp;
                            </td>
                            <td class="style11">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style16">
                                <asp:Label ID="Label3" runat="server" Text="Estado"></asp:Label>
                            </td>
                            <td class="style5">
                                <asp:Label ID="lblEstado" runat="server" Width="250px">
                                </asp:Label>
                            </td>
                            <td class="style18">
                                &nbsp;
                            </td>
                            <td class="style11">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style16">
                                <asp:Label ID="lblRequisitos" runat="server" Text="Requisitos"></asp:Label>
                            </td>
                            <td colspan="2">
                                <asp:Panel ID="PanelTablaDatos" runat="server">
                                    <asp:DataGrid ID="dgRequisitos" runat="server" AutoGenerateColumns="False" BackColor="WhiteSmoke"
                                        BorderStyle="Solid" CssClass="GridMantenimiento" 
                                        Font-Names="Century Gothic" Font-Size="Small"
                                        ForeColor="Black" Height="19px" Width="99%">
                                        <AlternatingItemStyle BackColor="Gainsboro" />
                                        <HeaderStyle BackColor="Navy" Font-Bold="True" Font-Names="Century Gothic" Font-Size="Larger"
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
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style16">
                                <asp:Label ID="lblObservaciones" runat="server" 
                                    Text="Observaciones adicionales"></asp:Label>
                            </td>
                            <td colspan="2">
                                <asp:Label ID="lblObservacionesDato" runat="server"
                                    Width="99%"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style17">
                                &nbsp;</td>
                            <td colspan="3">
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td colspan="7">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="7">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style4">
            </td>
            <td class="style4">
            </td>
            <td class="style8" colspan="4">
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
                                        onclick="ibtEliminarOferta_Click" 
                                        ToolTip="Presione este botón para eliminar esta oferta de trabajo" />
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
            <td colspan="7">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="7">
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
