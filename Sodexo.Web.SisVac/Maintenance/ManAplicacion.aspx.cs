using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



public partial class Maintenance_ManAplicacion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnBuscar_Click(object sender, EventArgs e)
    {
        Buscar();

    }
    public void ImgEditClick(object sender, ImageClickEventArgs e)
    {
        var imgBtn = sender as ImageButton;
        if (imgBtn == null) return;
        var codigocuenta = int.Parse(imgBtn.Attributes["cuentaId"]);

        WSAplicacion.AplicacionClient ws = new WSAplicacion.AplicacionClient();
        //Cuenta cuenta = ws.CuentaporId(codigocuenta);
        //if (cuenta != null)
        //{
        //    Label1.Text = "Actualizar Cuenta";
        //    hidcuenta.Value = codigocuenta.ToString();
        //    txtnusuario.Text = cuenta.VC_Usuario;
        //    txtnusuario.Enabled = false;
        //    txtnnombre.Text = cuenta.VC_Nombre;
        //    txtnapepaterno.Text = cuenta.VC_Appaterno;
        //    txtnapematerno.Text = cuenta.VC_Apmaterno;
        //    txtncorreo.Text = cuenta.VC_Correo;
        //    if (cuenta.VC_Estado == "1") chbnactivo.Enabled = true;
        //    else chbnactivo.Enabled = false;
        //}
        mpeRegistroApp.Show();
    }

    protected void ImgDelClick(object sender, ImageClickEventArgs e)
    {
        try
        {
            var imgBtn = sender as ImageButton;

            if (imgBtn == null) return;

            var idapp = int.Parse(imgBtn.AlternateText);

            using (var ws = new WSAplicacion.AplicacionClient())
            {
                if (ws.EliminarAplicacion(idapp) == 1)
                {
                    Buscar();
                    ScriptManager.RegisterClientScriptBlock(this, GetType(), "delete", "alert('Registro eliminado correctamente.');", true);
                }
                else
                    ScriptManager.RegisterClientScriptBlock(this, GetType(), "delete", "alert('Vuelva a intentarlo mas tarde, por favor.');", true);
            }
        }
        catch (Exception)
        {

        }

    }
    protected void btnguardar_Click(object sender, EventArgs e)
    {
        WSAplicacion.AplicacionBE app = new WSAplicacion.AplicacionBE();
        app.nombre_sistema = txtnombreapp.Text;
        app.nombre_corto = txtnombrecorto.Text;
        app.estado = chbactivo.Checked == true ? 1 : 0;

        WSAplicacion.AplicacionClient ws = new WSAplicacion.AplicacionClient();

        if (hidapp.Value != "") 
        {
            app.id_aplicacion = int.Parse(hidapp.Value.ToString());
            if (ws.ActualizarAplicacion(app) == 1)
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "update", "alert('Registro actualizado correctamente.');", true);
                Buscar();
            }
            else 
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "update", "alert('Vuelva a intentarlo mas tarde, por favor.');", true);
            }
        }
        else
        {
            if (ws.RegistrarAplicacion(app) == 1)
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "registro", "alert('Registro creado correctamente.');", true);
                Buscar();
            }
            else { ScriptManager.RegisterClientScriptBlock(this, GetType(), "registro", "alert('El servidor de correos no se encuentra disponible, inténtelo mas tarde.');", true); }
        }
        mpeRegistroApp.Hide();
    }
    private void Buscar() 
    {
        WSAplicacion.AplicacionClient ws = new WSAplicacion.AplicacionClient();
        gvaplicacion.DataSource = ws.ListaAplicacion();
        gvaplicacion.DataBind();
    }
}