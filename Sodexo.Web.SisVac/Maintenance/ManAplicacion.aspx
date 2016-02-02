<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MasterPage.master" AutoEventWireup="true" CodeFile="ManAplicacion.aspx.cs" Inherits="Maintenance_ManAplicacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" language="javascript" src="../Scripts/jquery-1.8.2.js"></script>
    <script type="text/javascript" language="javascript">
        function imgEdit_Click(obj) {
            LimpiarCamposApp();

            document.getElementById('<%= Label1.ClientID%>').innerText = "Modificación de Aplicacion";
        var array = obj.attr("datos").split("-");

        $("#Contenido_hidcuenta").val(array[0]);
        $("#Contenido_txtnnombre").val(array[1]);
        $("#Contenido_txtnusuario").val(array[2]);
        $("#Contenido_txtnusuario").attr("readonly", "readonly");
        $("#Contenido_txtnapepaterno").val(array[3]);
        $("#Contenido_txtnapematerno").val(array[4]);
        $("#Contenido_txtncorreo").val(array[5]);
        $("#Contenido_hpass").val(array[7]);
        $('#Contenido_chbnactivo').attr("checked", array[6] == "1" ? true : false);

        $("#Contenido_ibresetearclave").show();

        $find('bmpeRegistroCuenta').show();
    }
    function LimpiarCamposApp() {
        $("#Contenido_txtnusuario").val("");
        $("#Contenido_txtnnombre").val("");
        $("#Contenido_txtnapepaterno").val("");
        $("#Contenido_txtnapematerno").val("");
        $("#Contenido_txtncorreo").val("");
        $("#Contenido_chbnactivo").attr("checked", false);
        $("#Contenido_hidcuenta").val(null);
    }

    function regNuevaApp() {
        LimpiarCamposCuenta();
        document.getElementById('<%= Label1.ClientID%>').innerText = "Registro de Aplicacion";
         $("#Contenido_txtnusuario").attr("readonly", "");
         $("#Contenido_ibresetearclave").hide();
         //$("#bmpeRegistroCuenta").show();

         $find('bmperegistroaplicacion').show();
         return false;
     }

     function OnSucc() {
         //alert('correcto');
     }
     function OnFail() {
         //alert('fallo');
     }
     //     function AsyncRequest(param) {
     //         var prm = Sys.WebForms.PageRequestManager.getInstance();
     //         prm._doPostBack($find("Contenido_tmVerCuenta")._uniqueID, param);
     //     }

     function ValidarAplicacion() {
         if ($("#Contenido_txtnusuario").val() == "") {
             alert('Ingrese un Usuario');
             return false;
         }
         if ($("#Contenido_txtnnombre").val() == "") {
             alert('Ingrese un Nombre');
             return false;
         }

         if ($("#Contenido_txtnapepaterno").val() == "") {
             alert('Ingrese un Apellido paterno');
             return false;
         }
         if ($("#Contenido_txtnapematerno").val() == "") {
             alert('Ingrese un Apellido materno');
             return false;
         }

         var correo = $("#Contenido_txtncorreo").val();
         var datos = correo.split('@');

         if (correo == "") {
             alert('Ingrese un correo');
             return false;
         }
         else {
             if (datos.length != 2) {
                 alert('Ingrese un correo válido');
                 return false;
             }
         }
         return true;
     }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
        <div class="col_04">
        <h2 class="recibo_dig">
            Mantenimiento&nbsp;de&nbsp;Aplicaciones</h2>
        <div class="Espaciofiltro">
         <div class="separador" style="width: 80%">
         <%--<asp:Timer ID="tmVerCuenta" runat="server" Interval="100" Enabled="false" />--%>
         <table class="Tabla_filtro_txt" width="100%">
         <tr>
         <td>
         <p class="p_mantenimiento">Nombre&nbsp;Aplicación</p>
         </td>
         <td>
        <asp:TextBox ID="txtnombre" runat="server" class="celeste_cuadro6" MaxLength="20"></asp:TextBox>
         <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" Enabled="True"
        ValidChars="áéíóúÁÉÍÓÚ " FilterType="UppercaseLetters,LowerCaseLetters, Custom" TargetControlID="txtnombre" />
        <input id="hidlink" type="hidden" runat="server" />
         </td>

         <td>
         <p class="p_mantenimiento"></p>
         </td>
         <td>
            <div class="separador" style="width: 100%;text-align:right">
                <asp:Button ID="btnBuscar" CssClass="ButtonSecundarioCampo100" Text="Buscar"
                        runat="server" OnClick="btnBuscar_Click" />
            </div>
         </td>

         </tr>
         </table>
         </div>

        </div>
        </div>
    <%--<br /><br /><br /><br /><br /><br /><br />--%>
        <div class="box_c2" style="margin-top: 15px;">
            <div class="f5f6f6_01">
                <div class="f5f6f6_02">
                </div>
            </div>
            <div class="cont_c02_detalle">
            <h3 class="subtit_c44">
                    Resultado</h3>
                <p class="parrafo_111">Seleccione una Aplicación para Modificar o Eliminar</p>
                <p class="parrafo_111">
                    <asp:LinkButton ID="lbnuevacuenta" runat="server" OnClientClick="return regNuevaApp();">Registrar Nuevo</asp:LinkButton>
                </p>

            <asp:UpdatePanel runat="server" ID="upcuentas" style="padding-left: 29px;">
            <ContentTemplate>
            <asp:Panel ID="pngv" runat="server" Width="650" ScrollBars="Horizontal">
                <asp:GridView ID="gvaplicacion" runat="server" AlternatingRowStyle-CssClass="altrow" CssClass="grid" RowStyle-CssClass="row" PagerStyle-CssClass="pagerstyle" AllowPaging="True"
                            ShowFooter="True" AutoGenerateColumns="False" Width="100%" >
                    <EmptyDataTemplate>No existen registros</EmptyDataTemplate>
                    <Columns>
                        <asp:TemplateField HeaderText="Editar" ItemStyle-Width="100px" >
                        <ItemTemplate>
                            <asp:ImageButton runat="server"  ID="ibeditar" ImageUrl="~/Images/Button/ico_edit.png"
                            dato='<%# Eval("id_aplicacion") + "-" + Eval("nombre_sistema") + "-" + Eval("nombre_corto") + "-" + 
                            Eval("estado") %>' 
                            OnClientClick="imgEdit_Click($(this)); return false;" />
                        </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Eliminar" ItemStyle-Width="100px">
                        <ItemTemplate>
                            <asp:ImageButton ID="ibeliminarcuenta" runat="server" ImageUrl="~/Images/Button/imgQuitar.jpg" AlternateText='<%# Eval("id_aplicacion") %>'
                            OnClientClick="return confirm('Esta seguro de eliminar la Aplicacion : ');" 
                             OnClick="ImgDelClick" />
                        </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="nombre_sistema" HeaderText="Nombre&nbsp;Aplicacion" />
                        <asp:BoundField HeaderText="Nombre Corto" DataField="nombre_corto" ItemStyle-Width="200px" HeaderStyle-Wrap="false" />
                        <asp:BoundField HeaderText="Estado" DataField="estado" ItemStyle-Width="100px" />
                    </Columns>
                            <PagerSettings Mode="NextPreviousFirstLast" />
                            <PagerStyle CssClass="pager_gvLineas" />
                            <PagerTemplate>
                                <table style="float: left">
                                    <tbody>
                                        <tr>
                                            <asp:PlaceHolder ID="phPager" runat="server"></asp:PlaceHolder>
                                        </tr>
                                    </tbody>
                                </table>
                                <asp:Label runat="server" ID="lblCOUNT" Style="float: right"></asp:Label>
                            </PagerTemplate>
                </asp:GridView>
            </asp:Panel>
            </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="btnBuscar" />
                </Triggers>
            </asp:UpdatePanel>
            </div>
            <div class="fff_03_bla width700">
                <div class="fff_04_bla">
                </div>
            </div>
        </div>
    <asp:Panel ID="pnregistroaplicacion" runat="server" CssClass="cuadrodes" style="width: 675px;">
    <div class="ubi-main-popclave">
        <div class="close-popclave" style="width: 650px;">
        <div class="ubi-close-popclave" style="width: 650px;">
            <a href="#" onclick="$find('bmpeRegistroApp').hide();">cerrar</a>
        </div>
        </div>
        <div id="tituloCuenta" class="lineblu" style="position: relative; width: 630px;">
        <h2 style="font-weight: bold;">
            <asp:Label ID="Label1" runat="server" CssClass="reg_establ" Style="color: White;" Text="abcdef" ></asp:Label>
        </h2>
        </div>
        <div class="txt_linese" style="padding-left: 0px; padding-bottom: 0px; width: 650px;" >
        <div class="">
        <div class="f5f6f6_01">
            <div class="f5f6f6_02">
            </div>
        </div>
        <div class="cont_c02_detalle2 width700" style="display: table;width:650px">

        <table class="Tabla_filtro_txt" style="width:600px">
        <tr>
        <td>
        <span style="float:left">Nombre&nbsp;Aplicacion</span><span style="color: Red;float: left;">(*)</span>
        </td>
        <td>
        <asp:TextBox ID="txtnnombre" runat="server"  class="celeste_cuadro6" MaxLength="20"></asp:TextBox>
        <asp:FilteredTextBoxExtender ID="ftennombre" runat="server" Enabled="True"
        ValidChars="áéíóúÁÉÍÓÚ " FilterType="UppercaseLetters,LowerCaseLetters, Custom" TargetControlID="txtnnombre" />
        </td>
        </tr>
        <tr>
        <td>
        <span style="float:left">Nombre&nbsp;Corto</span><span style="color: Red;float: left;">(*)</span>
        </td>
        <td>
        <asp:TextBox ID="txtnombrecorto" runat="server" class="celeste_cuadro6" 
                MaxLength="20"></asp:TextBox>
        </td>
        </tr>
        <tr>
        <td>
        <span style="float:left">
        Activo
            </span>
        </td>
        <td>
            <asp:CheckBox ID="chbnactivo" runat="server" />
            <input id="hidcuenta" type="hidden" runat="server" />
            <input id="hpass" type="hidden" runat="server" />
        </td>
        </tr>
        <tr>
        <td></td>
        <td align="right">
            <asp:Button ID="btnguardar" CssClass="ButtonSecundarioCampo100" Text="Guardar" runat="server" OnClick="btnBuscar_Click" />
            <%--<asp:ImageButton ID="ibguardar" runat="server" 
                ImageUrl="~/App_Themes/col01/img/bt_guardar2.gif" onclick="ibguardar_Click" OnClientClick="return ValidarCuenta();" />--%>
        </td>
        </tr>
        </table>

        </div>
            <div class="fff_03_bla2" style="width:650px">
            <div class="fff_04_bla">
            </div>
            </div>
        </div>
        </div>
    </div>
    </asp:Panel>
</div>
<asp:Label ID="lblmensaje" runat="server" Text="A" Style="display: none;" />
<asp:ModalPopupExtender ID="mpeRegistroApp" PopupControlID="pnregistroaplicacion" BehaviorID="bmperegistroaplicacion"  runat="server" TargetControlID="lblmensaje" BackgroundCssClass="modalBackground"  >
 </asp:ModalPopupExtender>
</asp:Content>

