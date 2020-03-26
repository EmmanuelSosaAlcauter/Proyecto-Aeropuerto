<%@page import="aeropuerto.Vuelos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css">
        <title>Lista de Vuelos</title>
    </head>
    <body>
        <h1>Vuelos disponibles</h1>
        <table>
            <tr>
                <td class="encabezado">Num. Vuelo</td>
                <td class="encabezado">Num. Avion</td>
                <td class="encabezado">Ruta</td>
                <td class="encabezado">costo total del vuelo</td>
            </tr>
            <%
                for (Vuelos a : new Vuelos().obtenerVuelos()) {
            %>
            <tr>
                <td><%=a.getNum_vuelo()%></td>
                <td><%=a.getId_avion()%></td>
                <td><%=a.getId_ruta()%></td>
                <td><%=a.getCostoPorVuelo()%></td>
                <%}%>
            </tr> 
        </table>
    </body>
</html>