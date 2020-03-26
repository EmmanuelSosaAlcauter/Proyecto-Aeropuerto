package modelo;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {

    private String user, passwd, url;
    private Connection con;
    //Se declaran las variables privadas
// protocolo://domino/
    public Conexion() {
        user = "postgres";
        passwd = "123456";
        url = "jdbc:postgresql://localhost:5432/UTTEC";
        //Se asignan valores a las variables
    }

    public Connection obtenerConexion() {
        try{
            Class.forName("org.postgresql.Driver");
            return con = DriverManager.getConnection(url,user,passwd); //Se establece la conexión
        }catch (Exception e){
            //EL catch sirve para captar las excepciones por si llega a surgir un error
            e.printStackTrace();
        }
        return con = null;

    }
    public static void main (String [] args){
        
    }
}
