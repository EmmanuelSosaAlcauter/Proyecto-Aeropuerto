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
        <form action="guardarAerolinea.jsp" method="POST">
            <label>Nombre de la aerolinea</label>
            <input type="text" placeholder="Aerolinea" name="nomb">
            <label>RFC de la aerolinea</label>
            <input type="text" placeholder="RFC" name="rfc">
            <input type="submit" value="Guardar">
        </form>
    </body>
</html>
