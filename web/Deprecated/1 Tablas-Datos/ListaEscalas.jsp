<%@page import="aeropuerto.Escalas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Escalas</title>
    </head>
    <body>
        <h1>
            Consulta de datos de las Escalas
        </h1>
        <table border="1">
            <thead>
                <tr>
                    <td>Num escala</td>
                    <td>Ubicacion</td>
                    <td>Aeropuerto</td>
                </tr>
            </thead>
            <tbody>
                <%
                    for (Escalas p : new Escalas().obtenerEscalas()) {
                %>
                <tr>
                    <td><%=p.getId_escala()%></td>
                    <td><%=p.getLugar()%></td>
                    <td><%=p.getAeropuerto()%></td>
                </tr>
                <%}%>
            </tbody>  
        </table>
    </body>
</html>