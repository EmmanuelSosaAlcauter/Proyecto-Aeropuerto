<%@page import="aeropuerto.Rutas_Escalas"%>
<%@page import="java.util.ArrayList"%>
<%@page import="aeropuerto.Rutas"%>
<%@page import="aeropuerto.Vuelos"%>
<%@page import="aeropuerto.Escalas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabla</title>
        <link  rel="stylesheet"  href="css/estilos.css">
    </head>
    <%
        String xd = " ";
        String destino = "";
        String boletos = "";
        String clase = "";
        try {
            destino = request.getParameter("destino");
            boletos = request.getParameter("num");
            clase = request.getParameter("clas");
        } catch (Exception e) {
            xd = "Ocurrio un error, intentalo de nuevo";
        }
    %>
    <body>
        <%if (xd == null) {%>
        <%=" "%>
        <%} else {%>
        <%=xd%>
        <%}%>
        <h1>
            Tabla de referencia de los datos
        </h1>
        <table>
            <tr>
                <td>Vuelo</td>
                <td>Destino</td>
                <td>Aeropuerto</td>
                <td>Fecha de partida</td>
                <td>Hora de Partida</td>
            </tr>
            <%for (Rutas a : new Rutas().obtenerMegaRutas(destino)) {%>
            <tr>
                <form action="boletos.jsp" method="POST">
                    <input type="hidden" value="<%=destino%>" name="destino">
                    <input type="hidden" value="<%=boletos%>" name="num">
                    <input type="hidden" value="<%=clase%>" name="clas">
                    <input type="hidden" value="<%=a.getMegaVuelo()%>" name="vuelo">
                    <input type="hidden" value="<%=a.getMegaAeropuerto()%>" name="aeropuerto">
                    <input type="hidden" value="<%=a.getMegaFecha()%>" name="fecha">
                    <input type="hidden" value="<%=a.getMegaHora()%>" name="hora">
                <td>
                    <p><%=a.getMegaVuelo()%></p>
                </td>
                <td>
                    <p><%=a.getMegaPais()%></p>
                </td>
                <td>
                    <p><%=a.getMegaAeropuerto()%></p>
                </td>
                <td>
                    <p><%=a.getMegaFecha()%></p>
                </td>
                <td>
                    <p><%=a.getMegaHora()%></p>
                </td>
                <td>
                    <input type="submit" value="Seleccionar vuelo">
                </td>
                </form>
            </tr>
            <%}%>
        </table>
</html>