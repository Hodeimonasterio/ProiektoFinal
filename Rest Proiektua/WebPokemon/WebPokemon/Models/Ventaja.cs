using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WebPokemon.Models
{
    public class Ventaja
    {
        public int attacker_id { get; set; }
        public int defender_id { get; set; }
        [Required]
        public float damage_multiplier { get; set; }



        public Ventaja()
        {
        }
    }
}