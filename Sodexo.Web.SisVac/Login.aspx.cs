using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using Newtonsoft.Json;
using System.Web.UI.HtmlControls;
using System.Web.Security;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var queryString = Request.QueryString;
        if (queryString == null) return;
        if (queryString.Count == 0) return;
        else
        {
            var auth = queryString["auth"];
            if (auth != null)
            {
                mpeActualizar.Hide();
                mpeNoAuthorized.Show();
                FormsAuthentication.SignOut();
            }

            var SignOut = queryString["SignOut"];
            if (SignOut != null)
                Response.Redirect(FormsAuthentication.LoginUrl);
        }

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string username = txtUsuario.Text.Trim();
        string password = txtClave.Text.Trim();
        mpeNoAuthorized.Hide();

        try
        {
            if (Membership.ValidateUser(username, password))
            {
                //var roles = Roles.GetRolesForUser(username);
                //if (roles != null)
                //{
                //    if (roles.Count() == 0)
                //    {
                //        ScriptManager.RegisterClientScriptBlock(
                //            this,
                //            this.GetType(),
                //            "msgError",
                //            "alert('No se encontró roles para el usuario. Inténtelo de nuevo.');",
                //            true);
                //        return;
                //    }

                //    if (roles.Count() == 1)
                //        createTicket(roles[0]);
                //    else
                //    {
                //        mpeActualizar.Show();

                //        rblRoles.Items.Clear();

                //        foreach (string rol in roles)
                //            rblRoles.Items.Add(new ListItem() { Text = rol.Split('-')[0], Value = rol });
                //    }
                //}
                //else
                //{
                //    ScriptManager.RegisterClientScriptBlock(
                //        this,
                //        this.GetType(),
                //        "msgError",
                //        "alert('Error inesperado. \n Vuelva a intentarlo mas tarde.');",
                //        true);
                //}
                //INI REQ-015191 - LCAICEDO 28-10-2011
                if (ValidarUsuarioBloqueado(username))
                {
                    mpeAviso.Show();//aviso usuario bloqueado.
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Video", "OcultarDiv(false);", true);
                    return;
                }
                if (ObtenerDatosUsuario(username))
                {
                    ChangePassword1.UserName = username;
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Video", "$('.mensaje-error').css({ display: 'none' });", true);
                    mpeClave.Show();//cambio de clave cada 30 dias
                }
                else
                {
                    mpeAviso.Show();//aviso de confidencialidad.
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Video", "OcultarDiv(true);", true);
                }
                //FIN REQ-015191 - LCAICEDO 28-10-2011   
            }
            else
                ScriptManager.RegisterClientScriptBlock(
                    this,
                    this.GetType(),
                    "msgError",
                    "alert('Error de acceso. Por favor verifique su nombre de usuario y clave e intentelo nuevamente.');",
                    true);
        }
        catch
        {
            ClientScript.RegisterClientScriptBlock(
                         this.GetType(),
                         "msgError",
                         "alert('Error inesperado. \n Vuelva a intentarlo mas tarde.');",
                         true);
        }
    }

    protected void btnAceptar_Click(object sender, EventArgs e)
    {
        createTicket(rblRoles.SelectedValue);
        mpeActualizar.Hide();
    }

    private void createTicket(string role)
    {
        //INI-YSOTO-16112012-INC000003910551
        //INI REQ-015191 - LCAICEDO 28-10-2011
        /*if (role.Contains("SUPER USUARIO"))
            Movistar.Core.ApCOL.Constant.RolUsuarioSeleccionado = "SUPER USUARIO";
        else
            Movistar.Core.ApCOL.Constant.RolUsuarioSeleccionado = role;
        //INI REQ-015191 - LCAICEDO 28-10-2011*/
        //FIN-YSOTO-16112012-INC000003910551
        string username = txtUsuario.Text.Trim();

        var authTicket = new FormsAuthenticationTicket
                        (
                            2, username,
                            DateTime.Now, DateTime.Now.AddMinutes(60),
                            false, role,
                            FormsAuthentication.FormsCookiePath
                        );

        string crypTicket = FormsAuthentication.Encrypt(authTicket);

        HttpCookie authCookie = new HttpCookie(FormsAuthentication.FormsCookieName, crypTicket);
        Response.Cookies.Add(authCookie);

        Response.Redirect(FormsAuthentication.GetRedirectUrl(username, false));
    }
    //INI REQ-015191 - LCAICEDO 28-10-2011
    protected bool ValidarUsuarioBloqueado(string username)
    {
        //using (WSUser.UserClient user = new WSUser.UserClient())
        //{
        //    return user.getDataUserBlock(username, 10);
        //}
        return false;
    }

    protected bool ObtenerDatosUsuario(string username)
    {
        bool flag = false;
        //using (WSUser.UserClient user = new WSUser.UserClient())
        //{
        //    WSUser.User usuario = user.ObtenerDatosxUsuario(username);
        //    TimeSpan ts = DateTime.Now - usuario.FechaCambioClave;
        //    if (ts.Days > 30)
        //        flag = true;
        //}
        return flag;
    }

    protected void lnkAvisoConfidencial_Click(object sender, EventArgs e)
    {
        string username = txtUsuario.Text.Trim();

        var roles = Roles.GetRolesForUser(username);
        if (roles != null)
        {
            if (roles.Count() == 0)
            {
                ScriptManager.RegisterClientScriptBlock(
                    this,
                    this.GetType(),
                    "msgError",
                    "alert('No se encontró roles para el usuario. Inténtelo de nuevo.');",
                    true);
                return;
            }

            if (roles.Count() == 1)
                createTicket(roles[0]);
            else
            {
                mpeActualizar.Show();

                rblRoles.Items.Clear();

                foreach (string rol in roles)
                    rblRoles.Items.Add(new ListItem() { Text = rol.Split('-')[0], Value = rol });
            }
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(
                this,
                this.GetType(),
                "msgError",
                "alert('Error inesperado. \n Vuelva a intentarlo mas tarde.');",
                true);
        }
    }
}