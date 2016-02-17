<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MasterPage.master" AutoEventWireup="true" CodeFile="SolVacaciones.aspx.cs" Inherits="Maintenance_SolVacaciones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" language="javascript" src="../Scripts/jquery-1.8.2.js"></script>
    <script type="text/javascript" language="javascript">
        function LimpiarCamposApp() {
            $("#Contenido_txtnombreapp").val("");
            $("#Contenido_txtnombrecorto").val("");
            $("#Contenido_chbactivo").attr("checked", false);
            $("#Contenido_hidapp").val(null);
        }
    function ValidarAplicacion() {
        if ($("#Contenido_txtnombreapp").val() == "") {
            alert('Ingrese un Nombre para la Aplicación');
            return false;
        }
        if ($("#Contenido_txtnombrecorto").val() == "") {
            alert('Ingrese un Nombre Corto');
            return false;
        }
        return true;
    }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" Runat="Server">
        <div style="width:701px;">
        <div class="col_04">
        <h2 class="recibo_dig">
            Solicitud&nbsp;de&nbsp;Vacaciones</h2>
        <div class="Espaciofiltro">
         <div class="separador" style="width: 80%">
         <%--<asp:Timer ID="tmVerCuenta" runat="server" Interval="100" Enabled="false" />--%>
         <table class="Tabla_filtro_txt" width="100%">
         <tr>
         <td style="width:200px;text-align:left;">
         <p class="p_mantenimiento">Matricula</p>
         </td>
         <td style="width:200px;text-align:left;">
        <asp:TextBox ID="txtmatricula" runat="server" class="celeste_cuadro6" MaxLength="20"></asp:TextBox>
         </td>
         </tr>
        <tr>
         <td style="width:200px;text-align:left;">
         <p class="p_mantenimiento">Fecha de Ingreso</p>
         </td>
         <td style="width:200px;text-align:left;">
        <asp:TextBox ID="txtfechaingreso" runat="server" class="celeste_cuadro6" MaxLength="20"></asp:TextBox>
         </td>
         </tr>
        <tr>
         <td style="width:200px;text-align:left;">
         <p class="p_mantenimiento">Apellidos y Nombres</p>
         </td>
         <td style="width:200px;text-align:left;">
        <asp:TextBox ID="txtapellidonombre" runat="server" class="celeste_cuadro6" MaxLength="20"></asp:TextBox>
         </td>
         </tr>
            <tr>
         <td style="width:200px;text-align:left;">
         <p class="p_mantenimiento">Cargo</p>
         </td>
         <td style="width:200px;text-align:left;">
        <asp:TextBox ID="txtcargo" runat="server" class="celeste_cuadro6" MaxLength="20"></asp:TextBox>
         </td>
         </tr>
        <tr>
         <td style="width:200px;text-align:left;">
         <p class="p_mantenimiento">Unidad Funcional</p>
         </td>
         <td style="width:200px;text-align:left;">
        <asp:TextBox ID="txtunidadfuncional" runat="server" class="celeste_cuadro6" MaxLength="20"></asp:TextBox>
         </td>
         </tr>
         </table>
         </div>

        </div>

        <div class="Espaciofiltro">
         <div class="separador" style="width: 80%">
         <%--<asp:Timer ID="tmVerCuenta" runat="server" Interval="100" Enabled="false" />--%>
         <table class="Tabla_filtro_txt" width="100%">
         <tr>
         <td style="width:200px;text-align:left;">
         <p class="p_mantenimiento">Fecha de Solicitud</p>
         </td>
         <td style="width:200px;text-align:left;">
        <asp:TextBox ID="txtfechasolicitud" runat="server" class="celeste_cuadro6" MaxLength="20"></asp:TextBox>
         </td>
        <td style="width:200px;text-align:left;">
         <p class="p_mantenimiento">Reprogramación</p>
         </td>
         <td style="text-align:left;">
             <asp:CheckBox ID="chbreprogramacion" runat="server" />
         </td>
         </tr>
        <tr>
         <td style="width:200px;text-align:left;">
         <p class="p_mantenimiento">Comentario RRHH</p>
         </td>
         <td style="text-align:left;" colspan="3">
        <asp:TextBox ID="txtcomentariorrhh" runat="server" class="celeste_cuadro6" MaxLength="200" Width="100%" TextMode="MultiLine" ></asp:TextBox>
         </td>
         </tr>
        <tr>
         <td style="width:200px;text-align:left;">
         <p class="p_mantenimiento">Fecha </p>
         </td>
         <td style="width:200px;text-align:left;">
        <asp:TextBox ID="TextBox3" runat="server" class="celeste_cuadro6" MaxLength="20"></asp:TextBox>
         </td>
         </tr>
            <tr>
         <td style="width:200px;text-align:left;">
         <p class="p_mantenimiento">Cargo</p>
         </td>
         <td style="width:200px;text-align:left;">
        <asp:TextBox ID="TextBox4" runat="server" class="celeste_cuadro6" MaxLength="20"></asp:TextBox>
         </td>
         </tr>
        <tr>
         <td style="width:200px;text-align:left;">
         <p class="p_mantenimiento">Unidad Funcional</p>
         </td>
         <td style="width:200px;text-align:left;">
        <asp:TextBox ID="TextBox5" runat="server" class="celeste_cuadro6" MaxLength="20"></asp:TextBox>
         </td>
         </tr>
         </table>
         </div>

        </div>
        </div>
    
        
    
</div>
<asp:Label ID="lblmensaje" runat="server" Text="A" Style="display: none;" />

</asp:Content>

