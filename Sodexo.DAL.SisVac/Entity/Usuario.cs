//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Sodexo.DAL.SisVac.Entity
{
    using System;
    using System.Collections.Generic;
    
    public partial class Usuario
    {
        public Usuario()
        {
            this.Usuario_Rol = new HashSet<Usuario_Rol>();
        }
    
        public long id_usuario { get; set; }
        public string matricula { get; set; }
        public string nombres { get; set; }
        public string apellido_pat { get; set; }
        public string apellido_mat { get; set; }
        public Nullable<System.DateTime> fecha_reg { get; set; }
        public Nullable<int> usuario_reg { get; set; }
        public Nullable<int> estado { get; set; }
    
        public virtual ICollection<Usuario_Rol> Usuario_Rol { get; set; }
    }
}