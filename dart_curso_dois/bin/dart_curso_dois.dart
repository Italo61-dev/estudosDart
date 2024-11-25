void main() {
  String nome = 'Laranja';
  double peso = 100.2;
  String cor = 'Verde e Amarela';
  String sabor = 'Doce e cítrica';
  int diasDesdeDeColheita = 40;
  bool isMadura = functEstaMadura(diasDesdeDeColheita);

  // mostraMadura('Uva', 40, cor: 'roxa');
  // Frutas fruta01 = Frutas('Uva', 10.2, 'roxa', 'doce', 10);
  // print(fruta01.cor);
  // fruta01.estaMadura(30);
  Legumes mandioca = Legumes('Macaxeira', 1200, 'Marron', true);
  Frutas banana1 = Frutas('Banana', 75, 'Amarela', 'Doce', 12);
  Nozes macadamia1 = Nozes('Macadamina', 2, 'Branco Amarelado', 'doce', 20, 35);
  Citricas limao1 = Citricas('Limão', 50, 'verde', 'azedo', 5, 9);

  mandioca.printAlimento();
  banana1.printAlimento();
  macadamia1.printAlimento();
  limao1.printAlimento();
}

/// Posicionais Obrigatórios
// São a ordem certa dos aguamentos, não posso colocar, a Uva, depois do 40, pois ela foi declarada no parâmetro primeiro o nome.

/// Nomeados Opcionais
// são as variáveis entre o conchetes {String? cor}, elas não são obrigatória na invocação da função.

/// Parâmetros 'Padrão'
// são o valor atribuído ao nomeados, come se fosse uma variável ex: {String cor = sem cor}, isso vai ficar padrão. caso você não preencha a cor na invocação.

/// Modificador 'required'
// Deixa o nomeado opcional, obrigatório, e se você não colocar a cor, o código irá da erro. ex: {required String cor}.

void mostraMadura(String nome, int dias, {String? cor}) {
  if (dias >= 30) {
    print('A $nome está madura');
  } else {
    print('A $nome não está madura');
  }
  if (cor != null) {
    print('A $nome é $cor');
  }
}

bool functEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}

class Alimentos {
  String nome;
  double peso;
  String cor;

  Alimentos(this.nome, this.peso, this.cor);

  void printAlimento() {
    print('Este(a) é $nome e pesa $peso e é $cor');
  }
}

class Frutas extends Alimentos {
  String sabor;
  int diasDesdeDeColheita;
  bool? isMadura;

  Frutas(String nome, double peso, String cor, this.sabor,
      this.diasDesdeDeColheita,
      {this.isMadura})
      : super(nome, peso, cor);

  void estaMadura(int diasParaMadura) {
    isMadura = diasDesdeDeColheita >= diasParaMadura;
    String statusIsMadura = isMadura! ? 'Sim' : 'Não';
    print(
        'A sua $nome foi colhida a $diasDesdeDeColheita dias e precisa de $diasParaMadura dias para poder comer! Ela está madura? $statusIsMadura');
  }

  void fazerSuco() {
    print('Você está fazendo suco de $nome');
  }
}

class Legumes extends Alimentos implements Bolo{
  bool isPrecisaCozinhar;

  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, peso, cor);

  void cozinhar() {
    isPrecisaCozinhar
        ? 'Pronto, o $nome está cozinhando!'
        : 'Nem, precisa cozinhar!';
  }

  @override
  void assar() {
    // TODO: implement assar
  }

  @override
  void fazerMassa() {
    // TODO: implement fazerMassa
  }

  @override
  void separarIngredientes() {
    // TODO: implement separarIngredientes
  }
}

class Citricas extends Frutas {
  double nivelAzedo;

  Citricas(String nome, double peso, String cor, String sabor,
      int diasDesdeDeColheita, this.nivelAzedo)
      : super(nome, peso, cor, sabor, diasDesdeDeColheita);

  void existerefri(bool existe) {
    if (existe) {
      print('Existe refri do sabor de $nome');
    } else {
      print('Não existe Refri desse sabor');
    }
  }
}

class Nozes extends Frutas {
  double porcetagemDeOleoNatural;

  Nozes(String nome, double peso, String cor, String sabor,
      int diasDesdeDeColheita, this.porcetagemDeOleoNatural)
      : super(nome, peso, cor, sabor, diasDesdeDeColheita);
}

abstract class Bolo {
  void separarIngredientes();
  void fazerMassa();
  void assar();
}