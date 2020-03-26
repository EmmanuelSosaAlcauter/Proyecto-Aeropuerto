 <html>
	<head>
		<title> Ubicaci�n  </title>
		
		<!-- Carga API de google maps -->
		<script src="http://maps.google.com/maps/api/js?sensor=false"></script>
		
		<script type="text/javascript">
			var x=document.getElementById("errores");
			
			navigator.geolocation.getCurrentPosition(mostrarPosicion,showError); //Obtiene la posici�n
			
			function mostrarPosicion(position)
			{
				lat=position.coords.latitude; //Obtener latitud
				lon=position.coords.longitude; //Obtener longitud
				latlon=new google.maps.LatLng(lat, lon); //Crear objeto que representa un punto geogr�fico
				divmapa=document.getElementById('mapa');
				divmapa.style.height='500px'; //Alto
				divmapa.style.width='700px'; //Ancho
				
				<!-- Opciones para el mapa-->
				var myOptions={
					center:latlon,zoom:10, //Zoom
					mapTypeId:google.maps.MapTypeId.ROADMAP, //Tipo de mapa
					mapTypeControl:false, //Deshabilita el control de tipo de mapa
					navigationControlOptions:{ style:google.maps.NavigationControlStyle.SMALL } //Aspecto peque�o
				};
				var map=new google.maps.Map(document.getElementById("mapa"),myOptions); //Funcion que crea un mapa en la div .
				var marker=new google.maps.Marker({position:latlon,map:map,title:"Est�s aqu�!"}); //Constructor para crear marcador de la posici�n
			}
			
			<!-- Funcion para mostrar errores  -->
			function showError(error)
			{
				switch(error.code) 
				{
					case error.PERMISSION_DENIED:
					x.innerHTML="Denegada la peticion de Geolocalizaci�n en el navegador."
					break;
					case error.POSITION_UNAVAILABLE:
					x.innerHTML="La informaci�n de la localizaci�n no esta disponible."
					break;
					case error.TIMEOUT:
					x.innerHTML="El tiempo de petici�n ha expirado."
					break;
					case error.UNKNOWN_ERROR:
					x.innerHTML="Ha ocurrido un error desconocido."
					break;
				}
			}
		</script>
	</head>
	
	<body>
		
		<!-- Divisi�n o secciona para mostrar errores -->
        <center><div id="errores"></div>
		
		<!-- Divisi�n o secciona para mostrar mapa -->
		<div id="mapa"></div></center>
		
	</body>
</html>