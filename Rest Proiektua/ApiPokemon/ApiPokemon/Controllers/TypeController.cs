using ApiPokemon.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;

namespace ApiPokemon.Controllers
{
    [RoutePrefix("api/pokedex")]
    public class TypeController : ApiController
    {
        [HttpGet]
        [Route("types")]
        public IEnumerable<types> getTypes()
        {
            using (TypeContext dbContext = new TypeContext())
            {
                List<types> lista = dbContext.types.ToList();
                return lista;
            }
        }


        [HttpGet]
        [Route("nombre")]
        public string getName([FromBody] int id)
        {
            using (TypeContext dbContext = new TypeContext())
            {
               
                types type = dbContext.types.FirstOrDefault(X => X.id == id);
                return type.type;
            }
        }

        [HttpGet]
        [Route("id")]
        public int getId([FromBody] string name)
        {
            using (TypeContext dbContext = new TypeContext())
            {

                types type = dbContext.types.FirstOrDefault(X => X.type == name);
                return type.id;
            }
        }
    }
}