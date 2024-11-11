main(){

  Frutas fruta01 = Frutas('Uva', 100.2, 'Roxa', 20, isMadura: true);
  print(fruta01.);
}


functInfoFruta(String nome, double peso, int colheita){
    int diasMadura = 20;
    String madura = colheita >= diasMadura ? 'a $nome está madura.' : 'a $nome não está madura.';

    print('A $nome pesa $peso gramas! Ela foi colhida há $colheita dias e precisa de $diasMadura para amadurecer, logo, $madura');
}

functAreaRetangulo (double largura, double altura){
  double area = largura * altura;
  return area;
}

class Frutas{
  String nome;
  double peso;
  String cor;
  int diasDeColheita;
  bool? isMadura;
  
  Frutas(this.nome, this.peso, this.cor, this.diasDeColheita, {this.isMadura});
}