using Microsoft.AspNetCore.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using System.Net;
using System.Reflection.Metadata;
using System.Text.Json.Nodes;
using System.Text.Json;
using System;
using System.IO;
using System.Data.SqlClient;
using System.Diagnostics;
using Newtonsoft.Json.Linq;
using System.ComponentModel.DataAnnotations;
using System.Numerics;

namespace pruebas.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class AsignarAjustadorController : ControllerBase
    {
        static async Task<String> main(float a, float b, List<String[]> c) 
        {
            String ap = "";
            //se combierte el array de arrays en un formato legible para googlemaps distance matrix
            for (int i = 0; i < c.Count(); i++)
            {
                if (i == c.Count - 1)
                {
                    ap += c[i][4] + "," + c[i][3];
                }
                else 
                {
                    ap +=c[i][4] + "," + c[i][3] + "%7C";
                }
                
            }
            //crea el lector del api
            HttpClient request = new HttpClient();
            //se crea el GET de googlemaps distance matrix
            string strUrl = String.Format($"https://maps.googleapis.com/maps/api/distancematrix/json?origins={a},{b}&destinations={ap}&key=AIzaSyD4BTq58XUAsnHDkSZUvwbNC-mJSTXUqLM");
            //Console.WriteLine(strUrl);
            //se lee la respuesta
            HttpResponseMessage response = await request.GetAsync(strUrl);
            response.EnsureSuccessStatusCode();
            //se regresa en formato Json
            return await response.Content.ReadAsStringAsync();
        }
        private readonly ILogger<AsignarAjustadorController> _logger;

        public AsignarAjustadorController(ILogger<AsignarAjustadorController> logger)
        {
            _logger = logger;
        }

        [HttpPost(Name = "AsignarAjustador")]
        public IEnumerable<AsignarAjustador> Post([FromBody] object json)
        {
            int p1 = 50, p2=40, p3=10;
            //se conecta el api a la base de datos
            string connstring = "Data Source = BIGBOIPC;Initial Catalog = Geolocalizacion;Integrated Security=true";
            //se crea la coneccion a la base de datos
            SqlConnection con = new SqlConnection(connstring);
            //se abre la conexion
            con.Open();
            //se disena la query "recomendado cambiar esta seccion por un Procedure con el mismo Select"
            string query = "SELECT Ajustador.EntidadId,Ajustador.disponibilidad,Ajustador.tipo_ajustador,EntidadUbicacion.Latitud,EntidadUbicacion.Longitud FROM Ajustador,EntidadUbicacion WHERE Ajustador.EntidadId = EntidadUbicacion.EntidadId;";
            //se realiza la query
            SqlCommand cmd = new SqlCommand(query, con);
            // se crea el lector de la respuesta
            SqlDataReader reader = cmd.ExecuteReader();
            //se crea un array de array's de todos los valores importantes almacenados en la base de datos
            List<String[]> array = new List<string[]>();
            while (reader.Read())
            {
                //se crea un array
                String[] str = new string[7];
                //se recupera el id del asegurador.
                str[0] = (String)reader.GetValue(0).ToString();
                //se recupera la disponibbilidad del asegurador
                str[1] = (String)reader.GetValue(1).ToString();
                //se recupera el tipo de ajustador
                str[2] = (String)reader.GetValue(2).ToString();
                //se recupera la latitud
                str[3] = (String)reader.GetValue(3).ToString();
                //se recupera la longitudd
                str[4] = (String)reader.GetValue(4).ToString();
                //se agrega el array al array de array's
                array.Add(str);
                //string output = "EntidadID = " + str[0] + " ,Disponibilidad = " + str[1] + " ,TipoAjustador = " + str[2] + " ,Latitud = " + str[3] + " ,Longitud = "+ str[4];
                //Debug.WriteLine(output);
            }
            //se cierra el lector de la base de datos
            reader.Close();
            //se Serializa el json recibido al inicio
            string jsonString = JsonSerializer.Serialize(json);
            //se parsea la respuesta
            JsonNode inp = JsonNode.Parse(jsonString);
            //se inicia el json en el root
            JsonNode root = inp.Root;
            //se consigue la variable latitud y longitud del cliente
            float lat = float.Parse(root["lat"]!.ToString());
            float lon = float.Parse(root["lon"]!.ToString());
            //se hace llamada al api de google maps con toda la informacion recuperada
            string responseBody = main(lat, lon, array).Result;
            //se parsea el json
            JObject json2 = JObject.Parse(responseBody);
            //se llega al json interesante de los resultados de google maps
            JArray json3 = new JArray(json2["rows"]);
            JArray json4 = new JArray(json3.ElementAt(0).ElementAt(0)["elements"]);
            JArray json5 = new JArray(json4.ElementAt(0));
            //se inicializa el minimo
            int minim = -1;
            for (int i = 0; i < json5.ElementAt(0).Count(); i++)
            {
                //se abstrae el json clase value del json previo
                JObject json6 = new JObject(json5.ElementAt(0).ElementAt(i).ElementAt(1).ElementAt(0).ElementAt(1));
                //Console.WriteLine(json6["value"].ToString());
                array[i][5] = json6["value"].ToString();
                if (minim == -1 || minim > Int32.Parse(json6["value"].ToString()))
                {
                    //se selecciona cual es el valor minimo
                    minim = Int32.Parse(json6["value"].ToString());
                }
            }
            //se selecciona el maximo
            try
            {
                int count = 0;
                string[] lines = System.IO.File.ReadAllLines(@"txt/pesos.txt");
                foreach (string line in lines)
                {
                    // Use a tab to indent each line of the file.
                    switch (count)
                    { 
                        case 0:
                            p1 = int.Parse(line);
                            Debug.WriteLine(p1);
                            break;
                        case 1:
                            p2 = int.Parse(line);
                            Debug.WriteLine(p2);
                            break ;
                        case 2:
                            p3 = int.Parse(line);
                            Debug.WriteLine(p3);
                            break;
                        default:
                            Console.WriteLine("extra");
                            break;
                    }
                    count += 1;
                }
            }
            catch
            {
                Console.WriteLine("error de lectura de archivo");
                string[] a = new string[3];
                a[0]="50";
                a[1] = "40";
                a[2] = "10";
                System.IO.File.WriteAllLines(@"txt/pesos.txt",a);
            }

            int max = 0;
            //algoritmo de seleccion de clientes
            for (int i = 0; i < array.Count(); i++) 
            {
                //se pondera el algoritmo a un maximo de 100 puntos
                float count = 0;
                count += (p1 *((1.0f*minim)/Int32.Parse(array[i][5])));
                count += p2 * (Int32.Parse(array[i][1])/3.0f);
                count += p3 * (Int32.Parse(array[i][2]));
                array[i][6] = count.ToString();
                //se checa si el valor es el maximo
                if (float.Parse(array[max][6]) < count) 
                {
                    max = i;
                }
                Console.WriteLine(count+" " + array[i][1]+" " + array[i][2]+" " + array[i][5]);
            }
            //Console.WriteLine(array[max][0]);
            return Enumerable.Range(1,1).Select(index => new AsignarAjustador
            {
               //regresa el resultado en formato Json
               resultado = array[max][0]
            })
            .ToArray();
        }
    }
}