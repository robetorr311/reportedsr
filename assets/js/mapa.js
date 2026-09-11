let map;
async function init() {
    // Import the needed libraries
    const { Map } = await google.maps.importLibrary('maps','marker');
    const [{ AdvancedMarkerElement }] = await Promise.all([
        google.maps.importLibrary('marker'),
        google.maps.importLibrary('maps'),
        google.maps.importLibrary('search'),
    ]);
    // Create a new map from the div with id="map".
    map = new Map(document.getElementById('map'), {
        center: {lat: 10.270399, lng: -67.582848},
        zoom: 10,
        renderingType: 'VECTOR',
        mapId: 'DEMO_MAP_ID',
    });

    const marker = new google.maps.marker.AdvancedMarkerElement({
       map,
       position: {lat: 10.270399, lng: -67.582848},
    });

    map.addListener("click", (mapsMouseEvent) => {
        // Get the LatLng object
        const latLng = mapsMouseEvent.latLng;

        // Extract the individual coordinates
        const latitude = latLng.lat();
        const longitude = latLng.lng();
        const infoWindow = new google.maps.InfoWindow({
            content: '<div><h3>Seguimiento de Actividades!</h3><form id="locationForm" method="POST" action="'+ base_url + '/Inicio/guardar"><div class="row justify-content-center" style="padding-bottom:10px;"><div class="col">Nombre de la institucion<br><input type="text" name="nombre" class="form-control"></div></div><div class="row justify-content-center" style="padding-bottom:10px;"><div class="col">Tipo de institución: <input type="radio" id="tipo1" name="tipo" value="1"> Pública <input type="radio" id="tipo2" name="tipo" value="2"> Privada <br></div></div><div class="row justify-content-center" style="padding-bottom:10px;"><div class="col">Daños Estructurales: <input type="radio" id="danos1" name="danos" value="1"> Si <input type="radio" id="danos2" name="danos" value="0"> No <br></div></div><div class="row justify-content-center" style="padding-bottom:10px;"><div class="col">Operativo: <input type="radio" id="operativo1" name="operativo" value="1"> Si <input type="radio" id="operativo2" name="operativo" value="0"> No <br></div></div><div class="row justify-content-center" style="padding-bottom:10px;"><div class="col">Evaluación Radiométrica: <input type="radio" id="evaluacion1" name="evaluacion" value="1"> Si <input type="radio" id="evaluacion2" name="evaluacion" value="0"> No <br></div></div><div class="row justify-content-center" style="padding-bottom:10px;"><div class="col">Control de calidad diario: <input type="radio" id="control1" name="control" value="1"> Si <input type="radio" id="control2" name="control" value="0"> No <br></div></div><div class="row justify-content-center" style="padding-bottom:10px;"><div class="col">Calibración: <input type="radio" id="calibracion1" name="calibracion" value="1"> Si <input type="radio" id="calibracion2" name="calibracion" value="0"> No <br></div></div><div class="row justify-content-center" style="padding-bottom:10px;"><div class="col">Fuentes en Deshuso: <input type="radio" id="fuentes1" name="fuentes" value="1"> Si <input type="radio" id="fuentes2" name="fuentes" value="0"> No <br></div></div><div class="row justify-content-center" style="padding-bottom:10px;"><div class="col">Dosimetría: <input type="radio" id="dosimetria1" name="dosimetria" value="1"> Si <input type="radio" id="dosimetria1" name="dosimetria" value="0"> No <br></div></div><input type="hidden" name="latitud" value="'+latitude+'"><input type="hidden" name="longitud" value="'+longitude+'"><p>Latitude:' + latitude + ',' + 'Longitude:'+ longitude +'</p><button type="submit" id="markerbutton" class="btn btn-primary btn-sm">Guardar</button></form></div>',
            ariaLabel: "Formulario"
        });
        const marker = new google.maps.marker.AdvancedMarkerElement({
           map,
           position: {lat: latitude, lng: longitude},
        });
        marker.addListener('click', () => {
            infoWindow.open({
                anchor: marker,
                map: map,
                shouldFocus: false,
            });
        });     
    });
    $.ajax({
        url:  base_url + '/Inicio/load',
        type: 'POST',
        async: false,
        data: { },
        success: function(respuesta) {
            let instituciones=respuesta.instituciones;
            let contenido='<div><h3>Info</h3></div>';
            $.each(instituciones,function(i,v){
                console.log(idsesion);
                if(idsesion==0){
                   contenido='<div><h3>Info</h3>'+v.nombre+'</div>'; 
                }
                else{
                   contenido='<div><h3>Info</h3><a type="button" href="'+ base_url + '/Formulario/index?idreporte='+v.id+'" target="blank" class="btn btn-primary btn-sm">Editar</a></div>';

                }
                const marker = new google.maps.marker.AdvancedMarkerElement({
                   map,
                   position: {lat: Number.parseFloat(v.latitud), lng: Number.parseFloat(v.longitud)},
                   title: v.nombre,
                   gmpClickable:true,
                });
                const infoWindow2 = new google.maps.InfoWindow({
                    content: contenido,
                    ariaLabel: "Detalles de la institucion"
                });
                marker.addEventListener("gmp-click",() => {
                    infoWindow2.open({
                       anchor: marker,
                       map: map,
                    });
                });
            });
        } 
    });


}
void init();