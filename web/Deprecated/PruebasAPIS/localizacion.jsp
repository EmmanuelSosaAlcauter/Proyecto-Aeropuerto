<%-- 
    Document   : Localizacion
    Created on : 10/03/2020, 11:36:38 AM
    Author     : LuisAngel
AIzaSyDQ4MrZAfP3u1V29TeT_AyFYCDsjVPvozM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <script type='text/javascript' src='https://maps.googleapis.com/maps/api/js?key=AIzaSyCe30oLPh7uH3vWngw96bjZ0HLPq51Byf8'></script>
    </body>
</html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>geolocalizacion</title>
  <script src="bower_components/webcomponentsjs/webcomponents-lite.min.js"></script>
  <link rel="import" href="bower_components/google-map/google-map.html">
  <link rel="import" href="bower_components/google-map/google-map-marker.html">
  <style>
    google-map {
      height: 400px;
    }
  </style>
</head>
<body>
  <google-map id="mapa" latitude="0" longitude="0" fit-to-markers></google-map>
  <script>
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(function(position) {
        var marca = document.createElement('google-map-marker');
        marca.setAttribute('latitude', position.coords.latitude);
        marca.setAttribute('longitude', position.coords.longitude);
        marca.setAttribute('title', 'Estás aquí');
        Polymer.dom(document.getElementById('mapa')).appendChild(marca);
      });
    } else {
      alert("Navegador no compatible con geolocalización")
    }
  </script>
</body>
</html>-->

<!DOCTYPE html>
<html>
    <head> 
        <meta charset="UTF-8">
        <meta name="viewport" content="initial-scale=1.0">
        <title>Maps JavaScript API</title>
        <style> 
            #map {
                height: 100%;
            }

            html, body {
                height: 100%;
                margin: 0;
                padding: 0;
            }
        </style> 
    </head>  
    <body>
        <div id ="map"> </div> 
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBCKiIqCdZGrVxx06LSbe7uG3zXOq1Cz5k&callback=initMap" async defer></script>
        <script>
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(function (position) {
                    var marca = document.createElement('google-map-marker');
                    marca.setAttribute('latitude', position.coords.latitude);
                    marca.setAttribute('longitude', position.coords.longitude);
                    marca.setAttribute('title', 'Usted esta au');
                    Polymer.dom(document.getElementById('mapa')).appendChild(marca);
                });
            } else {
                alert("Navegador no compatible con geolocalización");
            }

        </script>
        <script>

            var map;
            function initMap() {
                function mostrarUbicacion(position) {
                    var latitud = position.coords.latitude; //Obtener latitud
                    var longitud = position.coords.longitude; //Obtener longitud
                    var div = document.getElementById("coordenadas");
                    //div.innerHTML = "<br>Latitud: " + latitud + "<br>Longitud: " + longitud; //Imprime latitud y longitud
                

                map = new google.maps.Map(document.getElementById('map'), {
                    center: {lat: latitud, lng: longitud},
                    zoom: 13,
                });
                //var marker = new google.maps.Marker({
                  //  position: {lat: 19.645148, lng: -98.995745},
                    //map: map,
                    //title: 'GYM'
                //});
            }
        }
        </script>

    </body> 
</html>
