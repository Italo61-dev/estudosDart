
import 'dart:io';
import 'questions/time_questions.dart';
import 'timing/waiting_time.dart';

void main() async {
  String techbot = 'TechBOT:\n';
  var a = true;
  String usuario = '';

  var myStream = BotClock().techBotStream(1,10);
  var subscriber = myStream.listen((event) {
    print('                                        TECHBOT is activaed for $event seconds ');
  },onDone: () {
    print('TECHBOT is finishing its work, ask the last question');
    a = false;
  });

  print('-- Iniciando o TechBOT, aguarde..--');

  await BotClock().clock(2);

  print('TechBOT:\n Oi :) \n Como posso ajudar?');

  do {
    usuario = stdin.readLineSync().toString();
    print('-- Processando pergunta, aguarde..--');
    await BotClock().clock(1);

    if (usuario.contains('xau') ||
        usuario.contains('Xau') ||
        usuario.contains('Adeus') ||
        usuario.contains('adeus')) {
      a = false;
      print(techbot + ' Até a proxima!!');
    } else if (TimeQuestions(usuario).isThisTime()) {
      // verificar antes, assim não fazemos toda a função sem precisar.
      await BotClock().clock(2);
      TimeQuestions(usuario).timeQuestion();

    } else if (false) {
      //Basta adicionar novas perguntas aqui!
    } else {
      await BotClock().clock(2);
      print(techbot +
          ' Não fui treinado para responder a essa pergunta \n Desculpe :( ');
      print(techbot + ' Você pode fazer outra pergunta ou dizer Adeus');
    }
  } while (a);

  print('--Encerrando TechBOT--');
}


