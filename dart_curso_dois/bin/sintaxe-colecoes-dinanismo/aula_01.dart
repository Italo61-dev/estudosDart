void main(){
  escolherMeioTransporte(Transporte.carro);
  escolherMeioTransporte(Transporte.onibus);
  escolherMeioTransporte(Transporte.skate);
  Set <String> resgistroVisitados = <String>{};
}


Set<String> registrarDestinos(String destino, Set<String> registroVisitados){
  resgistroVisitados.add(destino);
  return resgistroVisitados;

}

void escolherMeioTransporte(Transporte locomocao){

  switch (locomocao){
    case Transporte.carro:
      print('Vou de CARRO para aventura!');
      break;
    case Transporte.bike:
      print('Vou de Bike para aventura!');
      break;
    case Transporte.onibus:
      print('Vou de onibus');
      break;
    default:
      print('Estou indo para aventura');
      break;
  }
}

enum Transporte {
  carro,
  bike,
  onibus,
  skate
}

