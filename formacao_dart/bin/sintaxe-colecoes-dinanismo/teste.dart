import 'dart:io';
import 'dart:math';

void main() {
  // escolherTipoDeConta(TipoDeContas.black);

  Oficina manu1 = Oficina('vw', 'Gol', 2010, 'preto', 'rolamento');
  manu1.functMaintenance();
  // while (true) {
  //   print('Escolha uma opção:');
  //   print('1: Exibir uma saudação');
  //   print('2: Exibir a data e hora atual');
  //   print('3: Calcular o quadrado de um número');
  //   print('4: Calcular a raiz quadrada de um número');
  //   print('5: Encerrar o programa');
  //
  //   String? escolher = stdin.readLineSync();
  //
  //   switch (escolher) {
  //     case '1':
  //       print('Seja bem vindo');
  //       break;
  //     case '2':
  //       print(DateTime.now());
  //       break;
  //
  //     case '3':
  //       print('Digite um número');
  //       double? numero = double.tryParse(stdin.readLineSync() ?? '');
  //       if (numero != null) {
  //         print('O quadradro de $numero é ${numero * numero}');
  //       } else {
  //         print('Entrada inválida!');
  //       }
  //       break;
  //
  //     case '4':
  //       print('Digite um número:');
  //       double? numero = double.tryParse(stdin.readLineSync() ?? '');
  //       if (numero != null) {
  //         print('A raiz quadrada de $numero ${sqrt(numero)}');
  //       } else {
  //         print('Entrada inválida!');
  //       }
  //       break;
  //
  //     case '5':
  //       print('Encerrar o programa!');
  //       return;
  //
  //     default:
  //       print('opção inválida!');
  //   }
  // }
}

void escolherTipoDeConta(TipoDeContas conta) {
  switch (conta) {
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

enum TipoDeContas { poupanca, salario, investimento, black }

class Carro {
  String? marca;
  String? modelo;
  int? ano;
  String? cor;

  Carro(this.marca, this.modelo, this.ano, this.cor);

  functAcelar() {
    print('A cor do $modelo é $cor');
  }
}

class Oficina extends Carro {
  String? peca;

  Oficina(String marca, String modelo, int ano, String cor, this.peca)
      : super(marca, modelo, ano, cor);

  functMaintenance() {
    print('Tem que trocar a $peca do $modelo.');
  }
}
