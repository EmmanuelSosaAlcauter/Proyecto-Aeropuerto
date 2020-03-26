<%@page import="aeropuerto.Avion"%>
<%@page import="aeropuerto.Aerolinea"%>
<%
    String nombre = request.getParameter("aerol");
    String modelo = request.getParameter("model");
    String capacidad = request.getParameter("capac");

    Avion avioncito = new Avion();
    avioncito.setId_aerolinea(new Aerolinea(nombre).obtenerIdPorNombre());
    avioncito.setModelo(modelo);
    avioncito.setCapacidad(Integer.parseInt(capacidad));
    avioncito.setDisponibilidad("Disponible");
    avioncito.registrarAvion();
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Correcto</title>
    </head>
    <body>
        <h1>Registro de avión</h1>
    </body>
</html>