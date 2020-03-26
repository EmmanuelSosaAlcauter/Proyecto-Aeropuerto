<%-- 
    Document   : AgregarPersona
    Created on : 29/01/2020, 02:33:40 PM
    Author     : URIEL&YAIR-PC
--%>

<%@page import="aeropuerto.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Persona</title>
    </head>
    <%
        //mando a llamar las variables de mi formulario html y les asigno otra variables
        String nombre = request.getParameter("n");
        String ap = request.getParameter("a");
        String curp = request.getParameter("c");
        Persona i = new Persona();
        i.setNombre(nombre);
        i.setApellidos(ap);
        i.setCurp(curp);
        i.Registrarper();
     %>
    <body>
        <h1>Persona Registrada</h1>
    </body>
</html>
