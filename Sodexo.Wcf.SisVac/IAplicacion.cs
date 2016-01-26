using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ServiceModel;
using Sodexo.DAL.SisVac.Entity;

namespace Sodexo.Wcf.SisVac
{
    [ServiceContract]
    public interface IAplicacion
    {
        [OperationContract]
        List<Aplicacion> ListaAplicacion();

        [OperationContract]
        int RegistrarAplicacion(Aplicacion app);

        [OperationContract]
        int EliminarAplicacion(int app);

        [OperationContract]
        int ActualizarAplicacion(Aplicacion app);
    }
}
