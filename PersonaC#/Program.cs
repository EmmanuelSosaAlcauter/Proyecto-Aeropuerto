using System;

namespace Persona
{
    public class Persona
    {
        public int IdPersona { get; set; }
        public string Nombre { get; set; }
        public string Apellidos { get; set; }
        public string Curp { get; set; }
        public string RFC { get; set; }
        public string EdoCivil { get; set; }
        public string Saludar()
        {
            return "Hola";
        }
    }
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");
            Persona per = new Persona();
        }

    }
}
