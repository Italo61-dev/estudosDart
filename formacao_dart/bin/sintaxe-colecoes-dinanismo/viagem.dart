import 'transporte.dart';

class Viagem{
  static String codigoTrabalho = "DJNADS12";
  double dinheiro = 0;
  Transporte locomocao;
  Set<String> registrosVisitados = <String>{};
  Map<String, dynamic> registrarPrecos = {};

  int _totalLocalVisitados = 0;

  Viagem({required this.locomocao});

  printCodigo(){
    print(codigoTrabalho);
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

  void visitar(String localVisita){
    registrosVisitados.add(localVisita);
    _totalLocalVisitados += 1;
  }

  voidregistrarPrecoVisita(String local, dynamic preco){
    registrarPrecos[local] = preco;
  }

  int get consultarTotalLocaisVisitados{
    return _totalLocalVisitados;
  }

  void set alterarLocaisVisitados(int novaQnt){
    if(novaQnt < 10){ 
      _totalLocalVisitados = novaQnt;
    } else{
      print('Não é possível!');
    }
  }
}