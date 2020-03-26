<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registrar Persona</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link  rel="stylesheet"  href="css/estilos.css">
        <script src='https://www.google.com/recaptcha/api.js'></script>
        <script type="text/javascript" src="JavaScript/Funciones.js"></script>
    </head>
    <%
        String xd = " ";
        try {
            xd = request.getParameter("error");
        } catch (Exception e) {
            xd = "Error";
        }
    %>
    <body>
        <h1>Registrate</h1>
        <form action="Base/AgregarPersona.jsp" method="post" onsubmit="return validaciones()">
            <div id="error">
                <%if (xd == null) {%>
                <%} else {%>
                <h1 class="error"><%=xd%></h1>
                <%}%>
            </div>
            <label>Nombre:</label>
            <input type="text" name="nombre" id="nombre" placeholder="Ingresa tu nombre" required="required"/>
            <label>Apellidos:</label>
            <input type="text" name="apellido" id="apellido" placeholder="Ingresa tus Apellidos" required="required"/>
            <label>Fecha de nacimiento:</label>
            <input type="date" name="fecha" id="fecha" required="required"/>
            <label>Selecciona tu genero:</label><br>
            <input type="radio" name="genero" value="H" required="required"/>
            <label class="no">Hombre</label><br>
            <input type="radio" name="genero" value="M" required="required"/>
            <label class="no">Mujer</label><br>
            <label>CURP:</label>
            <input type="text" name="curp" id="curp" placeholder="Ingresa tu Curp" required="required"/>
            <label>Correo:</label>
            <input type="text" name="correo" id="correo" placeholder="Ingresa tu Correo" required="required"/>
            <label>Contaseña:</label>
            <input type="password" name="contra" id="contra" placeholder="Ingresa tu Contraseña" required="required"/>
            <label>Confirmar contraseña</label>
            <input type="password" name="confirmar" id="confirmar" placeholder="Ingresa tu Contraseña" required="required"/>
            <div class="g-recaptcha" data-sitekey="6LdqFuAUAAAAAHdwBnYK5FpnCEp7PnwuPY-A4kFa"></div>
            <input type="submit" value="Registrar"/>
        </form>        
    </body>
</html>

