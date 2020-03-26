<%@page import="aeropuerto.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link  rel="stylesheet"  href="css/menu.css">
        <link rel="stylesheet" href="css/fontello.css">
        <title>Persona</title>
    </head>
    <%
        String nombre = request.getParameter("n");
        String ap = request.getParameter("a");
        String curp = request.getParameter("c");
        String correo = request.getParameter("correo");
        String contra = request.getParameter("pass");
        Persona i = new Persona();
        i.setNombre(nombre);
        i.setApellidos(ap);
        i.setCurp(curp);
        i.setCorreo(correo);
        i.setContra(contra);
        i.registrarPersona();
     %>
    <body>
        <h1>Por favor espera mientras eres redirigido</h1>
        <%response.sendRedirect("sesion.jsp");%>
    </body>
</html>
