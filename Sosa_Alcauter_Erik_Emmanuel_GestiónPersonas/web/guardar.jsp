<%@page import="modelo.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Guardar</title>
        <%
            //Crear proyecto con fuetes existentes
            String nombre = request.getParameter("nombre"); //Se extrae el valor de los imputs ubicado en alta.html
            String curp = request.getParameter("curp");
            String apellidos = request.getParameter("apellidos");
            String rfc = request.getParameter("rfc");
            String edo_civil = request.getParameter("edo_civil");
            Persona personita = new Persona();  //Se crea un objeto de la clase Persona
            personita.setNombre(nombre);
            personita.setCurp(curp);
            personita.setApellidos(apellidos);            //Mediante los objetos mandar a llamar
            personita.setRfc(rfc);
            personita.setEdo_civil(edo_civil);
            personita.registrarPersona(); //Mediante el objeto se manda a llamr al metodo que se desea ejecutarse 
        %>

    </head>
    <body>
        <h1>Registro Exitoso</h1> <!--Mensaje de que los datos han sigo registrado correctamente-->
    </body>
</html>