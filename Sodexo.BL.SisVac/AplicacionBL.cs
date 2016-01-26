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
    }
}
