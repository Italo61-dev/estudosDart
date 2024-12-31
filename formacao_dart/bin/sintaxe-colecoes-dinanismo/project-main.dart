import 'viagem.dart';
import 'transporte.dart';

void main(){
  Viagem viagemMaio = Viagem(locomocao: Transporte.carro);
  print(viagemMaio.consultarTotalLocaisVisitados);
  viagemMaio.visitar('museu');
  print(viagemMaio.consultarTotalLocaisVisitados);
  viagemMaio.alterarLocaisVisitados = 11;
  print(viagemMaio.consultarTotalLocaisVisitados);
}