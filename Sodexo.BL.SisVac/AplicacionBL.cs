using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Sodexo.DAL.SisVac.Data;
using Sodexo.BE.SisVac;

namespace Sodexo.BL.SisVac
{
    public class AplicacionBL
    {
        public AplicacionDA data = new AplicacionDA();

        public List<AplicacionBE> ListaAplicacion() 
        {
            return data.ListaAplicacion();
        }

        public int RegistrarAplicacion(AplicacionBE app)
        {
            return data.RegistrarAplicacion(app);
        }

        public int EliminarAplicacion(int app)
        {
            return data.EliminarAplicacion(app);
        }

        public int ActualizarAplicacion(AplicacionBE app)
        {
            return data.ActualizarAplicacion(app);
        }
    }
}
