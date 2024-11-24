void main() {
  String nome = 'Laranja';
  double peso = 100.2;
  String cor = 'Verde e Amarela';
  String sabor = 'Doce e cítrica';
  int diasDesdeColheita = 40;
  bool isMadura = functEstaMadura(diasDesdeColheita);

  // mostraMadura('Uva', 40, cor: 'roxa');
  Frutas fruta01 = Frutas('Uva', 10.2, 'roxa', 'doce', 10);
  print(fruta01.cor);
  fruta01.estaMadura(30);
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
    print('Este(a) $nome pesa $peso e é $cor');
  }
}

class Frutas extends Alimentos {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Frutas(
      String nome, double peso, String cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura})
      : super(nome, peso, cor);

  void estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    String statusIsMadura = isMadura! ? 'Sim' : 'Não';
    print(
        'A sua $nome foi colhida a $diasDesdeColheita dias e precisa de $diasParaMadura dias para poder comer! Ela está madura? $statusIsMadura');
  }
  void fazerSuco(){
    print('Você está fazendo suco de $nome') ;
  }

}

class Legumes extends Alimentos {
  bool isPrecisaCozinhar;

  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, peso, cor);

  void cozinhar() {
    isPrecisaCozinhar
        ? 'Pronto, o $nome está cozinhando!'
        : 'Nem, precisa cozinhar!';
  }
}

class Citricas {
  String nome;
  double peso;
  String cor;
  int diasDesdeDeColheita;
  bool? isMadura;
  double nivelAzedo;

  Citricas(this.nome, this.peso, this.cor, this.diasDesdeDeColheita,
      this.isMadura, this.nivelAzedo);
}

class Nozes {
  String nome;
  double peso;
  String cor;
  int diasDesdeDeColheita;
  bool? isMadura;
  double porcetagemDeOleoNatural;

  Nozes(this.nome, this.peso, this.cor, this.diasDesdeDeColheita, this.isMadura,
      this.porcetagemDeOleoNatural);
}
