void main(){
  escolherMeioTransporte(Transporte.carro);
  escolherMeioTransporte(Transporte.onibus);
  escolherMeioTransporte(Transporte.skate);
  escolherTipoDeConta(TipoDeContas.black);
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

void escolherTipoDeConta(TipoDeContas conta){
  switch (conta){
    case TipoDeContas.poupanca:
      print('Sua conta e do tipo POUPANÇA');
      break;
    case TipoDeContas.salario:
      print('Sua conta e do tipo SÁLARIO');
    case TipoDeContas.investimento:
      print('Sua conta e do tipo INVESTIMENTO');
    case TipoDeContas.black:
      print('Sua conta e do tipo BLACK');
    default:
      print('Conta inválida!');
  }
}

enum TipoDeContas {
  poupanca,
  salario,
  investimento,
  black
}
