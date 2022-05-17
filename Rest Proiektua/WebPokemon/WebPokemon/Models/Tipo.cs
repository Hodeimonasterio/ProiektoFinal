using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WebPokemon.Models
{
    public class Tipo
    {
        public int id { get; set; }

        [Required]
        public string type { get; set; }


        public Tipo()
        {
        }
    }
}