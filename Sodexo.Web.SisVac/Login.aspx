<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="Css/Styles.css" type="text/css" media="screen, projection" />
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
    <asp:ToolkitScriptManager runat="Server" EnablePartialRendering="true" ID="tsmBackOffice"
        LoadScriptsBeforeUI="true" EnableScriptGlobalization="true" EnableScriptLocalization="true"
        EnablePageMethods="true">
        <Scripts>
            <asp:ScriptReference Path="~/JScript/jquery.js" />
            <asp:ScriptReference Path="~/JScript/Util.js" />
            <asp:ScriptReference Path="~/JScript/ApCOL.js" />
        </Scripts>
    </asp:ToolkitScriptManager>
    <div class="main">
        <div class="utilities">
            <div class="alert">
                Estás en una zona segura.</div>
        </div>
        <div class="header">
            <a href="http://pe.sodexo.com/pesp/default.aspx" class="gohome2" target="_blank"><span>ir a: pe.sodexo.com</span></a>
            <h1>
                <a href="http://pe.sodexo.com/pesp/default.aspx" class="telefonica" target="_blank"><span>Sodexo</span></a></h1>
        </div>
        <div class="box">
            <div class="wrapper">
                <h2 class="ingreso">
                    <span></span></h2>
            </div>
            <div class="wrapper2">
                <div class="width_total">
                    <div class="arri_azul2">
                        Ingreso de usuario</div>
                </div>
                <div class="txt_registro3">
                    <div class="celestelogin2">
                        <asp:UpdatePanel runat="server" ID="upLogin">
                            <ContentTemplate>
                                <table border="0" cellspacing="0" cellpadding="0" class="celeste_txt2" style="width: 500px">
                                    <tr>
                                        <td colspan="2">
                                            <b>Usuario:</b>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Login:</b>
                                        </td>
                                        <td>
                                            <b>Clave:</b>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 250px;">
                                            <asp:TextBox ID="txtUsuario" runat="server" MaxLength="20" CssClass="celeste_cuadro"
                                                Width="190px"></asp:TextBox>
                                            <asp:FilteredTextBoxExtender ID="ftbUsuario" runat="server" FilterType="Custom,UppercaseLetters,LowerCaseLetters"
                                                TargetControlID="txtUsuario" ValidChars="&amp;,-,_,@,á-ú,Á-Ú,Ñ,&amp;amp;,ñ,.,(,),1,2,3,4,5,6,7,8,9,0">
                                            </asp:FilteredTextBoxExtender>
                                            <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" ControlToValidate="txtUsuario"
                                                ErrorMessage="Usted tiene que ingresar su usuario" ForeColor="Red" ValidationGroup="vgLogin">*</asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtClave" runat="server" MaxLength="15" CssClass="celeste_cuadro"
                                                TextMode="Password" Width="190px"></asp:TextBox>
                                            <asp:FilteredTextBoxExtender ID="txtClave_FilteredTextBoxExtender" runat="server"
                                                FilterType="Custom,UppercaseLetters,LowerCaseLetters" TargetControlID="txtClave"
                                                ValidChars=" ,&amp;,-,_,@,á-ú,Á-Ú,Ñ,&amp;amp;,ñ,.,(,),1,2,3,4,5,6,7,8,9,0">
                                            </asp:FilteredTextBoxExtender>
                                            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtClave"
                                                ErrorMessage="Usted tiene que ingresar su password" ForeColor="Red" ValidationGroup="vgLogin">*</asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="rePassword" runat="server" ControlToValidate="txtClave"
                                                Display="Dynamic" ErrorMessage="Usted tiene que ingresar un minimo de 5 y máximo de 15 digitos en el password"
                                                ForeColor="Red" ValidationExpression="^([\S\s]{4,15})$" ValidationGroup="vgLogin">*</asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="text-align: right;">
                                            <asp:Button ID="btnLogin" runat="server" Style="float: right; width: 80px;margin-right:55px;" class="bt_aceptarlo"
                                                Text="" OnClick="btnLogin_Click" ValidationGroup="vgLogin" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                    </tr>
                                </table>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <asp:Label ID="lblError" runat="server"></asp:Label>
                    </div>
                </div>
                <div class="col_03">
                    <div class="box_nece">
                        <div class="mod_aviso">
                            <h3>
                                ¡Aviso!</h3>
                            <p>
                                Solicite su usuario y clave correspondiente al supervisor o administrador de esta
                                aplicación</p>
                        </div>
                        <div class="foot_modhelp" style="padding:20px 18px 5px 18px; width:182px;">&nbsp;</div>
                    </div>
                </div>
                <asp:Button runat="server" ID="hiddenTargetControlForModalPopup" Style="display: none" />
                <asp:Button runat="server" ID="hiddenTargetControlForModalPopup1" Style="display: none" />
                <asp:Panel ID="pnlActualizar" CssClass="cuadrodes" runat="server" Style="width: 390px; display: none;">
                    <div class="ubi-main-popclave">
                        <div class="close-popclave">
                            <%--<a href="#" onclick="hideModalPopup('mpActualizar');">cerrar</a>--%>
                            <div class="ubi-close-popclave">
                                <asp:LinkButton runat="server" ID="lnkcerrarActualizar" OnClientClick="hideModalPopup('mpActualizar');">cerrar</asp:LinkButton></div>
                        </div>
                        <div id="TituloPlan" class="lineblu" style="position: relative; width: 345px;">
                            <h3 style="font-weight: bold;">
                                SELECCIONAR ROL DE ACCESO</h3>
                        </div>
                        <div class="txt_linese" style="padding-left: 0px; padding-bottom: 0px; width: 345px;">
                            <div class="box_c2man">
                                <div class="f5f6f6_01" style="width: 360px;">
                                    <div class="f5f6f6_02">
                                    </div>
                                </div>
                                <div class="cont_c02_detalle2 width700" style="width: 360px;">
                                    <center>
                                        <div style="text-align: left; width: 200px;">
                                            <asp:UpdatePanel runat="server" ID="upRoles">
                                                <ContentTemplate>
                                                    <asp:RadioButtonList runat="server" ID="rblRoles" Width="100%">
                                                    </asp:RadioButtonList>
                                                </ContentTemplate>
                                                <Triggers>
                                                    <asp:AsyncPostBackTrigger ControlID="btnAceptar" />
                                                </Triggers>
                                            </asp:UpdatePanel>
                                        </div>
                                    </center>
                                    <asp:Button ID="btnAceptar" runat="server" class="bt_aceptar" Text="" OnClick="btnAceptar_Click"
                                        Style="margin: 0 25px 0 0;" />
                                </div>
                                <div class="fff_03_bla2" style="width: 360px;">
                                    <div class="fff_04_bla">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </asp:Panel>
                <asp:ModalPopupExtender ID="mpeActualizar" runat="server" TargetControlID="hiddenTargetControlForModalPopup"
                    BehaviorID="mpActualizar" PopupControlID="pnlActualizar" BackgroundCssClass="modalBackground"  />
                <asp:Panel ID="pnlNoAuthorized" CssClass="cuadrodes" runat="server" Style="width: 390px; display: none;">
                    <div class="ubi-main-popclave">
                        <div class="close-popclave">
                            <div class="ubi-close-popclave">
                                <a href="#" onclick="hideModalPopup('mpNoAuthorized');">cerrar</a></div>
                        </div>
                        <div class="txt_linese" style="padding-left: 0px; padding-bottom: 0px; width: 345px;">
                            <div class="box_c2man">
                                <div class="f5f6f6_01" style="width: 360px;">
                                    <div class="f5f6f6_02">
                                    </div>
                                </div>
                                <div class="cont_c02_detalle2 width700" style="width: 360px; color: Red; font-weight: bold;">
                                    <center>
                                        SIN AUTORIZACION
                                    </center>
                                </div>
                                <div class="fff_03_bla2" style="width: 360px;">
                                    <div class="fff_04_bla">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </asp:Panel>
                <asp:ModalPopupExtender ID="mpeNoAuthorized" runat="server" TargetControlID="hiddenTargetControlForModalPopup1"
                    BehaviorID="mpNoAuthorized" PopupControlID="pnlNoAuthorized" BackgroundCssClass="modalBackground" />
                       <%-- INI REQ-015191 - LCAICEDO 28-10-2011 --%>
                <asp:Button runat="server" ID="hiddenTargetControlForModalPopup2" Style="display: none" />
                <asp:Panel ID="pnlAviso" CssClass="cuadrodes" runat="server" Style="width: 360px;
                    display: none;">
                    <div class="ubi-main-popclave">
                        <div class="close-popclave">
                            <div class="ubi-close-popclave">
                                <asp:LinkButton runat="server" ID="LinkButton1" OnClientClick="hideModalPopup('mpAviso');">cerrar</asp:LinkButton>
                                <asp:LinkButton runat="server" ID="lnkAvisoConfidencial" OnClick="lnkAvisoConfidencial_Click">cerrar</asp:LinkButton>
                            </div>
                        </div>
                        <div id="Div1" class="lineblu" style="position: relative; width: 330px; padding-left: 7px;">
                            <h3 style="font-weight: bold;">
                                AVISO</h3>
                        </div>
                        <div class="txt_linese" style="padding-left: 0px; padding-bottom: 0px; width: 315px;">
                            <div class="box_c2man">
                                <div class="f5f6f6_01" style="width: 335px;">
                                    <div class="f5f6f6_02">
                                    </div>
                                </div>
                                <div class="cont_c02_detalle2" style="width: 335px;">
                                    <center>
                                        <div style="text-align: justify; width: 325px;">
                                            <span id="SpanAvisoBloqueo" runat="server">Su usuario ha sido bloqueado por no utilizar
                                                la aplicación durante más de 90 días. Por favor contacte con el administrador del
                                                sistema. 
                                                <br /> <br />
                                                <asp:Button ID="btnAceptarAviso1" runat="server" class="bt_aceptar" Text="" OnClientClick="hideModalPopup('mpAviso');" Style="margin: 0 120px 0 0;" />
                                            </span>
                                            <span id="SpanAvisoConfidencial" runat="server">Usted ha accedido a
                                                    un sistema propiedad de TELEFONICA. Necesita tener autorización antes de usarlo,
                                                    estando usted estrictamente limitado al uso indicado en dicha autorización. El acceso
                                                    no autorizado a este sistema o el uso indebido del mismo esta prohibido y es contrario
                                                    a la Política Corporativa de Seguridad y a la legislación vigente. El uso que realice
                                                    de este sistema puede ser monitorizado. 
                                                <br /> <br />
                                                <asp:Button ID="btnAceptarAviso2" runat="server" class="bt_aceptar" Text="" OnClick="lnkAvisoConfidencial_Click" Style="margin: 0 120px 0 0;" />
                                            </span>                                                                    
                                        </div>
                                    </center>
                                </div>
                                <div class="fff_03_bla2" style="width: 335px;">
                                    <div class="fff_04_bla">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </asp:Panel>
                <asp:ModalPopupExtender ID="mpeAviso" runat="server" TargetControlID="hiddenTargetControlForModalPopup2"
                    BehaviorID="mpAviso" PopupControlID="pnlAviso" BackgroundCssClass="modalBackground" />

                <asp:Panel runat="server" ID="pnlClave" Style="display: none;">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:ChangePassword ID="ChangePassword1"  DisplayUserName="true" UserName="" runat="server" CancelButtonStyle-CssClass="bt_aceptar"
                                ChangePasswordButtonStyle-CssClass="bt_aceptar" ContinueButtonStyle-CssClass="bt_aceptar"
                                ContinueDestinationPageUrl="~/Login.aspx" ChangePasswordFailureText="No ha sido posible cambiar la clave. Verifique si la clave actual es correcta. Recuerde tambien que la nueva clave debe ser diferente a la anterior.">
                                <CancelButtonStyle CssClass="bt_aceptar" />
                                <ChangePasswordButtonStyle CssClass="bt_aceptar" />
                                <ChangePasswordTemplate>
                                    <div class="main-popclave2" style="width: 470px;">
                                        <div class="ubi-main-popclave" style="width: 470px;">
                                            <div class="close-popclave" style="width: 440px;">
                                                <div class="ubi-close-popclave">
                                                    <asp:LinkButton ID="LinkButton1" runat="server" OnClientClick="hideModalPopup('bmpeClave');"
                                                        Text="cerrar" />
                                                </div>
                                            </div>
                                            <div class="titulo-popclave" style="width: 300px">
                                                <img src="App_Themes/col01/img/titulo-form-popclave.gif" width="283" height="41"
                                                    alt="" border="0" />
                                            </div>
                                            <div class="desc-popclave" style="padding-left: 55px;">
                                                Por seguridad, debes cambiar tu clave:</div>
                                            <div class="form-popclave">
                                                <div class="ubi-form-popclave">
                                                    <div class="top-form-popclave">
                                                        <img src="App_Themes/col01/img/formtop-clave.gif" width="230" height="11" alt=""
                                                            border="0" />
                                                    </div>
                                                    <div class="center-formpopclave">
                                                        <div class="contenido-formpopclave">
                                                            <table border="0" cellpadding="0" cellspacing="0">
                                                                <tr>
                                                                    <td>
                                                                        <div class="texto-formpopclave" style="display:none">
                                                                            Usuario</div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <div class="caja-formpopclave" style="display:none">
                                                                            <asp:TextBox ID="UserName" runat="server" Enabled="false" ></asp:TextBox>                                                                            
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <div class="texto-formpopclave">
                                                                            Clave antigua</div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <div class="caja-formpopclave">
                                                                            <asp:TextBox ID="CurrentPassword" runat="server" TextMode="Password"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="CurrentPasswordRequired" runat="server" ControlToValidate="CurrentPassword"
                                                                                ErrorMessage="Ingrese clave." ForeColor="Red" ToolTip="Ingrese clave." ValidationGroup="ChangePassword1">Ingrese clave</asp:RequiredFieldValidator>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <div class="texto-formpopclave">
                                                                            Clave nueva</div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <div class="caja-formpopclave">
                                                                            <asp:TextBox ID="NewPassword" runat="server" MaxLength="15" TextMode="Password"></asp:TextBox>
                                                                            <asp:RegularExpressionValidator ForeColor="Red" ID="revNewPassword" runat="server"
                                                                                ValidationGroup="ChangePassword1" Display="Dynamic" Text="La clave debe tener entre 5 y 15 caracteres, contener al menos un dígito y un carácter alfabético, y no debe contener caracteres especiales"
                                                                                ErrorMessage="La clave debe tener entre 5 y 15 caracteres, contener al menos un dígito y un carácter alfabético, y no debe contener caracteres especiales"
                                                                                ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{5,15})$" ControlToValidate="NewPassword"></asp:RegularExpressionValidator>
                                                                            <asp:RequiredFieldValidator ID="NewPasswordRequired" runat="server" ControlToValidate="NewPassword"
                                                                                ErrorMessage="Ingrese su nueva clave." ForeColor="Red" ToolTip="Ingrese su nueva clave."
                                                                                ValidationGroup="ChangePassword1">Ingrese su nueva clave</asp:RequiredFieldValidator>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <div class="texto-formpopclave">
                                                                            Confirmación de clave nueva</div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <div class="caja-formpopclave">
                                                                            <asp:TextBox ID="ConfirmNewPassword" runat="server" TextMode="Password"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="ConfirmNewPasswordRequired" runat="server" ControlToValidate="ConfirmNewPassword"
                                                                                ErrorMessage="Confirme su nueva clave." ForeColor="Red" ToolTip="Confirme su nueva clave."
                                                                                ValidationGroup="ChangePassword1">Confirme su nueva clave</asp:RequiredFieldValidator>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <asp:CompareValidator ID="NewPasswordCompare" runat="server" ControlToCompare="NewPassword"
                                                                            ControlToValidate="ConfirmNewPassword" Display="Static" ErrorMessage="Las claves no coinciden. Verifique por favor."
                                                                            ForeColor="Red" ValidationGroup="ChangePassword1">Las claves no coinciden</asp:CompareValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="center">
                                                                        <table>
                                                                            <tr>
                                                                                <td>
                                                                                    <asp:Button ID="ChangePasswordPushButton" runat="server" CommandName="ChangePassword"
                                                                                        OnClientClick="return validateForm();" Text="Aceptar" Width="70px" />
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                    </div>
                                                    <div class="bottom-form-popclave">
                                                    </div>
                                                </div>
                                                <div class="mensaje-error">
                                                    <div class="img-mensaje">
                                                        <div>
                                                            <%--<asp:ValidationSummary ID="vsClave" runat="server" DisplayMode="List" ValidationGroup="ChangePassword1" />--%>
                                                            <asp:Literal ID="FailureText" runat="server"></asp:Literal>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </ChangePasswordTemplate>
                                <SuccessTemplate>
                                    <div class="main-nnclave3">
                                        <div class="ubi-main-nnclave3">
                                            <div class="close-nnclave">
                                                <asp:LinkButton ID="LinkButton1" runat="server"  OnClientClick="hideModalPopup('bmpeClave');"
                                                    Text="cerrar" CommandName="Continue"/></div><%--INI/FIN REQ-015191 - LCAICEDO 28-10-2011--%>
                                            <div class="titulo-nnclave-ok2_msj">
                                                Su clave ha sido cambiada satisfactoriamente!</div>
                                            <div class="ubi-btn-nnclave3">
                                                <asp:Button ID="ContinuePushButton" CssClass="btn_continuar" runat="server" CausesValidation="False"
                                                    CommandName="Continue" Text="Continuar" />
                                            </div>
                                        </div>
                                    </div>
                                </SuccessTemplate> 
                            </asp:ChangePassword>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </asp:Panel>
                <asp:Button ID="btnTabla" runat="server" Style="display: none" />
                <asp:ModalPopupExtender ID="mpeClave" runat="server" BehaviorID="bmpeClave" PopupControlID="pnlClave"
                    TargetControlID="btnTabla" BackgroundCssClass="modalBackground">
                </asp:ModalPopupExtender>
            </div>
            <div class="pie">
                <a href="http://pe.sodexo.com/pesp/default.aspx" class="telefonica" target="_blank"><span>Sodexo</span></a>
            </div>
            <div class="certificado" style="width:300px">
            </div>
        </div>
    </div>
    </form>
    <div id="Processing" class="BGProcessing"></div>
    
</body>
</html>
