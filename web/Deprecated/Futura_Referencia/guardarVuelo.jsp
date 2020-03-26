<%@page import="aeropuerto.Vuelos"%>
<% 
    String avion = request.getParameter("avion");
    String escala = request.getParameter("numEs");
    String caEscala = request.getParameter("esc");
    String origen = request.getParameter("origen");
    String fechaPart = request.getParameter("partFec");
    String fechaLleg = request.getParameter("llegFec");
    String horaPart = request.getParameter("partHor");
    String horaLleg = request.getParameter("llegHor");
    String costo = request.getParameter("costo");
    
    Vuelos vul = new Vuelos();
    vul.setId_avion(Integer.parseInt(avion));
    vul.setId_escala(Integer.parseInt(escala));
    vul.setNumEscalas(Integer.parseInt(caEscala));
    vul.setOrigen(origen);
    vul.setFechaSalida(fechaPart);
    vul.setFechaLlegada(fechaLleg);
    vul.setHoraSalida(horaPart);
    vul.setHoraLlegada(horaLleg);
    vul.setCostoPorVuelo(Integer.parseInt(costo));
    
    vul.registrarVuelo();
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Correcto</title>
    </head>
    <body>
        <h1>Registro de aerolinea</h1>
    </body>
</html>