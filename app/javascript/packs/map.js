import GMaps from 'gmaps/gmaps.js';

function initMap(parent) {
  if (parent) { // don't try to build a map if there's no div#map to inject in
    const mapElement = document.createElement('div')
    parent.innerHTML = ''
    parent.appendChild(mapElement)

    const map = new GMaps({ el: mapElement, lat: 0, lng: 0, height: '600px',
      width: '100%'
    });

    const markers = JSON.parse(parent.dataset.markers);
    // const polylines = JSON.parse(mapElement.dataset.polylines);
    map.addMarkers(markers);
    // map.addPolylines(polylines);
    if (markers.length === 0) {
      map.setZoom(2);
    } else if (markers.length === 1) {
      map.setCenter(markers[0].lat, markers[0].lng);
      map.setZoom(14);
    } else {
      map.fitLatLngBounds(markers);
    }
    window.googleMap = map
  }
}

window.initMap = initMap

// function initMap() {
//   var map = new google.maps.Map(document.getElementById('map'), {
//     zoom: 3,
//     center: {lat: 0, lng: -180},
//     mapTypeId: 'terrain'
//   });

//   var flightPlanCoordinates = [
//     {lat: 37.772, lng: -122.214},
//     {lat: 21.291, lng: -157.821},
//     {lat: -18.142, lng: 178.431},
//     {lat: -27.467, lng: 153.027}
//   ];
//   var flightPath = new google.maps.Polyline({
//     path: flightPlanCoordinates,
//     geodesic: true,
//     strokeColor: '#FF0000',
//     strokeOpacity: 1.0,
//     strokeWeight: 2
//   });

//   flightPath.setMap(map);
// }
