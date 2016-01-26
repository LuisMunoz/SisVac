using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Sodexo.BL.SisVac;

namespace Sodexo.Wcf.SisVac
{
    public class AplicacionService : IAplicacion
    {

        public List<DAL.SisVac.Entity.Aplicacion> ListaAplicacion()
        {
            try
            {
                AplicacionBL negocio = new AplicacionBL();
                return negocio.ListaAplicacion();
            }
            catch (Exception)
            {
                throw;
            }
        }

        public int RegistrarAplicacion(DAL.SisVac.Entity.Aplicacion app)
        {
            try
            {
                AplicacionBL negocio = new AplicacionBL();
                return negocio.RegistrarAplicacion(app);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public int EliminarAplicacion(int app)
        {
            try
            {
                AplicacionBL negocio = new AplicacionBL();
                return negocio.EliminarAplicacion(app);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public int ActualizarAplicacion(DAL.SisVac.Entity.Aplicacion app)
        {
            try
            {
                AplicacionBL negocio = new AplicacionBL();
                return negocio.ActualizarAplicacion(app);
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
