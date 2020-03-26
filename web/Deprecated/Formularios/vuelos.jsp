<%@page import="conPostgres.Rutas"%>
<%@page import="conPostgres.Vuelos"%>
<%@page import="conPostgres.Escalas"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Array"%>
<%@page import="java.util.LinkedList"%>
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
                        <td>Num_vuelo</td>
                        <td>Id_avion</td>
                        <td>Id_ruta</td>
                    </tr>
                </thead>
                <tbody>
                    <%

                        for (Vuelos v : new Vuelos().obtenerIdVuelos()) {
                            //String nombre, String curp, String apellidos, String edo_civil, long id_persona, String rfc
                            System.out.println(v.getNum_vuelo() + v.getId_avion() + v.getId_ruta());
                    %>
                    <tr>
                        <td><%=v.getNum_vuelo()%></td>
                        <td><%=v.getId_avion()%></td>
                        <td><%=v.getId_ruta()%></td>
                    </tr>
                    <%
                        }%>
                </tbody> 

            </table>
            <br><br><br><br>
            <table border="1">
                <thead>
                    <tr>
                        <td>Id_ruta</td>
                        <td>Costo por vuelo</td>

                    </tr>
                </thead>
                <tbody>
                    <%

                        for (Rutas r : new Rutas().obtenerRutas()) {
                            //String nombre, String curp, String apellidos, String edo_civil, long id_persona, String rfc
                            System.out.println(r.getId_rutas() + r.getCostoPorVuelo());
                    %>
                    <tr>
                        <td><%=r.getId_rutas()%></td>
                        <td><%=r.getCostoPorVuelo()%></td>
                    </tr>
                    <%
                        }%>
                </tbody>  
            </table>
                <br><br><br><br>
            <table border="1">
                <thead>
                    <tr>
                        <td>Id_escala</td>
                        <td>Pais</td>
                        <td>Aeropuerto</td>
                        <td>Fecha </td>
                        <td>Hora</td>
                    </tr>
                </thead>
                <tbody>
                    <%

                        for (Escalas e : new Escalas().obtenerEscalas()) {
                            //String nombre, String curp, String apellidos, String edo_civil, long id_persona, String rfc
                            System.out.println(e.getId_escala()+e.getPais()+e.getAeropuerto()+e.getFecha()+e.getHora());
                    %>
                    <tr>
                        <td><%=e.getId_escala()%></td>
                        <td><%=e.getPais()%></td>
                        <td><%=e.getAeropuerto()%></td>
                        <td><%=e.getFecha()%></td>
                        <td><%=e.getHora()%></td>
                    </tr>
                    <%
                        }%>
                </tbody>  
            </table>
                <br><br><br><br>
                <a href="boletos.html"><input type="button" name="" value="Comprar boletos"></a>
        </body>
</html>