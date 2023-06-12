using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ApiWeb.Models
{
    public class Usuario
    {

        public int idUsuario { get; set; }
        public string documento { get; set; }
        public string nombres { get; set; }
        public string apellidos { get; set; }
        public string telefono { get; set; }
        public string correo { get; set; }
        public string ciudad { get; set; }
        public DateTime fechaRegistro { get; set; }


    }
}