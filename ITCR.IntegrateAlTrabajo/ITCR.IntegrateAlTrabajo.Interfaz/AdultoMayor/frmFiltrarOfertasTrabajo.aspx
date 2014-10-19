<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraAdultoMayor.Master"
    AutoEventWireup="true" CodeBehind="frmFiltrarOfertasTrabajo.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.AdultoMayor.frmFiltrarOfertasTrabajo" %>

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
            width: 100%;
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
            width: 200px;
            height: 24px;
        }
        .style10
        {
            width: 251px;
            height: 24px;
        }
        .style11
        {
            width: 21px;
            height: 24px;
        }
        .style12
        {
            width: 160px;
            height: 24px;
        }
        .style13
        {
            height: 25px;
        }
        .style14
        {
            width: 251px;
            height: 25px;
        }
        .style15
        {
            width: 21px;
            height: 25px;
        }
        .style16
        {
            width: 160px;
            height: 25px;
        }
        .style17
        {
            height: 24px;
        }
        .style18
        {
            width: 200px;
            height: 26px;
        }
        .style19
        {
            width: 251px;
            height: 26px;
        }
        .style20
        {
            width: 21px;
            height: 26px;
        }
        .style21
        {
            width: 160px;
            height: 26px;
        }
        .style22
        {
            height: 26px;
        }
        .auto-style1
        {
            width: 15px;
            height: 24px;
        }
        .auto-style2
        {
            width: 20px;
            height: 24px;
        }
        .auto-style3
        {
            width: 250px;
            height: 24px;
        }
        .auto-style4
        {
            width: 15px;
            height: 35px;
        }
        .auto-style5
        {
            width: 250px;
            height: 35px;
        }
        .auto-style6
        {
            width: 20px;
            height: 35px;
        }
        .auto-style7
        {
            height: 35px;
        }
        .auto-style8
        {
            height: 23px;
        }
        .auto-style9
        {
            width: 251px;
            height: 23px;
        }
        .auto-style10
        {
            width: 21px;
            height: 23px;
        }
        .auto-style11
        {
            width: 160px;
            height: 23px;
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

        function ofertasNoEncontradas() {
            bootbox.alert("No hay ofertas que cumplan con los criterios de búsqueda específicados.");
        }

    </script>
    <table class="style3">
        <tr>
            <td class="style4">
            </td>
            <td class="style5" colspan="2">
                <asp:Label ID="lblFiltrarOfertas" runat="server" Text="Filtrar Ofertas de Trabajo"
                    CssClass="Titulo1"></asp:Label>
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
                &nbsp;
            </td>
            <td class="style5" colspan="5">
                <asp:Label ID="lbl_titulo" runat="server" Text="Seleccione los criterios de búsqueda con los que desea filtrar las ofertas de trabajo ofrecidas por empresas:"></asp:Label>
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
            <td class="auto-style4">
            </td>
            <td class="auto-style7">
                <asp:CheckBox ID="chk_tipo" runat="server" Text="Tipo de trabajo" AutoPostBack="True"
                    OnCheckedChanged="chk_Busqueda_CheckedChanged" />
            </td>
            <td class="auto-style5">
                <asp:CheckBox ID="chk_Categoria" runat="server" Text="Categoría de trabajo" AutoPostBack="True"
                    OnCheckedChanged="chk_Busqueda_CheckedChanged" />
            </td>
            <td class="auto-style6">
            </td>
            <td class="auto-style7">
                <asp:CheckBox ID="chk_Provincia" runat="server" Text="Provincia" AutoPostBack="True"
                    OnCheckedChanged="chk_Busqueda_CheckedChanged" />
            </td>
            <td class="auto-style5">
            </td>
            <td class="auto-style4">
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
            </td>
            <td class="auto-style7">
                <asp:DropDownList ID="drpTipo" runat="server" Enabled="False">
                </asp:DropDownList>
            </td>
            <td class="auto-style5">
                <asp:DropDownList ID="drpCategoria" runat="server" Enabled="False">
                </asp:DropDownList>
            </td>
            <td class="auto-style6">
            </td>
            <td class="auto-style7">
                <asp:DropDownList ID="drpprovincia" runat="server" Enabled="False">
                </asp:DropDownList>
            </td>
            <td class="auto-style5">
                <asp:Button ID="btn_buscar" runat="server" Text="Buscar" CssClass="Boton" OnClick="btn_buscar_Click"
                    Height="34px" Width="140px" />
            </td>
            <td class="auto-style4">
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;
            </td>
            <td class="style8">
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
            <td class="style4">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;
            </td>
            <td class="style8" colspan="5">
                <asp:Panel ID="pnl_resultado" runat="server" Height="414px">
                    <table class="style3">
                        <tr>
                            <td class="auto-style8">
                                <asp:Label ID="lbl_resultados" runat="server" Text="Resultados de búsqueda" Visible="False"></asp:Label>
                            </td>
                            <td class="auto-style9">
                            </td>
                            <td class="auto-style10">
                            </td>
                            <td class="auto-style11">
                            </td>
                            <td class="auto-style8">
                            </td>
                        </tr>
                        <tr>
                            <td class="style18">
                            </td>
                            <td class="style19">
                            </td>
                            <td class="style20">
                            </td>
                            <td class="style21">
                            </td>
                            <td class="style22">
                            </td>
                        </tr>
                        <tr>
                            <td class="style13" colspan="5">
                                <asp:DataGrid ID="dgResultados" runat="server" AutoGenerateColumns="False" BackColor="WhiteSmoke"
                                    BorderStyle="Solid" CssClass="GridMantenimiento" Font-Names="Century Gothic"
                                    Font-Size="Small" ForeColor="Black" Height="19px" OnItemCommand="dgResultados_ItemCommand"
                                    Width="99%" Font-Overline="False">
                                    <AlternatingItemStyle BackColor="Gainsboro" />
                                    <HeaderStyle BackColor="Navy" Font-Bold="True" Font-Names="Century Gothic" Font-Size="Larger"
                                        ForeColor="White" HorizontalAlign="Center" />
                                    <Columns>
                                        <asp:BoundColumn DataField="Id_OfertaTrabajo" HeaderText="Id_Oferta" Visible="False">
                                        </asp:BoundColumn>
                                        <asp:BoundColumn DataField="Id_Empresa" HeaderText="Id" Visible="False"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="Nom_Empresa" HeaderText="Empresa"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="Nom_Puesto" HeaderText="Puesto"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="Detalle" HeaderText="Teléfono"></asp:BoundColumn>
                                        <asp:TemplateColumn HeaderText="Ver Oferta">
                                            <ItemTemplate>
                                                <asp:ImageButton ID="imgbtn_verperfil" runat="server" CommandName="Perfil" Height="30px"
                                                    ImageAlign="Right" ImageUrl="~/Multimedia/icono-buscar.jpg" />
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                &nbsp;
                            </td>
                            <td class="style10">
                                &nbsp;
                            </td>
                            <td class="style11">
                                &nbsp;
                            </td>
                            <td class="style12">
                                &nbsp;
                            </td>
                            <td class="style17">
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="style4">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;
            </td>
            <td class="style8">
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
            <td class="style4">
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
