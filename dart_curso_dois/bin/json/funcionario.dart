import 'dart:convert'; // Para manipular JSON
import 'dart:io'; // Para acessar arquivos

// Classe Funcionario
class Funcionario {
  String nome;
  int idade;
  String funcao;
  String hobby;

  // Construtor principal
  Funcionario(this.nome, this.idade, this.funcao, this.hobby);

  // Construtor que recebe os dados externos (Map)
  Funcionario.fromJson(Map<String, dynamic> map)
      : nome = map['nome'],
        idade = map['idade'],
        funcao = map['funcao'],
        hobby = map['hobby'];

  // Método para exibir as informações do funcionário
  void exibirInfo() {
    print('Nome: $nome');
    print('Idade: $idade');
    print('Função: $funcao');
    print('Hobby: $hobby');
  }
}

// Função principal
Future<void> main() async {
  try {
    // Lendo o arquivo JSON
    var conteudo = await File('dados.json').readAsString();

    // Convertendo o JSON para um Map
    Map<String, dynamic> dados = jsonDecode(conteudo);

    // Criando o objeto Funcionario a partir do Map
    Funcionario funcionario = Funcionario.fromJson(dados);

    // Exibindo as informações do funcionário
    funcionario.exibirInfo();
  } catch (e) {
    print('Erro ao processar os dados: $e');
  }
}
