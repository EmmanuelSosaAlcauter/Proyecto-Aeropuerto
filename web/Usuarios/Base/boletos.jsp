<%@page import="aeropuerto.Boletos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            String nBoleto = request.getParameter("nBoleto");
            String asiento = request.getParameter("asiento");
            String usuario = request.getParameter("usuario");
            String clase = request.getParameter("clase");
            String nMaletas = request.getParameter("nMaletas");
            String precio = request.getParameter("precio");

            Boletos bol = new Boletos();
            bol.setNum_vuelo(Integer.parseInt(nBoleto));
            bol.setAsiento(Integer.parseInt(asiento));
            bol.setId_usuario(Integer.parseInt(usuario));
            bol.setClase(clase);
            bol.setNumMaletas(Integer.parseInt(nMaletas));
            bol.setPrecio(Float.parseFloat(precio));
            bol.registrarBoleto();
        %>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link  rel="stylesheet"  href="css/menu.css">
        <link rel="stylesheet" href="css/fontello.css">
        <title>Boletos</title>
    </head>
    <body>
        <h1>Exitos</h1>
        <%response.sendRedirect("vuelos.jsp");%>
    </body>
</html>
