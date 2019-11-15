var coorUser;
var coorHospitals;
var distancias;
//array de coordenadas dos hospitais
function addDistance(coor){
  coorHospitals.push(coor);
}
//localização do usuario
function getLocation() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(initMap);
  }else {
    alert("Geolocation is not supported by this browser.");
  }
}
//inicia google maps
function initMap(pos) {
  // coordenadas do usuario
  coorUser = new google.maps.LatLng(pos.coords.latitude, pos.coords.longitude);
  var mapOptions = {
    center: coorUser,
    zoom: 16
  };
  //array de distancias
  for(var i = 0;i < coorHospitals.length;i++){
    distancias.push(google.maps.geometry.spherical.computeDistanceBetween(coorUser, coorHospitals[i]));
  }
  distancias.sort();
  // marcadores vermelhos no mapa
  var map = new google.maps.Map(document.getElementById('map'), mapOptions);
  var marker;
  marker[i] = new google.maps.Marker({
    position: coorUser,
    map: map
  });
  for(var i = 0;i < distancias.length;i++){
    marker[i] = new google.maps.Marker({
      position: distancias[i],
      map: map
    });
  }
}
//açoes pra fazer ao carregar a página
document.addEventListener("DOMContentLoaded", function(){
  getLocation();
});
