void main(){

//   Map<String, dynamic> valorProduto = {};
//   valorProduto["Corte degrâde"] = 25;
//   valorProduto["Corte Social"] = 20;
//
//   print(valorProduto);
//
// //   ----------------------------------
//
//
  Pessoa pessoaDandara = Pessoa("Dandara", 25, true);
  Map<String, dynamic> mapDandara = pessoaDandara.toMap();

  print(mapDandara);
}

class Pessoa{
  String nome;
  int idade;
  bool estaAutenticada;

  Pessoa(this.nome, this.idade, this.estaAutenticada);

  Map<String,dynamic> toMap(){
    return {
      "nome": nome,
      "idade": idade,
      "Está autenticada" : estaAutenticada,
    };
  }
}

