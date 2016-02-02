using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.Serialization;

namespace Sodexo.BE.SisVac
{
    [DataContract]
    public class AplicacionBE
    {
        [DataMember]
        public int id_aplicacion{get;set;}

        [DataMember]
	    public string nombre_sistema{get;set;}

        [DataMember]
	    public string nombre_corto{get;set;}

        [DataMember]
	    public int estado{get;set;}

        [DataMember]
	    public int usuario_reg{get;set;}

        [DataMember]
        public string usuarioreg{get;set;}

        [DataMember]
        public DateTime fecha_reg { get; set; }
    }
}
