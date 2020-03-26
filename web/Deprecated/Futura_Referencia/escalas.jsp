<%@page import="aeropuerto.Escalas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Guardar</title>
        <%
            //Crear proyecto con fuetes existentes
            String fs = request.getParameter("fecha_salida");
            String hs = request.getParameter("hora_salida");
            String fl = request.getParameter("fecha_llegada");
            String hl = request.getParameter("hora_llegada");
            Escalas r = new Escalas();  //Se crea un objeto
            r.setFechaSalida(fs);
            r.setHoraSalida(hs);
            r.setFechaLlegada(fl);
            r.setHoraLlegada(hl);
            r.resgistrarEscalas();
        %>

    </head>
    <body>
        <h1>Registro Exitoso</h1>
    </body>
</html>