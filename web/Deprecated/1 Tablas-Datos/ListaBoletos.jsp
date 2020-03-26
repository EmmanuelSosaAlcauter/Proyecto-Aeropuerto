<%@page import="aeropuerto.Boletos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css">
        <title>Boletos</title>
    </head>
    <body>
        <h1>Boletos del vuelo</h1>
        <table>
            <tr>
                <td class="encabezado">Num. Boleto</td>
                <td class="encabezado">Num. Vuelo</td>
                <td class="encabezado">Empleado</td> <!--Buscar traer nombre no Id-->
                <td class="encabezado">Usuario</td> <!--Buscar traer nombre no Id-->
                <td class="encabezado">Clase</td>
                <td class="encabezado">Precio unitario</td>
                <td class="encabezado">Num. Maletas</td>
            </tr>
            <%
                for (Boletos a : new Boletos().obtenerBoletos()) {
            %>
            <tr>
                <td><%=a.getId_boletos()%></td>
                <td><%=a.getNum_vuelos()%></td>
                <td><%=a.getAsiento()%></td>
                <td><%=a.getId_empleado()%></td>
                <td><%=a.getId_usuario()%></td>
                <td><%=a.getClase()%></td>
                <td><%=a.getPrecio()%></td>
                <td><%=a.getNumMaletas()%></td>
                <%}%>
            </tr> 
        </table>
    </body>
</html>