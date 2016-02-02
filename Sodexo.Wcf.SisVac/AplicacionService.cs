using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Sodexo.BL.SisVac;
using Sodexo.BE.SisVac;

namespace Sodexo.Wcf.SisVac
{
    public class AplicacionService : IAplicacion
    {

        public List<AplicacionBE> ListaAplicacion()
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

        public int RegistrarAplicacion(AplicacionBE app)
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

        public int ActualizarAplicacion(AplicacionBE app)
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
