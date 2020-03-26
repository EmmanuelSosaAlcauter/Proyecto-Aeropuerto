<%@page import="aeropuerto.Rutas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Guardar</title>
        <%
            //Crear proyecto con fuetes existentes
            String num_escalas = request.getParameter("numEscalas");
            String destino = request.getParameter("destino");
            Rutas r = new Rutas();  //Se crea un objeto
            r.setNumEscalas(Integer.parseInt(num_escalas));
            r.setDestino(destino);
            r.resgistrarRutas();
        %>

    </head>
    <body>
        <h1>Registro Exitoso</h1>
    </body>
</html>