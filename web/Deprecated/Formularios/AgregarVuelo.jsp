<%@page import="aeropuerto.Vuelos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingresar aerolinea nueva</title>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <h1>Registrar nueva aerolinea en el sistema</h1>
        <form action="guardarVuelo.jsp" method="POST">
            <label>Número de avion</label>
            <input type="text" placeholder="1" name="avion">
            <label>Número de escala</label>
            <input type="text" placeholder="2" name="numEs">
            <label>Cantidad de escalas</label>
            <input type="text" placeholder="3" name="esc">
            <label>Origen del vuelo</label>
            <input type="text" placeholder="México" name="origen">
            <label>Fecha de partida</label>
            <input type="date" name="partFec">
            <label>Fecha de llegada</label>
            <input type="date" name="llegFec">
            <label>Hora de partida</label>
            <input type="time" name="partHor">
            <label>Hora de llegada</label>
            <input type="time" name="llegHor">
            <label>Costo del vuelo</label>
            <input type="text" name="costo">
            <input type="submit" value="Guardar">
        </form>
    </body>
</html>
