<%@page import="aeropuerto.Escalas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Compra de boletos</title>
        <link  rel="stylesheet"  href="css/estilos.css">
        <script src='https://www.google.com/recaptcha/api.js'></script>
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
        <%if (xd == null) {%>
        <%=" "%>
        <%} else {%>
        <%=xd%>
        <%}%>
        <h1>
            Tabla de referencia de los datos
        </h1>
        <form action="vuelos.jsp" method="POST">
            <label>Destino del vuelo</label>
            <select name="destino">
                <%
                    for (String a : new Escalas().obtenerEscalasSinRepetir()) {
                %>
                <option value="<%=a%>"><%=a%></option>
                <%}%>
            </select>

            <label>Numero de boletos</label>
            <select name="num">
                <%
                    for (int i = 1; i < 10; i++) {
                %>
                <option value="<%=i%>"><%=i%></option>
                <%}%>
            </select>
            
            <label>Clase</label>
            <select name="clas">
                <option value="eco">Económica</option>
                <option value="pre">Premium Económica</option>
                <option value="eje">Ejecutiva</option>
                <option value="pri">Primera Clase</option>
            </select>
            <div class="g-recaptcha" data-sitekey="6LdqFuAUAAAAAHdwBnYK5FpnCEp7PnwuPY-A4kFa"></div>
            <input type="submit" value="Buscar">
        </form>
        <script type="text/javascript" src="JavaScript/Funciones.js"></script>
    </body>
</html>
