using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using WebPokemon.Models;

namespace WebPokemon.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public async Task<ActionResult> ListPokemon()
        {
            List<Pokemon> listaPokemon = new List<Pokemon>();

            //String url = "https://localhost:44383/api/pokedex/pokemons";

            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri("https://localhost:44383/");

                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

                // New code:
                HttpResponseMessage response = await client.GetAsync("api/pokedex/pokemons");
                if (response.IsSuccessStatusCode)
                {
                    var PokResponse = response.Content.ReadAsStringAsync().Result;
                    listaPokemon = JsonConvert.DeserializeObject<List<Pokemon>>(PokResponse);

                }
            }

            ViewBag.pokemons = listaPokemon;
            return View();

        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}