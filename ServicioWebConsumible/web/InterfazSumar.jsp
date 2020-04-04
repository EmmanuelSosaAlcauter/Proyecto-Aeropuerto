<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center><h1>Servicio Web suma desde JAVA NetBeans IDE 8.2</h1>
        <form name="formu" action="index.jsp" method="POST">
            <p>Selecciona uno</p>
            <select name="opcion">
                <option>......</option>
                <option>Suma</option>
            </select>
            <p>Ingresa el primer número:</p>   <!--Se crean celdas para los número que se ocuparan mas adelante -->
            <input type="text" name="n1" value="0">
            <p>Ingresa el segundo número</p>
            <input type="text" name="n2" value="0"><br>
            <input type="submit" name="Calcular" value="Calcular">  <!--Se crea un boton el cual ejecutara una acción-->
            
        </form></center>
        <%
        String btnCalcular=request.getParameter("Calcular");  //Se extrae el valor del botón Calcular
        if(btnCalcular!=null){  //Se crea una sentencia en la cual si el boton es diferente de nulo entonces entra a la condición
            String n1=request.getParameter("n1");  //Se extrae el valor de Numero 1
            session.setAttribute("no1", n1);
            String n2=request.getParameter("n2");  //Se extrae el valor de Numero 2
            session.setAttribute("no2", n2);
            String op=request.getParameter("opcion");  //Se extrae el valor del option
            session.setAttribute("opc", op);
            response.sendRedirect("ProcesoSumar.jsp");  //Se redirige a la página ProcesoSumar.jsp
        }
        
        %>
    </body>
</html>