void main(){

//   Map<String, dynamic> valorProduto = {};
//   valorProduto["Corte degrâde"] = 25;
//   valorProduto["Corte Social"] = 20;
//
//   print(valorProduto);
//
// //   ----------------------------------
//
//   Map<String, dynamic> registrarPreco = {};
//   registrarPreco["São Paulo"] = 200;
//   registrarPreco["Rio de Janeiro"] = 4000;
//
//   print(registrarPreco);


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

