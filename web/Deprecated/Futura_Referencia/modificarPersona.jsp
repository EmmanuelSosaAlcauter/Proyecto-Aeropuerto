<%-- 
    Document   : modificarPersona
    Created on : 29/01/2020, 05:12:17 PM
    Author     : URIEL&YAIR-PC
--%>

<%@page import="aeropuerto.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
            String nombre = request.getParameter("nom");
            String ap = request.getParameter("ap");
            String curp = request.getParameter("cu");
            Persona p = new Persona();
            p.setNombre(nombre);
            p.setApellidos(ap); 
            p.setCurp(curp);
            p.modificar();
    %>
    <body>
        <h1>Datos Modificados</h1>
    </body>
</html>
