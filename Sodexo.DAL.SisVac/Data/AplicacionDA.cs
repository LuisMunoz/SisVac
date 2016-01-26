using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Sodexo.DAL.SisVac.Entity;

namespace Sodexo.DAL.SisVac.Data
{
    public class AplicacionDA
    {
        SodexoEntities context = new SodexoEntities();

        public List<Aplicacion> ListaAplicacion() 
        {
                var a = from b in context.Aplicacion
                        where b.estado == 1
                        select b;

                return a.ToList();
        }

        public int RegistrarAplicacion(Aplicacion app) 
        {
            context.Aplicacion.Add(app);
            return context.SaveChanges();
        }

        public int EliminarAplicacion(int app) 
        {
            var a = from b in context.Aplicacion
                    where b.id_aplicacion == app
                    select b;

            context.Aplicacion.Remove((Aplicacion)a);
            return context.SaveChanges();
        }

        public int ActualizarAplicacion(Aplicacion app) 
        {
            var a = (from b in context.Aplicacion
                    where b.id_aplicacion == app.id_aplicacion
                    select b).First();
            a.estado = app.estado;
            a.nombre_corto = app.nombre_corto;
            a.nombre_sistema = app.nombre_sistema;
            return context.SaveChanges();
        }
    }
}
