main(){

  functInfoFruta('Laranja', 98, 30);
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