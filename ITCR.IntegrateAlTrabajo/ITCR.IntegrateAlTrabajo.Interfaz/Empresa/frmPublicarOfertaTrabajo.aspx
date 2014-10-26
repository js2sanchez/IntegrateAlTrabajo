﻿<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraEmpresa.Master" AutoEventWireup="true"
    CodeBehind="frmPublicarOfertaTrabajo.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.AdultoMayor.frmPublicarOfertaTrabajo" %>

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
        .style18
        {
            width: 44px;
        }
        .style20
        {
            width: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManagerMain" runat="server" EnablePageMethods="true"
        ScriptMode="Release" LoadScriptsBeforeUI="true">
    </asp:ScriptManager>
    <script type="text/javascript" src="../js/jquery.js"></script>
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../js/bootbox.js"></script> 
    <script type="text/javascript">
        function custom_alert(msg) {
            bootbox.dialog({
                closeButton: false,
                message: msg,
                buttons: {
                    success: {
                        label: "Aceptar",
                        className: "btn-primary"
                    }
                }
            });
        }

        function OnSuccess(response) {
            custom_alert("El proceso de eliminación se llevó a cabo correctamente.");
        }
        function OnError(error) {
            custom_alert(error);
        }

        function eliminarFila(id, rowindex) {
            var tabla = document.getElementById(id);
            tabla.deleteRow(rowindex + 1);
        }

        function eliminarRequisito(index) {
            bootbox.dialog({
                closeButton: false,
                title: false,
                message: "¿Está seguro que desea eliminar este requisito?",
                buttons: {
                    success: {
                        label: "Sí, quiero eliminarlo",
                        className: "btn-primary",
                        callback: function () {
                            eliminarFila("<%= dgRequisitos.ClientID %>", index);
                            PageMethods.eliminarRequisito(index, OnSuccess, OnError);
                        }
                    },
                    main: {
                        label: "No, quiero mantenerlo",
                        className: "btn-primary"
                    }
                }
            });
        }

        function retornar() {
            custom_alert('Ha creado la oferta satisfactoriamente.');
            location.href = "/Empresa/frmOfertasTrabajo.aspx";
        }
    </script>
    <table class="style3">
        <tr>
            <td class="style4">
            </td>
            <td class="style5" colspan="2">
                <asp:Label ID="lblPublicarOfertaTrabajo" runat="server" CssClass="Titulo1" Text="Publicar oferta de trabajo"></asp:Label>
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
                &nbsp;
            </td>
            <td class="style13" colspan="5">
                <asp:ValidationSummary ID="vsOfertaTrabajo" runat="server" ForeColor="#CC0000" ValidationGroup="gvOfertaTrabajo" />
            </td>
            <td class="style4">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;
            </td>
            <td class="style13">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style13">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style4">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;
            </td>
            <td class="style5" colspan="5">
                <asp:Panel ID="PanelDatos" runat="server" BorderStyle="Solid" BorderWidth="2px">
                    <table class="style8">
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style16">
                                &nbsp;
                            </td>
                            <td class="style15">
                                &nbsp;
                            </td>
                            <td class="style11">
                                &nbsp;
                            </td>
                            <td class="style11">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style16">
                                <asp:Label ID="lblNombrePuesto" runat="server" Text="Nombre del puesto"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtNombrePuesto" runat="server" Width="99%" placeholder="Escriba el nombre del puesto de la oferta de trabajo"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvNombrePuesto" runat="server" ControlToValidate="txtNombrePuesto"
                                    ErrorMessage="El nombre del puesto es un dato requerido." ForeColor="Red" ValidationGroup="gvOfertaTrabajo">*</asp:RequiredFieldValidator>
                            </td>
                            <td class="style11">
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
                                <asp:TextBox ID="txtDescripcion" runat="server" Height="100px" TextMode="MultiLine"
                                    Width="99%"></asp:TextBox>
                            </td>
                            <td class="style11">
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
                                <asp:DropDownList ID="drpTipo" runat="server" Width="250px">
                                </asp:DropDownList>
                            </td>
                            <td class="style11">
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
                                <asp:DropDownList ID="drpCategoria" runat="server" Width="250px">
                                </asp:DropDownList>
                            </td>
                            <td class="style11">
                                &nbsp;
                            </td>
                            <td class="style11">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style16">
                                <asp:Label ID="Label2" runat="server" Text="Vencimiento"></asp:Label>
                            </td>
                            <td class="style5">
                                <asp:Calendar ID="cldVencimiento" runat="server"/>
                            </td>
                            <td class="style11">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style16">
                                <asp:Label ID="lblRequisitos" runat="server" Text="Requisito"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtRequisitos" runat="server" Width="99%" placeholder="Escriba un requisito y luego presione agregar"></asp:TextBox>
                            </td>
                            <td align="right">
                                <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Right">
                                    <asp:Button ID="btnAgregarRequisito" runat="server" CssClass="Boton" 
                                        Text="Agregar" onclick="btnAgregarRequisito_Click"/>
                                </asp:Panel>
                            </td>
                            <td align="right">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style16">
                                &nbsp;
                            </td>
                            <td colspan="2">
                                <asp:Panel ID="PanelTablaDatos" runat="server">
                                    <asp:DataGrid ID="dgRequisitos" runat="server" AutoGenerateColumns="False" BackColor="WhiteSmoke"
                                        BorderStyle="Solid" CssClass="GridMantenimiento" Font-Names="Verdana" Font-Size="Smaller"
                                        ForeColor="Black" Height="19px" Width="99%" onitemcommand="dgRequisitos_ItemCommand">
                                        <AlternatingItemStyle BackColor="Gainsboro" />
                                        <HeaderStyle BackColor="Navy" Font-Bold="True" Font-Names="Verdana" Font-Size="Larger"
                                            ForeColor="White" HorizontalAlign="Center" />
                                        <Columns>
                                            <asp:BoundColumn HeaderText="Requisito" DataField="Req_Oferta"></asp:BoundColumn>
                                            <asp:TemplateColumn>
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="ibtnEliminar" runat="server" CommandName="Eliminar" Height="30px"
                                                    ImageUrl="~/Multimedia/icono-eliminar.jpg" Width="30px" Style="display: block; margin: 0 auto" />
                                                </ItemTemplate>
                                            </asp:TemplateColumn>
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
                                <asp:TextBox ID="txtObservaciones" runat="server" Height="100px" TextMode="MultiLine"
                                    Width="99%"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style20">
                                &nbsp;</td>
                            <td colspan="3">
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style11" align="right">
                                &nbsp;</td>
                            <td align="right" class="style5" colspan="3">
                                <asp:Panel ID="PanelBotones" runat="server" HorizontalAlign="Right">
                                    <asp:Button ID="btnAgregar" runat="server" CssClass="Boton" 
                                        OnClick="btnAgregar_Click" Text="Crear oferta de trabajo" />
                                </asp:Panel>
                            </td>
                            <td align="right" class="style5">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right" class="style11">
                                &nbsp;</td>
                            <td align="right" class="style5" colspan="3">
                                &nbsp;</td>
                            <td align="right" class="style5">
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;
            </td>
            <td class="style13">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style7">
                &nbsp;
            </td>
            <td class="style13">
                &nbsp;
            </td>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style4">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;
            </td>
            <td class="style13" colspan="5">
            </td>
            <td class="style4">
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
