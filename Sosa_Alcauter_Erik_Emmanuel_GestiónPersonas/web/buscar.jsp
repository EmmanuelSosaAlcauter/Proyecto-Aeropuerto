<%@page import="modelo.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Buscar</title>
        <%
            //Crear proyecto con fuetes existentes
            String curp = request.getParameter("txtcurp");
            Persona personita = new Persona();  //Se crea un objeto 
            personita.setCurp(curp);            //Mediante los objetos mandar a llamar
            personita.obtenerPersonabyCurp();
            %>
        
    </head>
    <body>
        <h1>Hola <%=personita.getNombre()%></h1>
            
    </body>
</html>
