/* class Fruta {
  String nome; //laranja
  int diasDesdeColheita; //25

  Fruta({required this.nome, required this.diasDesdeColheita});

  void verificarMadura(int diasParaMadura) {
    bool isMadura = diasDesdeColheita >= diasParaMadura;
    //                25                     30 = false
    print('A fruta $nome está madura? $isMadura');
  }

  void mostrarDetalhes() {
    print('A fruta $nome foi colhida há $diasDesdeColheita dias.');
  }
}

void main() {
  Fruta laranja = Fruta(nome: 'Laranja', diasDesdeColheita: 25);
  laranja.verificarMadura(30);
  laranja.mostrarDetalhes();

  // Qual o valor de 'diasDesdeColheita' dentro da função 'mostrarDetalhes'? 25
  // Qual o valor de 'isMadura' dentro da função 'mostrarDetalhes'? false
}
*/

class Fruta {
  String nome;

  Fruta({required this.nome});

  void mostrarNome() {
    print('A fruta é: $nome');
  }
}

class Citrus extends Fruta {
  Citrus({required String nome}) : super(nome: nome);

  @override
  void mostrarNome() {
    print('A fruta cítrica é: $nome');
  }
}

void main() {
  Fruta maca = Fruta(nome: 'Maçã');
  Citrus laranja = Citrus(nome: 'Laranja');

  maca.mostrarNome();
  laranja.mostrarNome();

  // Qual o tipo de objeto que a variável 'maca' referencia?
  // Qual o tipo de objeto que a variável 'laranja' referencia?
  // Qual o método 'mostrarNome' que é chamado para cada objeto?
  Carros carro01 = Carros('Toyota', 'Hillux', 'Preta', 2010);
  print(carro01);
}

class Carros {
  String marca;
  String modelo;
  String cor;
  int ano;

  Carros(this.marca, this.modelo, this.cor, this.ano);

  @override
  String toString() {
    return 'A marca do carro é $marca, do modelo $modelo, da cor preta, do ano de $ano';
  }
}
