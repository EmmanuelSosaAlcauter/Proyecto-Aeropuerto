package modelo;

import java.util.Date;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

public class Persona {

    private long id_persona;
    private String nombre;
    private String curp;
    private String apellidos;
    private String rfc;
    private String edo_civil;
    private Conexion con;
    //Se declaran las variables privadas

    public Persona() {
    }

    public Persona(long id_persona, String nombre, String curp, String apellidos, String rfc, String edo_civil) {
        this.id_persona = id_persona;
        this.nombre = nombre;
        this.curp = curp;
        this.apellidos = apellidos;
        this.rfc = rfc;
        this.edo_civil = edo_civil;
        //this.con = con;
        //Se crea un contructor el cual pueda recibir datos
    }

    //Se crean los getter y setter mediante los cuales enviamos datos y se reciben de igual manera
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCurp() {
        return curp;
    }

    public void setCurp(String curp) {
        this.curp = curp;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getRfc() {
        return rfc;
    }

    public void setRfc(String rfc) {
        this.rfc = rfc;
    }

    public String getEdo_civil() {
        return edo_civil;
    }

    public void setEdo_civil(String edo_civil) {
        this.edo_civil = edo_civil;
    }

    public long getId_persona() {
        return id_persona;
    }

    public void setId_persona(long id_persona) {
        this.id_persona = id_persona;
    }

    public void obtenerPersonabyCurp() {
        try {
            con = new Conexion(); //Se establece la nonexión
            final String SQL = "SELECT * FROM personas WHERE curp = ?"; //Se hace la consulta
            PreparedStatement sentencia = con.obtenerConexion().prepareStatement(SQL);//Se prepara la consulta y se envia
            //Mecanismo para evitar un conexion SQL
            sentencia.setString(1, curp);

            ResultSet record = sentencia.executeQuery();

            while (record.next()) {
                id_persona = record.getLong("id_persona");
                nombre = record.getString("nombre");
                curp = record.getString("curp");
                apellidos = record.getString("apellidos");
                rfc = record.getString("rfc");
                edo_civil = record.getString("edo_civil");
                //Recorre los datos de la base de datos
            }
        } catch (Exception e) {
            //EL catch sirve para captar las excepciones por si llega a surgir un error
            e.printStackTrace();
        }

    }

    public void registrarPersona() {
        try {
            con = new Conexion(); //Se establece la conexión 
            final String SQL = "SELECT registrar_personas(?,?,?,?,?)"; //Se establece la consulta que se va a ejecutar en postgresql 
            //final String SQL = "INSERT INTO (nombre,curp,apellidos,rfc,edo_civil) VALUES (?,?,?,?,?)";
            PreparedStatement sentencia = con.obtenerConexion().prepareStatement(SQL);
            //Mecanismo para evitar un conexion SQL
            sentencia.setString(1, nombre);
            sentencia.setString(2, curp);
            sentencia.setString(3, apellidos);
            sentencia.setString(4, rfc);
            sentencia.setString(5, edo_civil); // Se utilizan los set para enviar los datos a la base de datos asignada
            sentencia.execute(); //es un metodo de ejecución

            ResultSet record = sentencia.executeQuery();

            /*while(record.next())
            {
                nombre = record.getString("nombre");
                curp = record.getString("curp");
                apellidos = record.getString("apellidos");
                rfc = record.getString("rfc");
                edo_civil = record.getString("edo_civil");
            }*/
        } catch (Exception e) {
            //EL catch sirve para captar las excepciones por si llega a surgir un error
            e.printStackTrace();
        }
    }

    public void eliminarPersona() {
        try {
            con = new Conexion();
            final String SQL = "DELETE FROM personas WHERE curp = ?"; //Se hace la consulta qe se ejecuta en la base de datos postgresql
            //final String SQL = "INSERT INTO (nombre,curp,apellidos,rfc,edo_civil) VALUES (?,?,?,?,?)";
            PreparedStatement sentencia = con.obtenerConexion().prepareStatement(SQL);
            //Mecanismo para evitar un conexion SQL
            sentencia.setString(1, curp); // Se utilizan los set para enviar los datos a la base de datos asignada
            sentencia.execute(); //es un metodo de ejecución

            ResultSet record = sentencia.executeQuery();
        } catch (Exception e) {
            //EL catch sirve para captar las excepciones por si llega a surgir un error
            e.printStackTrace();
        }
    }

    public void modificarPersona() {
        try {
            con = new Conexion(); //Se establece la conexion cono la base de datos
            final String SQL = "SELECT modificar_personas(?,?,?,?,?)"; //Se hace la consulta qe se ejecuta en la base de datos postgresql
            //final String SQL = "INSERT INTO (nombre,curp,apellidos,rfc,edo_civil) VALUES (?,?,?,?,?)";
            PreparedStatement sentencia = con.obtenerConexion().prepareStatement(SQL);
            //Mecanismo para evitar un conexion SQL
            sentencia.setString(1, nombre);
            sentencia.setString(2, curp);
            sentencia.setString(3, apellidos);
            sentencia.setString(4, rfc);
            sentencia.setString(5, edo_civil);// Se utilizan los set para enviar los datos a la base de datos asignada
            sentencia.execute(); //es un metodo de ejecución

            ResultSet record = sentencia.executeQuery();
        } catch (Exception e) {
            //EL catch sirve para captar las excepciones por si llega a surgir un error
            e.printStackTrace();
        }

    }

    public ArrayList<Persona> obtenerPersonas() {
        ArrayList<Persona> lstPersonas = new ArrayList<>();

        try {
            con = new Conexion(); //Se establece la conexion cono la base de datos
            final String SQL = "SELECT * FROM personas"; //Se hace la consulta qe se ejecuta en la base de datos postgresql

            PreparedStatement ps = con.obtenerConexion().prepareStatement(SQL);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                lstPersonas.add(new Persona(rs.getLong(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6)));
            }
            return lstPersonas;

        } catch (Exception e) {
            //EL catch sirve para captar las excepciones por si llega a surgir un error
            e.printStackTrace();
        }
        return lstPersonas;
    }

    public int calcularEdad() {

        //se puede crear un metodo statico que regrese un valor entero o simplemete estatico 
        Date fechaNac = null;
        try {
            //String curp1 = "SOA001012HDFSLRA3";
            //Se extraen del curp los caracteres que determinan la fecha de nacimeinto
            String año1 = curp.substring(4, 6); //Se extrae el año
            String mes1 = curp.substring(6, 8); //Se extrae el mes 
            String dia1 = curp.substring(8, 10); //Se extrae el dia
            String fecha1 = año1 + "-" + mes1 + "-" + dia1; //Se concaten las variables anteriores para dar formarto a una fecha de nacimeinto
            //String fecha1 = "00-10-12";

            fechaNac = (Date) new SimpleDateFormat("yy-MM-dd").parse(fecha1); //Se pide el formato en el que obtienes la fecha de nacimiento
        } catch (Exception ex) {
            //EL catch sirve para captar las excepciones por si llega a surgir un error
            System.out.println("Error:" + ex); //Se imprime el error
        }
        Calendar fechaNacimiento = Calendar.getInstance();
        //Se crea un objeto con la fecha actual
        Calendar fechaActual = Calendar.getInstance();
        //Se asigna la fecha recibida a la fecha de nacimiento.
        fechaNacimiento.setTime(fechaNac);
        //Se restan la fecha actual y la fecha de nacimiento
        int año = fechaActual.get(Calendar.YEAR) - fechaNacimiento.get(Calendar.YEAR);
        int mes = fechaActual.get(Calendar.MONTH) - fechaNacimiento.get(Calendar.MONTH);
        int dia = fechaActual.get(Calendar.DATE) - fechaNacimiento.get(Calendar.DATE);
        //Se ajusta el año dependiendo el mes y el día
        if (mes < 0 || (mes == 0 && dia < 0)) {
            año--;
        }
        //Regresa la edad en base a la fecha de nacimiento
        //Solo si el metodo retorna un entero
        return año;
    }

    public void obtenerEstados() {

        try {
            String curp1 = "SOA001012HDFSLRA3";
            //Se extraen del curp los caracteres que determinan la fecha de nacimeinto
            String estado = curp1.substring(10, 12); //Se extrae el año
            //Se pide el formato en el que obtienes la fecha de nacimiento
            String estado1 = null;

            switch (estado) {
                case "DF":
                    estado1 = "Distrito Federal";
                    break;
                case "AS":
                    estado1 = "Aguascalientes";
                    break;
                case "BC":
                    estado1 = "Baja California";
                    break;
                case "BS":
                    estado1 = "Baja California Sur";
                    break;
                case "CC":
                    estado1 = "Campeche";
                    break;
                case "CS":
                    estado1 = "Chiapas";
                    break;
                case "CH":
                    estado1 = "Chihuahua";
                    break;
                case "CL":
                    estado1 = "Coahuila";
                    break;
                case "CM":
                    estado1 = "Colima";
                    break;
                case "DG":
                    estado1 = "Durango";
                    break;
                case "GT":
                    estado1 = "Guanajuato";
                    break;
                case "GR":
                    estado1 = "Guerrero";
                    break;
                case "HG":
                    estado1 = "Hidalgo";
                    break;
                case "JC":
                    estado1 = "Jalisco";
                    break;
                case "MC":
                    estado1 = "México";
                    break;
                case "MN":
                    estado1 = "Michoacán";
                    break;
                case "MS":
                    estado1 = "Morelos";
                    break;
                case "NT":
                    estado1 = "Nayarit";
                    break;
                case "NL":
                    estado1 = "Nuevo León";
                    break;
                case "OC":
                    estado1 = "Oaxaca";
                    break;
                case "PL":
                    estado1 = "Puebla";
                    break;
                case "QO":
                    estado1 = "Queretaro";
                    break;
                case "QR":
                    estado1 = "Quintana Roo";
                    break;
                case "SP":
                    estado1 = "San Luis Potosí";
                    break;
                case "SL":
                    estado1 = "Sinaloa";
                    break;
                case "SR":
                    estado1 = "Sonora";
                    break;
                case "TC":
                    estado1 = "Tabasco";
                    break;
                case "TS":
                    estado1 = "Tamaulipas";
                    break;
                case "TL":
                    estado1 = "Tlaxcala";
                    break;
                case "VZ":
                    estado1 = "Veracruz";
                    break;
                case "YN":
                    estado1 = "Yucatán";
                    break;
                case "ZS":
                    estado1 = "Zacatecas";
                    break;
            }
            System.out.println(estado1);
        } catch (Exception ex) {
            //EL catch sirve para captar las excepciones por si llega a surgir un error
            System.out.println("Error:" + ex); //Se imprime el error
        }

    }

    public void obtenerGenero() {
        try {

            String curp1 = "SOA001012HDFSLRA3";
            //Se extraen del curp los caracteres que determinan la fecha de nacimeinto
            String genero = curp1.substring(9, 10); //Se extrae el mes 
            //Se pide el formato en el que obtienes la fecha de nacimiento
            String genero1 = null;

            switch (genero) {
                case "H":
                    genero1 = "Hombre";
                    break;
                case "M":
                    genero1 = "Mujer";
            }
            System.out.println(genero1);
        } catch (Exception ex) {
            //EL catch sirve para captar las excepciones por si llega a surgir un error
            System.out.println("Error:" + ex); //Se imprime el error
        }

    }

    public static void main(String[] args) {
        Persona p = new Persona();
        p.obtenerEstados();
        p.obtenerGenero();
    }
}
