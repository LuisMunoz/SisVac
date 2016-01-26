using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Sodexo.DAL.SisVac.Entity;
using Sodexo.DAL.SisVac.Data;

namespace Sodexo.BL.SisVac
{
    public class AplicacionBL
    {
        public AplicacionDA data = new AplicacionDA();

        public List<Aplicacion> ListaAplicacion() 
        {
            return data.ListaAplicacion();
        }

        public int RegistrarAplicacion(Aplicacion app) 
        {
            return data.RegistrarAplicacion(app);
        }

        public int EliminarAplicacion(int app) 
        {
            return data.EliminarAplicacion(app);
        }

        public int ActualizarAplicacion(Aplicacion app) 
        {
            return data.ActualizarAplicacion(app);
        }
    }
}
