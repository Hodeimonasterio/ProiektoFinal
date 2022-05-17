using ApiPokemon.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;

namespace ApiPokemon.Controllers
{
    [RoutePrefix("api/pokedex")]
    public class VentajasController : ApiController
    {
        //[HttpGet]
        //[Route("ventaja")]
        //public IEnumerable<advantage> getDesventajas([FromBody] int id)
        //{
        //    using (VentajaContext dbContext = new VentajaContext())
        //    {

        //        List<advantage> lista = dbContext.advantage.Where(s => s.defender_id == 1).ToList();
        //        return lista;
        //    }
        //}

        [HttpGet]
        [Route("ventaja")]
        public IEnumerable<advantage> getDesventajas()
        {
            using (VentajaContext dbContext = new VentajaContext())
            {

                List<advantage> lista = dbContext.advantage.ToList();
                return lista;
            }
        }
    }
}