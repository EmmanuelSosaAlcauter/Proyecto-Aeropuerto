<html>
	<head>
		<title> Geolocalizaci&oacute;n  </title>
		
		<!-- Script para mostrar las coordenadas-->
		<script type="text/javascript">
			if (navigator.geolocation) { //Validar si hay acceso web a la ubicaci�n
				navigator.geolocation.getCurrentPosition(mostrarUbicacion); //Obtiene la posici�n
				} else {
				alert("�Error! Este navegador no soporta la Geolocalizaci�n.");
			}
			
			//Funcion para obtener latitud y longitud
			function mostrarUbicacion(position) {
				var latitud = position.coords.latitude; //Obtener latitud
				var longitud = position.coords.longitude; //Obtener longitud
				var div = document.getElementById("coordenadas");
				div.innerHTML = "<br>Latitud: " + latitud + "<br>Longitud: " + longitud; //Imprime latitud y longitud
			}		
		</script>
		
	</head>
	<body>
		
		<!-- Divisi�n o secciona para mostrar coordenadas -->
		<div id='coordenadas'></div> 
		
	</body>
</html>