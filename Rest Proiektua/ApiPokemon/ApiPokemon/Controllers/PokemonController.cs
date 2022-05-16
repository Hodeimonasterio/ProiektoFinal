using ApiPokemon.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;

namespace ApiPokemon.Controllers
{
    [RoutePrefix("api/pokedex")]
    public class PokemonController : ApiController
    {

        [HttpGet]
        [Route("pokemons")]
        public IEnumerable<pokemon> getPokemons()
        {
            using (PokemonContexto dbContext = new PokemonContexto())
            {
                List<pokemon> lista = dbContext.pokemon.ToList();
                return lista;
            }
        }

        [HttpGet]
        [Route("pokemon")]
        public pokemon getPokemon([FromBody] int id)
        {
            using (PokemonContexto dbContext = new PokemonContexto())
            {
                pokemon pokemon = dbContext.pokemon.FirstOrDefault(X => X.id == id);
                return pokemon;
            }
        }
    }
}