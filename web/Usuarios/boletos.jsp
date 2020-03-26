<%-- 
    Document   : boletos
    Created on : 12/03/2020, 11:53:38 AM
    Author     : Isaac
--%>

<%@page import="aeropuerto.Boletos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirmación de boleto</title>
        <link  rel="stylesheet"  href="css/estilos.css">
    </head>
    <%
        String xd = " ";
        String destino = "";
        int boletos = 0;
        String clase = "";
        int numVuelo = 0;
        String aero = "";
        String fecha = "";
        String hora = "";
        String codigo = "";
        try {
            destino = request.getParameter("destino");
            boletos = Integer.parseInt(request.getParameter("num"));
            clase = request.getParameter("clas");
            numVuelo = Integer.parseInt(request.getParameter("vuelo"));
            aero = request.getParameter("aeropuerto");
            fecha = request.getParameter("fecha");
            hora = request.getParameter("hora");
            codigo = String.valueOf(Math.random());
            codigo = codigo.substring(2);
            for (int i = 0; i < boletos; i++) {
                new Boletos(numVuelo, 1, clase, codigo).registrarBoleto();
            }
        } catch (Exception e) {
            xd = "Ocurrio un error, intentalo de nuevo";
        }
    %>

    <h1>Boletos</h1>

    <p>Vuelo con destino a: <%=destino%> </p>
    <p>Numero de boletos: <%=boletos%></p>
    <p>Asientos:</p>
    <% for (int i = 0; i < boletos; i++) {%>
    <p>Numero de asiento: <%=new Boletos().maxBoletos(numVuelo, boletos - i)%></p>
    <% }%>
    <p>Sube en el aeropuerto: <%=aero%></p>
    <p>En el dia: <%=fecha%></p>
    <p>A las: <%=hora%></p>
    <p>Tu codigo de acceso: <%=codigo%></p>
    <p>Favor de llegar 2 horas antes</p>
</html>
