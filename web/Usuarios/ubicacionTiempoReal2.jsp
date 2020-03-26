<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?v3"></script>
    </head>
    <body>
        <h1>Mi ubicación</h1>
        <div id="mapa" style="width: 700px;height:500px;">
        </div>
        
        <script type="text/javascript">
            //NAMESPACE google.maps.algo
            var divMapa =document.getElementById("mapa");
            navigator.geolocation.getCurrentPosition(funcion_correcta,funicion_erronea);
            function funicion_erronea () {}
            function funcion_correcta ( rta ){
                var latitud = rta.coords.latitude;
                var longitud = rta.coords.longitude;
                
                var gLatLon = new google.maps.LatLng (latitud , longitud);
                var mapaDiv = {
                    zoom:13,
                    center: gLatLon
                 };
                var gMapa = new google.maps.Map(divMapa,mapaDiv);
                
                //MARKER
                var objConfigMarker ={
                    position:gLatLon,
                    map:gMapa,
                    title:"Tu ubicacion es"
                };
                var gMarker = new google.maps.Marker(objConfigMarker);
                
                /*var AEROPUERTO ={
                    position: {lat: 19.4360762, lng: -99.074097},
                    map: gMapa,
                    title: 'GYM'
                };
                var gMarkerGYM = new google.maps.Marker(AEROPUERTO);
                
                var objHTML={
                    content:'<div style="height:150:px;width:300px"><h2>GYM</h2>\n\
                    <h3>Bienvenido Abierto de 8:00 a 21:00</h3></div>'
                };
                var gIW = new google.maps.InfoWindow(objHTML);
                google.maps.event.addListener(gMarkerGYM,'click',function (){
                    gIW.open(gMapa, gMarkerGYM);
                });
                var objConfigDR={
                  map:gMapa  
                };
                
                var objConfiDS={
                  origin: gLatLon,
                  destination:19.4360762 -99.074097,//coor GYM
                  travelMode: google.maps.TravelMode.DRIVING
                };
                var ds= new google.maps.DirectionsService();//obtener coor
                
                var dr= new google.maps.DirectionsRender(objConfigDR);//traducir coor
                
                ds.route(objConfigDS, fnRutear);
                function fnRutear(resultados, status){
                    //Mostrar el camino
                    if ( status.equals('OK')){
                        dr.setDirections(resultados);
                    }
                }*/
            }
            
        </script>
        
    </body>
</html>
