using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Configuration;
using System.Web.Security;

public partial class Master_MasterPage : System.Web.UI.MasterPage
{
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //imgLogo.Src = ConfigurationManager.AppSettings["PATH_IMAGENES"].ToString() + "logo-mapfre.bmp";
                //imgTelefono.Src = ConfigurationManager.AppSettings["PATH_IMAGENES"].ToString() + "Portal/imgTelefono.jpg";
                lnkLinkLogo.HRef = ConfigurationManager.AppSettings["PATH_LOGIN"].ToString();
                lblNombreAplicacion.Text = ConfigurationManager.AppSettings["NOM_APL"].ToString();
                lblFecha.Text = DateTime.Today.ToString("dddd, dd' de 'MMMM' del 'yyyy") + " | ";
                //CargarMenu();
            }
            //Verificar_Sesiones();
        }

        public void Verificar_Sesiones()
        {
            if (Session["Usuario"] == null)
            {
                Response.Redirect(ConfigurationManager.AppSettings["PATH_LOGIN"].ToString(), false);
            }
        }

        public Label MasterlblTitulo
        {
            get
            {
                return lblTitulo;
            }
            set
            {
                lblTitulo = value;
            }
        }

        private void CargarMenu()
        {
            //wsOIM.Ticket cTicket = (wsOIM.Ticket)Session["TICKET"];
            //wsOIM.Servicio proxy = new wsOIM.Servicio();
            //wsOIM.Menu[] lstMenuOIM;
            ////Menu
            //Control.EscribirEvento(ConfigurationManager.AppSettings["RUTA_LOG"].ToString(),
            //            "SESSION",
            //             "Session.Count.ToString()", Session.Count.ToString());

            ////lstMenuOIM = proxy.CargarMenuOIM2(ConfigurationManager.AppSettings["COD_APL"].ToString(),
            ////    Session["Rol"].ToString());
            //lstMenuOIM = CrearMenu(int.Parse(Session["perfil"].ToString()));

            //mnuMenu.Items.Clear();

            //foreach (wsOIM.Menu itemMenu in lstMenuOIM)
            //{
            //    MenuItem mnuItem = new MenuItem();
            //    mnuItem.Text = itemMenu.NombreMenu;
            //    mnuItem.ToolTip = "EXPANDIR " + itemMenu.NombreMenu;
            //    mnuItem.Selectable = false;

            //    foreach (wsOIM.Objeto itemObjeto in itemMenu.ItemObjeto)
            //    {
            //        MenuItem mnuItem2 = new MenuItem();
            //        mnuItem2.Text = itemObjeto.NombreCorto;
            //        mnuItem2.NavigateUrl = itemObjeto.Ruta.Replace("../", "../Portal/");
            //        mnuItem.ChildItems.Add(mnuItem2);
            //    }
            //    mnuMenu.Items.Add(mnuItem);
            //}
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            //Control.EscribirEvento(ConfigurationManager.AppSettings["RUTA_LOG"].ToString(),
            //            "SESSION",
            //             "Session.Count.ToString()_1", Session.Count.ToString());

            Session.Clear();
            FormsAuthentication.SignOut();
            Context.User = null;
            Session.Abandon();

            //Control.EscribirEvento(ConfigurationManager.AppSettings["RUTA_LOG"].ToString(),
            //    "SESSION",
            //     "Session.Count.ToString()_2", Session.Count.ToString());

            //Control.EscribirEvento(ConfigurationManager.AppSettings["RUTA_LOG"].ToString(),
            //    "SESSION",
            //     "DEFAULT.ASPX", "Entro en cerrar sesion");

            Response.Redirect(ConfigurationManager.AppSettings["PATH_LOGIN"].ToString(), false);
        }

        protected void btnMiCuenta_Click(object sender, EventArgs e)
        {
            //Control.EscribirEvento(ConfigurationManager.AppSettings["RUTA_LOG"].ToString(),
            //"btnMiCuenta_Click",
            // "Session.Count.ToString()_1", Session.Count.ToString());
            //Response.Redirect(ConfigurationManager.AppSettings["PATH_SESION"].ToString() + "E", false);

            //Control.EscribirEvento(ConfigurationManager.AppSettings["RUTA_LOG"].ToString(),
            //            "btnMiCuenta_Click",
            //             "Session.Count.ToString()_2", Session.Count.ToString());
        }

        protected void btnInicio_Click(object sender, EventArgs e)
        {
            //Control.EscribirEvento(ConfigurationManager.AppSettings["RUTA_LOG"].ToString(),
            //"btnInicio_Click",
            // "Session.Count.ToString()_1", Session.Count.ToString());

            //Response.Redirect(ConfigurationManager.AppSettings["PATH_SESION"].ToString() + "R", false);

            //Control.EscribirEvento(ConfigurationManager.AppSettings["RUTA_LOG"].ToString(),
            //            "btnInicio_Click",
            //             "Session.Count.ToString()_2", Session.Count.ToString());
        }

        //public wsOIM.Menu[] CrearMenu(int tipo) 
        //{
        //    wsOIM.Menu[] lstMenuOIM = null;
        //    wsOIM.Objeto[] objetos;
        //    wsOIM.Menu item = new wsOIM.Menu();

        //    if (tipo==1)
        //    {
        //        //Funcionario del Canal
        //        lstMenuOIM = new wsOIM.Menu[1];
        //        objetos = new wsOIM.Objeto[2];
        //        //wsOIM.Menu item = new wsOIM.Menu();

        //        wsOIM.Objeto obj = new wsOIM.Objeto();
        //        obj.NombreCorto = "BANDEJA DE PENDIENTES";
        //        obj.Ruta = "~/Formularios/frmBandejaFunc.aspx";

        //        wsOIM.Objeto obj2 = new wsOIM.Objeto();
        //        obj2.NombreCorto = "REGISTRO DE SOLICITUD";
        //        obj2.Ruta = "~/Formularios/frmRegistrarSolicitud.aspx";

        //        objetos[0] = obj;
        //        objetos[1] = obj2;

        //        item.NombreMenu = "RCPS";
        //        item.ItemObjeto = objetos;
        //    }
        //    else if (tipo==2)
        //    {
        //        //Asegurador del Canal
        //        lstMenuOIM = new wsOIM.Menu[1];
        //        objetos = new wsOIM.Objeto[2];
                
        //        wsOIM.Objeto obj = new wsOIM.Objeto();
        //        obj.NombreCorto = "BANDEJA DE PENDIENTES";
        //        obj.Ruta = "~/Formularios/frmBandejaAseg.aspx";

        //        wsOIM.Objeto obj2 = new wsOIM.Objeto();
        //        obj2.NombreCorto = "CONSULTA DE SOLICITUD";
        //        obj2.Ruta = "~/Formularios/frmConsultarSolicitudAseg.aspx";

        //        objetos[0] = obj;
        //        objetos[1] = obj2;

        //        item.NombreMenu = "RCPS";
        //        item.ItemObjeto = objetos;
        //    }
        //    else if (tipo == 3)
        //    {
        //        //Suscriptor
        //        lstMenuOIM = new wsOIM.Menu[1];
        //        objetos = new wsOIM.Objeto[1];
        //        //wsOIM.Menu item = new wsOIM.Menu();

        //        wsOIM.Objeto obj = new wsOIM.Objeto();
        //        obj.NombreCorto = "BANDEJA DE PENDIENTES";
        //        obj.Ruta = "~/Formularios/frmBandejaSusc.aspx";

        //        objetos[0] = obj;

        //        item.NombreMenu = "RCPS";
        //        item.ItemObjeto = objetos;
        //    }

        //    else if (tipo == 4)
        //    {
        //        //Medico
        //        lstMenuOIM = new wsOIM.Menu[1];
        //        objetos = new wsOIM.Objeto[1];
        //        //wsOIM.Menu item = new wsOIM.Menu();

        //        wsOIM.Objeto obj = new wsOIM.Objeto();
        //        obj.NombreCorto = "BANDEJA DE PENDIENTES";
        //        obj.Ruta = "~/Formularios/frmBandejaMedico.aspx";

        //        objetos[0] = obj;

        //        item.NombreMenu = "RCPS";
        //        item.ItemObjeto = objetos;
        //    }
        //    else if (tipo == 5)
        //    {
        //        //Siniestros
        //        lstMenuOIM = new wsOIM.Menu[1];
        //        objetos = new wsOIM.Objeto[2];
        //        //wsOIM.Menu item = new wsOIM.Menu();

        //        wsOIM.Objeto obj = new wsOIM.Objeto();
        //        obj.NombreCorto = "BANDEJA DE PENDIENTES";
        //        obj.Ruta = "~/Formularios/frmBandejaSiniMapfre.aspx";

        //        wsOIM.Objeto obj2 = new wsOIM.Objeto();
        //        obj2.NombreCorto = "CONSULTA DE SOLICITUD";
        //        obj2.Ruta = "~/Formularios/frmConsultarSolSiniMapfre.aspx";

        //        objetos[0] = obj;
        //        objetos[1]=obj2;

        //        item.NombreMenu = "RCPS";
        //        item.ItemObjeto = objetos;

        //    }
        //    lstMenuOIM[0] = item;

        //    return lstMenuOIM;
        //}
}
