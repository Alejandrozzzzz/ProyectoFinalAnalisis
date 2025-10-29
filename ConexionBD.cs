using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProyectoFinalAnalisis
{
    public class ConexionBD
    {
        private static string cadena =
                    "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\ProyectoFinalAnalisis.mdf;Integrated Security=True";

        public static SqlConnection ObtenerConexion()
        {
            string cadena = ConfigurationManager.ConnectionStrings["ConexionBD"].ConnectionString;
            return new SqlConnection(cadena);
        }
    }
}
