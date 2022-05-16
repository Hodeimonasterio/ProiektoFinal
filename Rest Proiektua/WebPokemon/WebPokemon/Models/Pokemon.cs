using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WebPokemon.Models
{
    public class Pokemon
    {
        public int id { get; set; }
        public string num { get; set; }
        [Required]
        public string name { get; set; }
        [Required]
        public string img { get; set; }
        [Required]
        public string type1 { get; set; }
        [Required]
        public string type2 { get; set; }

        [Required]
        public string height { get; set; }
        [Required]
        public string weight { get; set; }


        public Pokemon()
        {
        }
    }
}