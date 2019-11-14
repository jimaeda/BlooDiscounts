var posicao;
var geocoder = null;
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
  //geocoder = new google.maps.Geocoder();
  // coordenadas
  posicao = pos;
  var myCoords = new google.maps.LatLng(posicao.coords.latitude, posicao.coords.longitude);
  var mapOptions = {
    center: myCoords,
    zoom: 16
  };
  // marcador vermelho no mapa
  var map = new google.maps.Map(document.getElementById('map'), mapOptions);
  var marker = new google.maps.Marker({
    position: myCoords,
    map: map
  });
}
document.addEventListener("DOMContentLoaded", function(){
  getLocation();
});
