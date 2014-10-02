<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraAdultoMayor.Master"
    AutoEventWireup="true" CodeBehind="frmEditarExperienciasLaboralesAdultoMayor.aspx.cs"
    Inherits="ITCR.IntegrateAlTrabajo.Interfaz.AdultoMayor.frmEditarExperienciasLaboralesAdultoMayor" %>

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
        .style14
        {
            width: 100%;
        }
        .style24
        {
            height: 25px;
        }
        .style25
        {
            width: 299px;
            height: 25px;
        }
        .style17
        {
            width: 25px;
            height: 25px;
        }
        .style20
        {
            width: 118px;
            height: 25px;
        }
        .style11
        {
            height: 25px;
        }
        .style30
        {
            height: 25px;
        }
        .style31
        {
            width: 286px;
            height: 25px;
        }
        .style32
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

        function eliminarExperiencia(index,item) {
            bootbox.dialog({
                closeButton: false,
                title: false,
                message: "¿Está seguro que desea eliminar esta experiencia laboral permanentemente?",
                buttons: {
                    success: {
                        label: "Sí, quiero eliminarla",
                        className: "btn-primary",
                        callback: function () {
                            PageMethods.eliminarExperiencia(index, OnSuccess, OnError);
                            var tabla = document.getElementById("<%= dgExperienciasLaborales.ClientID %>");
                            tabla.deleteRow(item + 1);
                        }
                    },
                    main: {
                        label: "No, quiero mantenerla",
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
        </script>
    <table class="style3">
        <tr>
            <td class="style4">
            </td>
            <td class="style5" colspan="2">
                <asp:Label ID="lblActualizarExperienciasLaborales" runat="server" Text="Actualizar experiencias laborales"
                    CssClass="Titulo1"></asp:Label>
            </td>
            <td class="style7">
            </td>
            <td class="style5">
            </td>
            <td class="style6" align="right">
                <asp:Button ID="btnSalir" runat="server" Text="Salir" CssClass="Boton" OnClick="btnSalir_Click" />
            </td>
            <td class="style8">
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;
            </td>
            <td class="style5" colspan="5">
                <asp:ValidationSummary ID="vsExperienciasLaborales" runat="server" ForeColor="#CC0000"
                    ValidationGroup="gvExperienciasLaborales" />
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
            <td class="style5" colspan="5">
                <asp:Panel ID="PanelDatosExperienciasLaborales" runat="server">
                    <table class="style14">
                        <tr>
                            <td class="style24" colspan="5">
                                <asp:Panel ID="PanelIngresoDatos0" runat="server" BorderStyle="Solid" BorderWidth="2px">
                                    <table class="style14">
                                        <tr>
                                            <td class="style31">
                                                <asp:Label ID="lblPuesto" runat="server" Text="Puesto laboral"></asp:Label>
                                            </td>
                                            <td class="style32">
                                                <asp:TextBox ID="txtPuesto" runat="server" Height="26px" Width="414px" ToolTip="Ejemplo: Asistente de Mantenimiento"
                                                    onblur="this.placeholder = 'Escriba el puesto aquí'" onfocus="this.placeholder = ''" TabIndex="1"
                                                    placeholder="Escriba el puesto aquí" MaxLength="50"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfvPuesto" runat="server" ControlToValidate="txtPuesto"
                                                    ErrorMessage="El puesto es un dato requerido." ForeColor="Red" ValidationGroup="gvExperienciasLaborales">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style31">
                                                <asp:Label ID="lblEmpresa" runat="server" Text="Empresa o institución en la que laboró"></asp:Label>
                                            </td>
                                            <td class="style32">
                                                <asp:TextBox ID="txtEmpresa" runat="server" Width="413px" ToolTip="Ejemplo: Ministerio de Obras Públicas y Transporte"
                                                    onblur="this.placeholder = 'Escriba el nombre de la empresa o institución aquí'" TabIndex="2"
                                                    onfocus="this.placeholder = ''" placeholder="Escriba el nombre de la empresa o institución aquí"
                                                    MaxLength="60"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfvEmpresa" runat="server" ControlToValidate="txtEmpresa"
                                                    ErrorMessage="La empresa es un dato requerido." ForeColor="Red" ValidationGroup="gvExperienciasLaborales">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style30" colspan="2">
                                                <asp:Panel ID="PanelBotonActualizar" runat="server" HorizontalAlign="Right">
                                                    <asp:Button ID="btnCancelarAgregar" runat="server" CssClass="Boton" OnClick="btnCancelarAgregar_Click"
                                                        Text="Cancelar" />
                                                    &nbsp;&nbsp;<asp:Button ID="btnCancelarActualizar" runat="server" CssClass="Boton"
                                                        Text="Cancelar" OnClick="btnCancelarActualizar_Click" />
                                                    &nbsp;&nbsp;<asp:Button ID="btnAgregar" runat="server" CssClass="Boton" OnClick="btnAgregar_Click"
                                                        Text="Agregar" />
                                                    &nbsp;
                                                    <asp:Button ID="btnActualizar" runat="server" CssClass="Boton" OnClick="btnActualizar_Click"
                                                        Text="Actualizar" />
                                                </asp:Panel>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td class="style24">
                                &nbsp;
                            </td>
                            <td class="style25">
                                &nbsp;
                            </td>
                            <td class="style17">
                                &nbsp;
                            </td>
                            <td class="style20">
                                &nbsp;
                            </td>
                            <td class="style11">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style24" colspan="5">
                                <asp:Panel ID="PanelTablaDatosExperienciasLaborales" runat="server" BorderStyle="None"
                                    BorderWidth="2px" Height="250px" ScrollBars="Auto">
                                    <asp:DataGrid ID="dgExperienciasLaborales" runat="server" AutoGenerateColumns="False"
                                        BackColor="WhiteSmoke" BorderStyle="Solid" CssClass="GridMantenimiento" Font-Names="Century Gothic"
                                        Font-Size="Small" ForeColor="Black" Height="19px" OnItemCommand="dgExperienciasLaborales_ItemCommand"
                                        OnItemDataBound="dgExperienciasLaborales_ItemDataBound" Width="99%">
                                        <AlternatingItemStyle BackColor="Gainsboro" />
                                        <HeaderStyle BackColor="Navy" Font-Bold="True" Font-Names="Century Gothic" Font-Size="Larger"
                                            ForeColor="White" HorizontalAlign="Center" />
                                        <Columns>
                                            <asp:BoundColumn DataField="Id_ExperienciaLaboral" HeaderText="Id_ExperienciaLaboral"
                                                Visible="False"></asp:BoundColumn>
                                            <asp:BoundColumn DataField="Empresa" HeaderText="Empresa"></asp:BoundColumn>
                                            <asp:BoundColumn DataField="Puesto" HeaderText="Puesto"></asp:BoundColumn>
                                            <asp:TemplateColumn HeaderText="Editar">
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="ibtnEditar" runat="server" CommandName="Editar" Height="30px"
                                                        ImageUrl="~/Multimedia/icono-editar.jpg" Width="30px" Style="display: block;
                                                        margin: 0 auto" />
                                                </ItemTemplate>
                                            </asp:TemplateColumn>
                                            <asp:TemplateColumn HeaderText="Eliminar">
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="ibtnEliminar" runat="server" CommandName="Eliminar" Height="30px"
                                                        Style="display: block; margin: 0 auto" ImageUrl="~/Multimedia/icono-eliminar.jpg"
                                                        Width="30px" />
                                                </ItemTemplate>
                                            </asp:TemplateColumn>
                                        </Columns>
                                    </asp:DataGrid>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style24">
                                &nbsp;
                            </td>
                            <td class="style25">
                                &nbsp;
                            </td>
                            <td class="style17">
                                &nbsp;
                            </td>
                            <td class="style20">
                                &nbsp;
                            </td>
                            <td class="style11">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                    </table>
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
    </table>
</asp:Content>
