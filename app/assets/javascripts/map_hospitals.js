var coorUser;
var coorHospitals = [""];
var distancias = [""];
function peneira (tamanho, vetor) {
   var filho = 2;
   var pai;
   while (filho <= tamanho) {
      if (filho < tamanho && vetor[filho] < vetor[filho+1]) ++filho;
      // f é o filho mais valioso de f/2
      pai = filho/2;
      if (vetor[pai] >= vetor[filho]) break;
      troca (pai, filho, vetor);
      troca (pai, filho, coorHospitals);
      filho = filho*2;//filho do filho
   }
}
//troca 2 posições
function troca(a,b,vetor){
  var aux = vetor[a];
  vetor[a] = vetor[b];
  vetor[b] = aux;
}
//troca pais menores que os filhos
function constroiHeap(tamanho, vetor){
  var aux;
  for (var i = 1; i < tamanho; i++) {
    // v[1..k] é um heap
    var elemento = i+1;
    var pai = elemento/2
    while (elemento > 1 && vetor[pai] < vetor[elemento]) {  // 5
       troca (elemento/2, elemento, vetor);          // 6
       troca (elemento/2, elemento, coorHospitals);
       console.log("constroiHeap: ", vetor);console.log("teste");
       elemento = elemento/2;                        //xxx 7
     }
   }
}

//heap para ordenar as coordenadas de acordo com a distancia
function heapsort(tamanho, vetor){
  constroiHeap (tamanho, vetor);
   for (var i = tamanho-1; i >= 2; --i) {
      troca (1, i, vetor);
      troca (1, i, coorHospitals);
      peneira (i-1, vetor);
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

  heapsort(distancias.length,distancias);
  console.log("sorted: ", distancias);
  // marcadores vermelhos no mapa
  var map = new google.maps.Map(document.getElementById('map'), mapOptions);
  var userMarker = new google.maps.Marker({
    position: coorUser,
    map: map
  });
  console.log("teste");
  var hospitalMarker = [];
  var km = 3000.0
  for(var i = 1; distancias[i] < km && i < coorHospitals.length; i++){
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
function tratarDados(obj){
  var lat, lng;
  for(var i = 0; i < obj.length; i++){
    coorHospitals.push(new google.maps.LatLng(obj[i].lattitude, obj[i].longitude));
  }
  console.log("tratar dados: ", coorHospitals);
}
//requisição para pegar as informações dos hospitais
function pegarDadosHopitais(){
  $.ajax({
    url: '/hospitals/info',
    type:'GET',
    success: function(data){
      var obj;
      obj = JSON.parse(JSON.stringify(data));
      tratarDados(obj);
      getLocation();
    }
  }
  );
}
//açoes pra fazer ao carregar a página
document.addEventListener("DOMContentLoaded", function(){
  pegarDadosHopitais();
});
