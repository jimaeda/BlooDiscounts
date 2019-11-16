var coorUser;
var coorHospitals;
var distancias;

//inicia google maps
function initMap(pos) {
  // coordenadas do usuario
  coorUser = new google.maps.LatLng(pos.coords.latitude, pos.coords.longitude);
  var mapOptions = {
    center: coorUser,
    zoom: 10
  };
  //array de distancias entre o usuario e os hospitais
  for(var i = 0;i < coorHospitals.length;i++){
    distancias.push(google.maps.geometry.spherical.computeDistanceBetween(coorUser, coorHospitals[i]));
  }
  distancias.sort();
  // marcadores vermelhos no mapa
  var map = new google.maps.Map(document.getElementById('map'), mapOptions);
  var userMarker = new google.maps.Marker({
    position: coorUser,
    map: map
  });
  var hospitalMarker;
  for(var i = 0; i < distancias.length; i++){
    marker[i] = new google.maps.Marker({
      position: distancias[i],
      map: map
    });
  }
}
//localização do usuario
function getLocation() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(initMap);
  }else {
    alert("Geolocation is not supported by this browser.");
  }
}
//vetor de coordenadas dos hospitais
function tratarDados(obj){
  var lat, lng;
  for(var i = 0; i < obj.length; i++){
    coorHospitals.push(new google.maps.LatLng(obj[i].lattitude, obj[i].longitude));
  }
}
//requisição para pegar as informações dos hospitais
function pegarDadosHopitais(){
  console.log("oi");
  $.ajax({
    url: 'localhost:3000/hospitals/info',
    type:'GET',
    success: function(data){

      var obj = JSON.parse(data);
      tratarDados(obj);
      getLocation();
    }
  });
}
//açoes pra fazer ao carregar a página
document.addEventListener("DOMContentLoaded", function(){
  pegarDadosHopitais();
});
