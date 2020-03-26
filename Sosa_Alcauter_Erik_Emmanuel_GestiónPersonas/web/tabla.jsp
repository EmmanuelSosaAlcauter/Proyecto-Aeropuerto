<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Array"%><!--Se hacen las importaciones necesarias para que funcione nuestro jsp -->
<%@page import="java.util.LinkedList"%>
<%@page import="modelo.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabla</title>
    </head>
    <center><body>
            <h1>
                Consulta de datos
            </h1>
            <table border="1">
                <thead>
                    <tr>
                        <td>Id</td>  <!--  Se da formato a la tabla y se asignan sus respectivas columnas-->
                        <td>Nombres</td>
                        <td>Apellidos</td>
                        <td>Curp</td>
                        <td>RFC</td>
                        <td>Estado civil</td>
                        <td>Edad</td>
                    </tr>
                </thead>
                <tbody>
                    <%
                        //Se crea un objeto dentro del for de la clase que queremos llamar incluyendo el metodo que deseamos ejecutar
                        for (Persona p : new Persona().obtenerPersonas()) {
                            //String nombre, String curp, String apellidos, String edo_civil, long id_persona, String rfc
                            System.out.println(p.getId_persona() + p.getNombre() + p.getApellidos() + p.getCurp() + p.getRfc() + p.getEdo_civil());
                             
                    %>
                    <tr>
                        <td><%=p.getId_persona()%></td>
                        <td><%=p.getNombre()%></td>
                        <td><%=p.getApellidos()%></td><!--Se imprimen los datos deseados mediante los getter-->
                        <td><%=p.getCurp()%></td>     <!--Se imprimen de acuerdo al formato ya dado anteriormente-->
                        <td><%=p.getRfc()%></td>
                        <td><%=p.getEdo_civil()%></td>
                        <td><%=p.calcularEdad()%></td>
                    </tr>
                    <%
                    }%>
                </tbody>  
            </table>
        </body></center>
</html>