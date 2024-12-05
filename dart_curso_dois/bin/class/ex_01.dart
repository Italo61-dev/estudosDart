class Produto {
  String nome;
  double preco;
  int quantidade;

  Produto(this.nome, this.preco, this.quantidade);

  functAdicionarEstoque(int quantidade){
    int estoque = 0;
    estoque = quantidade + estoque;
    return;
  }

  functRemoverEstoque(int quantidade){
    int estoque = 0;
    estoque = estoque - quantidade;
    return;
  }

  functExibirInformacoes(){
    print('Produto: $nome'
        'Preço: R $preco'
        'Quantidade no estoque: $quantidade'
        ''
        'Adicionando $quantidade');
  }
}