<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraAdultoMayor.Master"
    AutoEventWireup="true" CodeBehind="frmOfrecerServicios.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.AdultoMayor.frmOfrecerServicios" %>

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
            width: 97%;
        }
        .style4
        {
            height: 24px;
            width: 15px;
        }
        .style5
        {
            height: 24px;
            width: 15px;
        }
        .style6
        {
            height: 24px;
        }
        .style7
        {
            height: 24px;
            width: 250px;
        }
        .style8
        {
            height: 24px;
            width: 20px;
        }
        .style14
        {
            width: 100%;
        }
        .style24
        {
            height: 25px;
        }
        .style11
        {
            height: 25px;
        }
        .style27
        {
            height: 25px;
        }
        .style28
        {
            width: 27px;
            height: 25px;
        }
        .style29
        {
            width: 117px;
            height: 25px;
        }
        .style30
        {
            height: 51px;
        }
        .style32
        {
            height: 25px;
            text-align: left;
        }
        .style33
        {
            width: 25px;
            height: 30px;
        }
        .style37
        {
            width: 152px;
            height: 25px;
            text-align: left;
        }
        .style38
        {
            width: 152px;
            height: 30px;
            text-align: left;
        }
        .style41
        {
            width: 25px;
            height: 30px;
            text-align: left;
        }
        .style42
        {
            width: 25px;
            height: 25px;
            text-align: left;
        }
        .style43
        {
            height: 30px;
            width: 153px;
        }
        .style45
        {
            height: 25px;
            width: 153px;
        }
        .style49
        {
            height: 30px;
            width: 94px;
        }
        .style52
        {
            width: 25px;
            height: 25px;
        }
        .style53
        {
            height: 30px;
            width: 133px;
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
                            location.href = "/Autenticacion/frmAutenticacion.aspx";
                        }
                    }
                }
            });
        }

        function NotificarNuevoServicio() {
            bootbox.dialog({
                closeButton: false,
                message: "¡El servicio se registró satisfactoriamente!",
                title: "Servicio",
                buttons: {
                    success: {
                        label: "Aceptar",
                        className: "btn-primary",
                        callback: function () {
                            location.href = "/AdultoMayor/frmConsultarServiciosOfrecidos.aspx";
                        }
                    }
                }
            });
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
            <td class="style5">
                &nbsp;
            </td>
            <td class="style6">
                <asp:Label ID="lblAgregarServicio" runat="server" Text="Ofrecer Servicios" CssClass="Titulo1"></asp:Label>
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
            <td class="style4">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style30" colspan="6">
                <asp:ValidationSummary ID="vsOfrecerServicios" runat="server" ForeColor="#CC0000"
                    ValidationGroup="gvServicios" />
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;
            </td>
            <td class="style6" colspan="4">
                <asp:Panel ID="PanelIngresoDatos" runat="server" BorderStyle="Solid" BorderWidth="2px">
                    <table class="style14">
                        <tr>
                            <td class="style42">
                            </td>
                            <td class="style37">
                            </td>
                            <td class="style52" colspan="4">
                            </td>
                            <td class="style52">
                            </td>
                        </tr>
                        <tr>
                            <td class="style41">
                                &nbsp;
                            </td>
                            <td class="style38">
                                <asp:Label ID="lblNombre" runat="server" Text="Nombre del servicio"></asp:Label>
                            </td>
                            <td class="style33" colspan="4">
                                <asp:TextBox ID="txtNombreServicios" runat="server" ToolTip="Ejemplo: Decoración de interiores"
                                    onblur="this.placeholder = 'Escriba el nombre del servicio que desea ofrecer aquí'"
                                    onfocus="this.placeholder = ''" placeholder="Escriba el nombre del servicio que desea ofrecer aquí"
                                    Width="500px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvNombreServicio" runat="server" ControlToValidate="txtNombreServicios"
                                    ErrorMessage="El nombre del servicio es un dato requerido." ForeColor="Red" ValidationGroup="gvServicios">*</asp:RequiredFieldValidator>
                            </td>
                            <td class="style33">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style41">
                                &nbsp;
                            </td>
                            <td class="style38">
                                <asp:Label ID="lblDescripcion" runat="server" Text="Descripción"></asp:Label>
                            </td>
                            <td class="style33" colspan="4">
                                <asp:TextBox ID="txtDescripcionServicios" runat="server" ToolTip="Ejemplo: La decoración de interiores ofrecida se llevará a cabo utilizando materiales reciclables."
                                    onblur="this.placeholder = 'Escriba la descripción del servicio aquí'" onfocus="this.placeholder = ''"
                                    placeholder="Escriba la descripción del servicio aquí" Width="500px" TabIndex="1"></asp:TextBox>
                            </td>
                            <td class="style33">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style41">
                                &nbsp;
                            </td>
                            <td class="style38">
                                <asp:Label ID="lblTipoServicio" runat="server" Text="Tipo de servicio"></asp:Label>
                            </td>
                            <td class="style33">
                                <asp:DropDownList ID="drpTipoServicio" runat="server" Height="30px" Width="200px"
                                    TabIndex="2">
                                </asp:DropDownList>
                            </td>
                            <td class="style33">
                            </td>
                            <td class="style33">
                                &nbsp;
                            </td>
                            <td class="style43">
                                &nbsp;
                            </td>
                            <td class="style33">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style42">
                                &nbsp;
                            </td>
                            <td class="style37">
                                <asp:Label ID="lblCategoria" runat="server" Text="Categoría"></asp:Label>
                            </td>
                            <td class="style27">
                                <asp:DropDownList ID="drpCategoriaServicio" runat="server" Height="30px" Width="200px"
                                    TabIndex="3">
                                </asp:DropDownList>
                            </td>
                            <td class="style28">
                                &nbsp;
                            </td>
                            <td class="style29">
                                &nbsp;
                            </td>
                            <td class="style45">
                                &nbsp;
                            </td>
                            <td class="style11">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style42">
                                &nbsp;
                            </td>
                            <td class="style37">
                                &nbsp;
                            </td>
                            <td class="style27">
                                &nbsp;
                            </td>
                            <td class="style28">
                                &nbsp;
                            </td>
                            <td class="style29">
                                &nbsp;
                            </td>
                            <td class="style45">
                                &nbsp;
                            </td>
                            <td class="style11">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style42">
                                &nbsp;
                            </td>
                            <td class="style32" colspan="5">
                                <asp:Label ID="lblInstruccion" runat="server" Style="text-align: justify" Text="A continuación, seleccione los días que desea laborar y para cada uno de esos días, elija la cantidad de horas disponibles:"></asp:Label>
                            </td>
                            <td class="style32">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style42">
                                &nbsp;
                            </td>
                            <td class="style32" colspan="5">
                                <asp:Panel ID="PanelDias" runat="server">
                                    <table class="style14">
                                        <tr>
                                            <td class="style33">
                                            </td>
                                            <td class="style33">
                                            </td>
                                            <td class="style53">
                                            </td>
                                            <td class="style49">
                                                &nbsp;<asp:Label ID="lblDias" runat="server" Font-Bold="True" Style="text-align: center;
                                                    font-weight: 700; font-style: italic" Text="Días"></asp:Label>
                                            </td>
                                            <td class="style33">
                                                <asp:Label ID="lblHoras" runat="server" Font-Bold="True" Style="font-weight: 700;
                                                    font-style: italic" Text="Horas disponibles" Width="200px"></asp:Label>
                                            </td>
                                            <td class="style33">
                                            </td>
                                            <td class="style33">
                                            </td>
                                            <td class="style33">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                            <td class="style53">
                                                &nbsp;
                                            </td>
                                            <td class="style49">
                                                <asp:CheckBox ID="chkLunes" runat="server" AutoPostBack="True" OnCheckedChanged="chkLunes_CheckedChanged"
                                                    Text="Lunes" TabIndex="4" />
                                            </td>
                                            <td class="style33">
                                                <asp:DropDownList ID="drpHora1" runat="server" Enabled="False" Height="30px" Width="121px"
                                                    TabIndex="5">
                                                </asp:DropDownList>
                                            </td>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                            <td class="style53">
                                                &nbsp;
                                            </td>
                                            <td class="style49">
                                                <asp:CheckBox ID="chkMartes" runat="server" AutoPostBack="True" OnCheckedChanged="chkMartes_CheckedChanged"
                                                    Text="Martes" TabIndex="6" />
                                            </td>
                                            <td class="style33">
                                                <asp:DropDownList ID="drpHora2" runat="server" Enabled="False" Height="30px" Width="121px"
                                                    TabIndex="7">
                                                </asp:DropDownList>
                                            </td>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                            <td class="style53">
                                                &nbsp;
                                            </td>
                                            <td class="style49">
                                                <asp:CheckBox ID="chkMiercoles" runat="server" AutoPostBack="True" OnCheckedChanged="chkMiercoles_CheckedChanged"
                                                    Text="Miércoles" TabIndex="8" />
                                            </td>
                                            <td class="style33">
                                                <asp:DropDownList ID="drpHora3" runat="server" Enabled="False" Height="30px" Width="121px"
                                                    TabIndex="9">
                                                </asp:DropDownList>
                                            </td>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                            <td class="style53">
                                                &nbsp;
                                            </td>
                                            <td class="style49">
                                                <asp:CheckBox ID="chkJueves" runat="server" AutoPostBack="True" OnCheckedChanged="chkJueves_CheckedChanged"
                                                    Text="Jueves" TabIndex="10" />
                                            </td>
                                            <td class="style33">
                                                <asp:DropDownList ID="drpHora4" runat="server" Enabled="False" Height="30px" Width="121px"
                                                    TabIndex="11">
                                                </asp:DropDownList>
                                            </td>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                            <td class="style53">
                                                &nbsp;
                                            </td>
                                            <td class="style49">
                                                <asp:CheckBox ID="chkViernes" runat="server" AutoPostBack="True" OnCheckedChanged="chkViernes_CheckedChanged"
                                                    Text="Viernes" TabIndex="12" />
                                            </td>
                                            <td class="style33">
                                                <asp:DropDownList ID="drpHora5" runat="server" Enabled="False" Height="30px" Width="121px"
                                                    TabIndex="13">
                                                </asp:DropDownList>
                                            </td>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                            <td class="style53">
                                                &nbsp;
                                            </td>
                                            <td class="style49">
                                                <asp:CheckBox ID="chkSabado" runat="server" AutoPostBack="True" OnCheckedChanged="chkSabado_CheckedChanged"
                                                    Text="Sábado" TabIndex="14" />
                                            </td>
                                            <td class="style33">
                                                <asp:DropDownList ID="drpHora6" runat="server" Enabled="False" Height="30px" Width="121px"
                                                    TabIndex="15">
                                                </asp:DropDownList>
                                            </td>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                            <td class="style53">
                                                &nbsp;
                                            </td>
                                            <td class="style49">
                                                <asp:CheckBox ID="chkDomingo" runat="server" AutoPostBack="True" Text="Domingo" OnCheckedChanged="chkDomingo_CheckedChanged"
                                                    TabIndex="16" />
                                            </td>
                                            <td class="style33">
                                                <asp:DropDownList ID="drpHora7" runat="server" Enabled="False" Height="30px" Width="121px"
                                                    TabIndex="17">
                                                </asp:DropDownList>
                                            </td>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                            <td class="style32">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style42">
                                &nbsp;
                            </td>
                            <td class="style37">
                                &nbsp;
                            </td>
                            <td class="style27">
                                &nbsp;
                            </td>
                            <td class="style28">
                                &nbsp;
                            </td>
                            <td class="style29">
                                &nbsp;
                            </td>
                            <td class="style45">
                                <asp:Panel ID="PanelBotonAgregar" runat="server" HorizontalAlign="Right">
                                    <asp:Button ID="btnAgregarServicio" runat="server" CssClass="Boton" OnClick="btnAgregarServicio_Click"
                                        Text="Agregar" TabIndex="18" />
                                </asp:Panel>
                            </td>
                            <td class="style11">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style42">
                                &nbsp;
                            </td>
                            <td class="style37">
                                &nbsp;
                            </td>
                            <td class="style27">
                                &nbsp;
                            </td>
                            <td class="style28">
                                &nbsp;
                            </td>
                            <td class="style29">
                                &nbsp;
                            </td>
                            <td class="style45">
                                &nbsp;
                            </td>
                            <td class="style11">
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
            <td class="style5">
                &nbsp;
            </td>
            <td class="style6" colspan="4">
                &nbsp;
            </td>
            <td class="style4">
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
