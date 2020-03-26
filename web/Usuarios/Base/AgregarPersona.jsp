<%@page import="java.util.Stack"%>
<%@page import="conPostgres.Validaciones"%>
<%@page import="aeropuerto.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        String error = "";
        try {
            String nombre = request.getParameter("nombre");
            String ap = request.getParameter("apellido");
            String curp = request.getParameter("curp");
            String correo = request.getParameter("correo");
            String contra = request.getParameter("contra");
            String confir = request.getParameter("confirmar");
            String fecha = request.getParameter("fecha");
            String genero = "";
            if (request.getParameter("genero").equals("H")) {
                genero = "H";
            } else if (request.getParameter("genero").equals("M")) {
                genero = "M";
            } else {
                error = "Porfavor seleccione un genero valido";
            }

            Persona i = new Persona();
            i.setNombre(nombre);
            i.setApellidos(ap);
            i.setCurp(curp.toUpperCase());
            i.setCorreo(correo);
            i.setContra(contra);

            Validaciones val = new Validaciones();
            Stack<String> xd = val.validar(i, confir, fecha, genero);

            if (xd.size() == 0) {
                i.registrarPersona();
            } else {
                error = xd.peek();
            }
        } catch (java.lang.NullPointerException e) {
            error = "Ocurrio un error, intentalo de nuevo";
        }

    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link  rel="stylesheet"  href="css/estilos.css">
        <title>Persona</title>
        <script type="text/javascript">
            function subir() {
                document.getElementById("holi").submit();
            }
        </script>
    </head>
    <body onload="subir()">
        <h1>Espere mientras es redirigido...</h1>
        <%if (error.length() > 1) {%>
        <form action="../registrar.jsp" method="POST" id="holi">
            <input type="hidden" value="<%=error%>" name="error">
            Si no es redirigido haga clic en el botón
            <input type="submit" value="Redirigir">
        </form>
        <%} else {%>
        <form action="../sesion.jsp" method="POST" id="holi">
            <input type="hidden" value="<%=error%>" name="error">
            Si no es redirigido haga clic en el botón
            <input type="submit" value="Redirigir">
        </form>
        <%}%>
    </body>
</html>
