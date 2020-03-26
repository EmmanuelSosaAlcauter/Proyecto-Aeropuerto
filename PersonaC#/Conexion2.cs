using Npgsql;
using System;
using System.Collections.Generic;
using System.Text;

namespace Persona
{
    
    class Conexion2
    {
        private static string Host = "localhost:";
        private static string User = "postgres";
        private static string DBname = "aeropuerto";
        private static string Password = "123456";
        private static string Port = "5432";

        static void Main(string[] args)
        {

            string connString =
                String.Format(
                    "Server={0};Username={1};Database={2};Port={3};Password={4};SSLMode=Prefer",
                    Host,
                    User,
                    DBname,
                    Port,
                    Password);


            using (var conn = new NpgsqlConnection(connString))

            {
                Console.Out.WriteLine("Abriendo Conexión");
                conn.Open();

                using (var command = new NpgsqlCommand("DROP TABLE IF EXISTS inventory", conn))
                {
                    command.ExecuteNonQuery();
                    Console.Out.WriteLine("Finished dropping table (if existed)");

                }

                Console.WriteLine("Presiona Return para salir");
                Console.ReadLine();

            }
        }
    }
}
