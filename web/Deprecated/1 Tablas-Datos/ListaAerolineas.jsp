<%@page import="aeropuerto.Aerolinea"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css">
        <title>Lista Aerolineas</title>
    </head>
    <body>
        <h1>Aerolineas del aeropuerto</h1>
        <table>
            <tr>
                <td class="encabezado">Num. Aerolinea</td>
                <td class="encabezado">Nombre de la aerolinea</td>
                <td class="encabezado">RFC</td>
            </tr>
            <%
                for (Aerolinea a : new Aerolinea().obtenerAerolineas()) {
            %>
            <tr>
                <td><%=a.getId_aerolinea()%></td>
                <td><%=a.getNombre()%></td>
                <td><%=a.getRfc()%></td>
                
            </tr>
            <%}%>
        </table>
    </body>
</html>
