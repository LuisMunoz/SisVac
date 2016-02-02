using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ServiceModel;
using Sodexo.BE.SisVac;

namespace Sodexo.Wcf.SisVac
{
    [ServiceContract]
    public interface IAplicacion
    {
        [OperationContract]
        List<AplicacionBE> ListaAplicacion();

        [OperationContract]
        int RegistrarAplicacion(AplicacionBE app);

        [OperationContract]
        int EliminarAplicacion(int app);

        [OperationContract]
        int ActualizarAplicacion(AplicacionBE app);
    }
}
