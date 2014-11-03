<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraEmpresa.Master" AutoEventWireup="true" CodeBehind="frmFiltrarServicios.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.Empresa.frmFiltrarServicios" %>
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
            border-spacing: 5px;
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
            width: 100%;
            margin-top: 0px;
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
            height: 25px;
        }
        .style9
        {
            width: 162px;
        }
        .style10
        {
            width: 247px;
        }
        .style11
        {
            width: 20px;
        }
        .style12
        {
        }
        .auto-style1 {
            width: 232px;
            height: 25px;
        }
        .auto-style2 {
            height: 25px;
            width: 203px;
        }
        .auto-style6 {
            height: 35px;
            width: 203px;
        }
        .auto-style7 {
            width: 232px;
            height: 35px;
        }
        .auto-style8 {
            width: 20px;
            height: 35px;
        }
        .auto-style10 {
            width: 250px;
            height: 35px;
        }
        .auto-style11 {
            width: 15px;
            height: 35px;
        }
        .auto-style12 {
            height: 35px;
        }
        .auto-style13 {
            width: 15px;
            height: 24px;
        }
        .auto-style14 {
            height: 24px;
        }
        .auto-style15 {
            width: 20px;
            height: 24px;
        }
        .auto-style16 {
            width: 250px;
            height: 24px;
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

        function serviciosNoEncontrados() {
            bootbox.alert("No hay servicios que cumplan con los criterios de búsqueda específicados.");
        }
        function criteriosNoSeleccionados() {
            bootbox.alert("Para efectuar el filtrado de servicios debe seleccionar al menos un criterio de búsqueda.");
        }

    </script>
    <table class="style3">
        <tr>
            <td class="auto-style13">
                </td>
            <td class="auto-style14" colspan="2">
                </td>
            <td class="auto-style15">
                </td>
            <td class="auto-style14">
                </td>
            <td class="auto-style16">
                </td>
            <td class="auto-style13">
                </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5" colspan="2">
                    <asp:Label ID="lblRegistroAdultoMayor" runat="server" Text="Filtrar Servicios"
                        CssClass="Titulo1"></asp:Label>
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
            </td>
            <td class="style5" colspan="2">
            </td>
            <td class="style7">
            </td>
            <td class="style5">
            </td>
            <td class="style6">
            </td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td class="style4">
            </td>
            <td class="style5" colspan="5">
                <asp:Label ID="lbl_titulo" runat="server" 
                    Text="Seleccione los criterios de búsqueda con los que desea filtrar los servicios ofrecidos por personas adultas mayores:"></asp:Label>
            </td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td class="style4">
            </td>
            <td class="style5" colspan="5">
            </td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                </td>
            <td class="auto-style6">
                <asp:CheckBox ID="chk_tipo" runat="server" Text="Tipo de servicio" 
                    AutoPostBack="True" oncheckedchanged="chk_tipo_activado"/>
            </td>
            <td class="auto-style7">
                <asp:CheckBox ID="chk_Categoria" runat="server" Text="Categoría de servicio" 
                    AutoPostBack="True" oncheckedchanged="chk_categoria_activado" />
            </td>
            <td class="auto-style8">
                </td>
            <td class="auto-style12">
                <asp:CheckBox ID="chk_Provincia" runat="server" Text="Provincia" 
                    AutoPostBack="True" oncheckedchanged="chk_provincia_activado" />
            </td>
            <td class="auto-style10">
                </td>
            <td class="auto-style11">
                </td>
        </tr>
        <tr>
            <td class="auto-style11">
                </td>
            <td class="auto-style6">
                <asp:DropDownList ID="drpTipo" runat="server" Enabled="False">
                </asp:DropDownList>
            </td>
            <td class="auto-style7">
                <asp:DropDownList ID="drpCategoria" runat="server" Enabled="False">
                </asp:DropDownList>
            </td>
            <td class="auto-style8">
                </td>
            <td class="auto-style12">
                <asp:DropDownList ID="drpprovincia" runat="server" Enabled="False">
                </asp:DropDownList>
            </td>
            <td class="auto-style10">
                <asp:Button ID="btn_buscar" runat="server" Height="34px" Text="Buscar" onclick="btn_buscar_Click" CssClass="Boton" Width="140px" />
                </td>
            <td class="auto-style11">
                </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style1">
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
            <td class="style8" colspan="5">
                <asp:Panel ID="pnl_resultados" runat="server">
                    <table class="style3">
                        <tr>
                            <td class="style12">
                                <asp:Label ID="lbl_resultados" runat="server" Text="Resultados de búsqueda" Visible="False"></asp:Label>
                            </td>
                            <td class="style10">
                                &nbsp;</td>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style9">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style12">
                                &nbsp;</td>
                            <td class="style10">
                                &nbsp;</td>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style9">
                                &nbsp;</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td class="style12" colspan="5">
                                <asp:DataGrid ID="dgResultados" runat="server" AutoGenerateColumns="False" 
                                    BackColor="WhiteSmoke" BorderStyle="Solid" CssClass="GridMantenimiento" 
                                    Font-Names="Century Gothic" Font-Size="Smaller" ForeColor="Black" Height="19px" 
                                    Width="99%" onitemcommand="dgResultados_ItemCommand">
                                    <AlternatingItemStyle BackColor="Gainsboro" />
                                    <HeaderStyle BackColor="Navy" Font-Bold="True" Font-Names="Century Gothic" 
                                        Font-Size="Larger" ForeColor="White" HorizontalAlign="Center" />
                                    <Columns>
                                        <asp:BoundColumn DataField="FK_IdUsuario" HeaderText="Id" Visible="False">
                                        </asp:BoundColumn>
                                        <asp:BoundColumn DataField="Id_Servicio" HeaderText="Id_Servicio" Visible="False"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="Nom_Persona" HeaderText="Nombre"></asp:BoundColumn>
                                        <asp:BoundColumn HeaderText="Primer Apellido" DataField="Apellido1"></asp:BoundColumn>
                                        <asp:BoundColumn HeaderText="Servicio Ofrecido" DataField="Nom_Servicio"></asp:BoundColumn>
                                        <asp:TemplateColumn HeaderText="Ver detalle del servicio">
                                            <ItemTemplate>
                                                <asp:ImageButton ID="imgbtn_verservicio" runat="server" CommandName="Servicio" Height="30px" ImageAlign="Right" ImageUrl="~/Multimedia/icono-buscar.jpg" />
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                        <asp:TemplateColumn HeaderText="Ver perfil de la PAM">
                                            <ItemTemplate>
                                                <asp:ImageButton ID="imgbtn_verperfil" runat="server" CommandName="Perfil" 
                                                    Height="30px" ImageAlign="Right" ImageUrl="~/Multimedia/icono-buscar.jpg" 
                                                    />
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                &nbsp;</td>
                            <td class="style10">
                                &nbsp;</td>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style9">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style1">
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
