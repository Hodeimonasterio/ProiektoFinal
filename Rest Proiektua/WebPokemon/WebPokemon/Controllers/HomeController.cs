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
            List<Tipo> listaTipos= new List<Tipo>();
            List<Ventaja> listaVentaja = new List<Ventaja>();

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
                // New code:
                HttpResponseMessage response2= await client.GetAsync("api/pokedex/types");
                if (response2.IsSuccessStatusCode)
                {
                    var PokResponse = response2.Content.ReadAsStringAsync().Result;
                    listaTipos = JsonConvert.DeserializeObject<List<Tipo>>(PokResponse);

                }
                // New code:
                HttpResponseMessage response3 = await client.GetAsync("api/pokedex/ventaja");
                if (response3.IsSuccessStatusCode)
                {
                    var PokResponse = response3.Content.ReadAsStringAsync().Result;
                    listaVentaja = JsonConvert.DeserializeObject<List<Ventaja>>(PokResponse);

                }

            }

            ViewBag.ventajas = listaVentaja;
            ViewBag.tipos = listaTipos;
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