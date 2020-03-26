<%@page import="aeropuerto.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Personas</title>
    </head>
    <body>
        <h1>
            Consulta de datos de las personas
        </h1>
        <table>
            <thead>
                <tr>
                    <td>Num. Persona</td>
                    <td>Nombre</td>
                    <td>Apellidos</td>
                    <td>CURP</td>
                    <!--Añadir los demas campos derivados de la curp-->
                </tr>
            </thead>
            <tbody>
                <%
                    for (Persona p : new Persona().obtenerPersonas()) {
                %>
                <tr>
                    <td><%=p.getId_persona()%></td>
                    <td><%=p.getNombre()%></td>
                    <td><%=p.getApellidos()%></td>
                    <td><%=p.getCurp()%></td>
                </tr>
                <%}%>
            </tbody>  
        </table>
    </body>
</html>