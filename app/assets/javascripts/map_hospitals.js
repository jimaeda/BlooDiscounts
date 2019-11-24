var coorUser;
var coorHospitals = [""];
var distancias = [""];
//faz elemento vetor[1] descer até sua posição "certa"
function maxHeap (tamanhoVetor, vetor) {
   var filho = 2;
   var pai;
   while (filho <= tamanhoVetor) {
      if (filho < tamanhoVetor && vetor[filho] < vetor[filho+1]) ++filho;
      // pega o filho de pai(filho/2) com maior elemento
      pai = filho/2;
      if (vetor[pai] >= vetor[filho]) break;
      trocaElementosVetor (pai, filho, vetor);
      trocaElementosVetor (pai, filho, coorHospitals);
      filho = filho*2; //filho do filho
   }
}
// Troca elementos de duas posições de um vetor
function trocaElementosVetor(a,b,vetor){
  var aux = vetor[a];
  vetor[a] = vetor[b];
  vetor[b] = aux;
}
// Rearranja um vetor v[1..tamanhoVetor] de modo a
// transformá-lo em heap
function constroiHeap(tamanhoVetor, vetor){
  for (var i = 1; i < tamanhoVetor; i++) {
    // v[1..i] é um heap
    var elemento = i+1;
    var pai = elemento/2
    while (elemento > 1 && vetor[pai] < vetor[elemento]) {
       trocaElementosVetor (elemento/2, elemento, vetor);
       trocaElementosVetor (elemento/2, elemento, coorHospitals);
       elemento = elemento/2;
     }
   }
}

//heap para ordenar as coordenadas de acordo com a distancia em ordem crescente
function heapsort(vetor){
  constroiHeap (vetor.length, vetor);
   for (var i = vetor.length-1; i >= 2; --i) {
      trocaElementosVetor (1, i, vetor);
      trocaElementosVetor (1, i, coorHospitals);
      maxHeap (i-1, vetor);
   }
}
//inicia google maps
function initMap(pos) {
  // coordenadas do usuario
  coorUser = new google.maps.LatLng(pos.coords.latitude, pos.coords.longitude);
  var mapOptions = {
    center: coorUser,
    zoom: 12
  };
  //array de distancias entre o usuario e os hospitais
  for(var i = 1;i < coorHospitals.length;i++){
    distancias.push(google.maps.geometry.spherical.computeDistanceBetween(coorUser, coorHospitals[i]));
  }
  // ordena as distancias
  heapsort(distancias);
  // marcadores vermelhos no mapa para os endereços
  var map = new google.maps.Map(document.getElementById('map'), mapOptions);
  var userMarker = new google.maps.Marker({
    position: coorUser,
    map: map
  });
  var hospitalMarker = [];
  var distanciaMaxima = 3000.0
  for(var i = 1; distancias[i] < distanciaMaxima && i < coorHospitals.length; i++){
    hospitalMarker.push(new google.maps.Marker({
      position: coorHospitals[i],
      map: map
    }));
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
function addCoorHospitals(obj){
  var lat, lng;
  for(var i = 0; i < obj.length; i++){
    coorHospitals.push(new google.maps.LatLng(obj[i].lattitude, obj[i].longitude));
  }
}
//requisição para pegar as informações dos hospitais
function pegarDadosHopitais(/*data*/){
  return $.ajax({
    url: '/hospitals/info',
    type:'GET',
    success: function(data){
      /*var obj;
      console.log("antes de parse: ", data);
      obj = JSON.parse(data);
      console.log("depois de parse: ", obj);
      addCoorHospitals(obj);
      getLocation();*/
    }
  }
  );
}
function mainMapa(){
  var data;
  $.when(pegarDadosHopitais(data)).done(
    function(data){
      addCoorHospitals(data);
      getLocation();
    }
  );
}
//açoes pra fazer ao carregar a página
document.addEventListener("DOMContentLoaded", function(){
  mainMapa();
  //pegarDadosHopitais();
});
