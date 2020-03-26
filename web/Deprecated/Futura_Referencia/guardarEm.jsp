<%@page import="aeropuerto.Empleados"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        String cargo = request.getParameter("g");
        Double sueldo = Double.valueOf(request.getParameter("s"));
        Empleados i = new Empleados();
        i.setCargo(cargo);
        i.setSaldo(sueldo);
        i.agregarEm();
    %>
    <body>
        <h1>Datos registrado</h1>
    </body>
</html>
