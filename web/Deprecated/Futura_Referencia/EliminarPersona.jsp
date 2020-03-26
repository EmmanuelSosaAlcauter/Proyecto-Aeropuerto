<%-- 
    Document   : EliminarPersona
    Created on : 29/01/2020, 05:42:19 PM
    Author     : URIEL&YAIR-PC
--%>

<%@page import="aeropuerto.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Persona</title>
    </head>
    <%
      //Obtener el valor por medio de Request o responsive
      String curp=request.getParameter("c");
      Persona per = new Persona();
      per.setCurp(curp);
      per.eliminar();//Llamada del metodo con el objeto creado
   %>
    </head>
    <body>
        <h1>Datos Eliminados</h1>
    </body>
</html>
