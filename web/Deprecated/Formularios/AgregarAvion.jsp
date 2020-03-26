<%@page import="aeropuerto.Aerolinea"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingresar avión nuevos</title>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <h1>Registrarse nuevo avión en el sistema</h1>
        <form action="guardarAvion.jsp" method="POST">
            <label>Aerolinea </label>
            <select name="aerol">
                <%
                    for (Aerolinea a : new Aerolinea().obtenerAerolineas()) {
                %>
                <option value="<%=a.getNombre()%>"><%=a.getNombre()%></option>
                <%}%>
            </select>
            <label>Modelo del avión</label>
            <input type="text" placeholder="BOEING 404" name="model">
            <label>Capacidad (personas)</label>
            <input type="text" placeholder="10,000" name="capac">
            <input type="submit" value="Guardar">
        </form>
    </body>
</html>