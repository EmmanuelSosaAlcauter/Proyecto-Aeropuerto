<%@page import="aeropuerto.Avion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css">
        <title>Lista Aviones</title>
    </head>
    <body>
        <h1>Estado de los aviones del aeropuerto</h1>
        <table>
            <tr>
                <td class="encabezado">Num. Avion</td>
                <td class="encabezado">Num. Aerolinea</td>
                <td class="encabezado">Modelo</td>
                <td class="encabezado">Capacidad</td>
                <td class="encabezado">Disponibilidad</td>
            </tr>
            <%
                for (Avion a : new Avion().obtenerAviones()) {
            %>
            <tr>
                <td><%=a.getId_avion()%></td>
                <td><%=a.getId_aerolinea()%></td>
                <td><%=a.getModelo()%></td>
                <td><%=a.getCapacidad()%></td>
                <td><%=a.getDisponibilidad()%></td>
                <%}%>
            </tr> 
        </table>
    </body>
</html>
