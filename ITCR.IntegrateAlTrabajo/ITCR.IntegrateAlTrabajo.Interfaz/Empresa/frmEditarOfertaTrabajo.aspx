﻿<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraEmpresa.Master" AutoEventWireup="true"
    CodeBehind="frmEditarOfertaTrabajo.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.Empresa.frmEditarOfertaTrabajo" %>

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
            border-spacing: 8px;
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

        function eliminarFila(id, rowindex) {
            var tabla = document.getElementById(id);
            tabla.deleteRow(rowindex + 1);
        }

        function OnSuccess(response) {
            custom_alert("El proceso de eliminación se llevó a cabo correctamente.");
        }
        function OnError(error) {
            custom_alert(error);
        }

        function endConfirmation() {
            bootbox.dialog({
                closeButton: false,
                title: "Salir sin guardar",
                message: "¿Está seguro que desea salir sin guardar?",
                buttons: {
                    success: {
                        label: "Sí, estoy seguro",
                        className: "btn-primary",
                        callback: function () {
                            location.href = "/Empresa/frmDetallesOferta.aspx";
                        }
                    },
                    main: {
                        label: "No, deseo continuar editando la oferta",
                        className: "btn-primary"
                    }
                }
            });
        }

        function eliminarRequisito(index) {
            bootbox.dialog({
                closeButton: false,
                title: "Eliminar requisito",
                message: "¿Está seguro que desea eliminar este requisito?",
                buttons: {
                    success: {
                        label: "No, quiero mantenerlo",
                        className: "btn-primary"
                    },
                    main: {
                        label: "Sí, quiero eliminarlo",
                        className: "btn-primary",
                        callback: function () {
                            eliminarFila("<%= dgRequisitos.ClientID %>", index);
                            PageMethods.eliminarRequisito(index, OnSuccess, OnError);
                        }
                    }
                }
            });
        }

        function retornar() {
            custom_alert('Ha actualizado la oferta satisfactoriamente.');
            location.href = "/Empresa/frmDetallesOferta.aspx";
        }
    </script>
    <table class="style3">
        <tr>
            <td class="style4">
            </td>
            <td class="style5" colspan="2">
                <asp:Label ID="lblEditarOfertaTrabajo" runat="server" CssClass="Titulo1" Text="Editar oferta de trabajo"></asp:Label>
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
                <asp:ValidationSummary ID="vsOfertaTrabajo2" runat="server" ForeColor="#CC0000" ValidationGroup="gvOfertaTrabajo2" />
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
                                &nbsp;
                            </td>
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
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;
                            </td>
                            <td class="style16" colspan="3">
                                <asp:Panel ID="PanelBotones" runat="server" HorizontalAlign="Right">
                                    <asp:Button ID="btnSalir" runat="server" CssClass="Boton" OnClick="btnSalir_Click"
                                        Text="Cancelar" />
                                    &nbsp;&nbsp;
                                    <asp:Button ID="btnActualizar" runat="server" CssClass="Boton" OnClick="btnActualizar_Click"
                                        Text="Actualizar oferta de trabajo" />
                                </asp:Panel>
                            </td>
                            <td class="style11">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style40">
                                &nbsp;
                            </td>
                            <td class="style39">
                                <asp:Label ID="lblNombrePuesto" runat="server" Text="Nombre del puesto"></asp:Label>
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="txtNombrePuesto" runat="server" Width="500px" onblur="this.placeholder = 'Escriba el nombre del puesto aquí'"
                                    onfocus="this.placeholder = ''" placeholder="Escriba el nombre del puesto aquí"
                                    ToolTip="Ejemplo: Desarrollador de aplicaciones web"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvNombrePuesto" runat="server" ControlToValidate="txtNombrePuesto"
                                    ErrorMessage="El nombre del puesto es un dato requerido, por lo que debe introducir un valor válido."
                                    ForeColor="Red" ValidationGroup="gvOfertaTrabajo">*</asp:RequiredFieldValidator>
                            </td>
                            <td class="style11">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style40">
                                &nbsp;
                            </td>
                            <td class="style39">
                                <asp:Label ID="lblDescripcion" runat="server" Text="Descripción general"></asp:Label>
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="txtDescripcion" runat="server" Height="70px" TextMode="MultiLine"
                                    Width="500px" placeholder="Escriba la descripción general del puesto aquí" onblur="this.placeholder = 'Escriba la descripción general del puesto aquí'"
                                    onfocus="this.placeholder = ''" ToolTip="Ejemplo: Desarrollo web utilizando las tecnologías de .Net"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ControlToValidate="txtDescripcion"
                                    ErrorMessage="La descripcion es un dato requerido, por lo que debe introducir un valor válido."
                                    ForeColor="Red" ValidationGroup="gvOfertaTrabajo">*</asp:RequiredFieldValidator>
                            </td>
                            <td class="style11">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style40">
                                &nbsp;
                            </td>
                            <td class="style39">
                                <asp:Label ID="lblTipo" runat="server" Text="Tipo"></asp:Label>
                            </td>
                            <td class="style15" colspan="2">
                                <asp:DropDownList ID="drpTipo" runat="server" Width="250px">
                                </asp:DropDownList>
                                &nbsp;
                            </td>
                            <td class="style11">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style41">
                            </td>
                            <td class="style37">
                                <asp:Label ID="lblCategoria" runat="server" Text="Categoría"></asp:Label>
                            </td>
                            <td class="style36" colspan="2">
                                <asp:DropDownList ID="drpCategoria" runat="server" Width="250px">
                                </asp:DropDownList>
                                &nbsp;
                            </td>
                            <td class="style36">
                            </td>
                        </tr>
                        <tr>
                            <td class="style40">
                                &nbsp;
                            </td>
                            <td class="style39">
                                &nbsp;
                            </td>
                            <td class="style45">
                                &nbsp;
                            </td>
                            <td class="style49">
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style40">
                                &nbsp;
                            </td>
                            <td class="style39">
                                <asp:Label ID="Label2" runat="server" Text="Fecha de vencimiento"></asp:Label>
                            </td>
                            <td class="style45">
                                <asp:Calendar ID="cldVencimiento" runat="server" />
                            </td>
                            <td class="style49">
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;
                            </td>
                            <td class="style16">
                                <asp:Label ID="Label1" runat="server" Text="Estado"></asp:Label>
                            </td>
                            <td class="style5">
                                <asp:CheckBox runat="server" ID="ckbEstado" Text=" Activa (Seleccione la casilla si la oferta está activa.)" />
                            </td>
                            <td class="style11">
                                &nbsp;
                            </td>
                            <td class="style11">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style40">
                                &nbsp;
                            </td>
                            <td class="style39">
                                <asp:Label ID="lblRequisitos" runat="server" Text="Requisitos"></asp:Label>
                            </td>
                            <td class="style45">
                                <asp:TextBox ID="txtRequisitos" runat="server" Width="320px" placeholder="Escriba aquí un requisito para agregar"
                                    onblur="this.placeholder = 'Escriba aquí un requisito para agregar'" onfocus="this.placeholder = ''"
                                    ToolTip="Ejemplo: Excelente dominio del idioma inglés"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvRequisitos" runat="server" ControlToValidate="txtRequisitos"
                                    ErrorMessage="El requisito que está intentando agregar es inválido. Haga las correcciones necesarias e inténtelo nuevamente."
                                    ForeColor="Red" ValidationGroup="gvOfertaTrabajo2">*</asp:RequiredFieldValidator>
                            </td>
                            <td class="style49">
                                <asp:Panel ID="Panel2" runat="server" HorizontalAlign="Left" Width="150px">
                                    <asp:Button ID="btnAgregarRequisito0" runat="server" CssClass="Boton" OnClick="btnAgregarRequisito_Click"
                                        Text="Agregar" />
                                </asp:Panel>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style40">
                                &nbsp;
                            </td>
                            <td class="style39">
                                &nbsp;
                            </td>
                            <td colspan="2">
                                <asp:Panel ID="PanelTablaDatos" runat="server">
                                    <asp:DataGrid ID="dgRequisitos" runat="server" AutoGenerateColumns="False" BackColor="WhiteSmoke"
                                        BorderStyle="Solid" CssClass="GridMantenimiento" Font-Names="Century Gothic"
                                        Font-Size="Small" ForeColor="Black" Height="19px" OnItemCommand="dgRequisitos_ItemCommand"
                                        Width="99%">
                                        <AlternatingItemStyle BackColor="Gainsboro" />
                                        <HeaderStyle BackColor="Navy" Font-Bold="True" Font-Names="Century Gothic" Font-Size="Larger"
                                            ForeColor="White" HorizontalAlign="Center" />
                                        <Columns>
                                            <asp:BoundColumn DataField="Id_RequisitoOfertaTrabajo" HeaderText="IdRequisito" Visible="false">
                                            </asp:BoundColumn>
                                            <asp:BoundColumn DataField="Detalle" HeaderText="Requisito"></asp:BoundColumn>
                                            <asp:TemplateColumn HeaderText="Eliminar">
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="ibtnEliminar0" runat="server" CommandName="Eliminar" Height="30px"
                                                        ImageUrl="~/Multimedia/icono-eliminar.jpg" Style="display: block; margin: 0 auto"
                                                        ToolTip="Presione este botón para eliminar este requisito" Width="30px" />
                                                </ItemTemplate>
                                            </asp:TemplateColumn>
                                        </Columns>
                                    </asp:DataGrid>
                                </asp:Panel>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style40">
                                &nbsp;
                            </td>
                            <td class="style39">
                                <asp:Label ID="lblObservaciones" runat="server" Text="Observaciones adicionales"></asp:Label>
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="txtObservaciones" runat="server" Height="70px" TextMode="MultiLine"
                                    Width="500px" placeholder="Si tiene observaciones adicionales del puesto, escríbalas aquí"
                                    onblur="this.placeholder = 'Si tiene observaciones adicionales del puesto, escríbalas aquí'"
                                    onfocus="this.placeholder = ''" ToolTip="Ejemplo: Se requiere una persona con disponibilidad inmediata"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style11" align="right">
                                &nbsp;
                            </td>
                            <td align="right" class="style5" colspan="3">
                                &nbsp;
                            </td>
                            <td align="right" class="style5">
                                &nbsp;
                            </td>
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
