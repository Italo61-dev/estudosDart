import 'timing/waiting_time.dart';
void main() async{

  Future<String> myChat() async {
    try{
      print('João: Bom dia grupo!\n');
      await BotClock().clock(2);
      
      print('Mariana: Bom dia! Tudo bem?\n');
      await BotClock().clock(2);
      
      print('João: Suave, e vc?\n');
      await BotClock().clock(2);
      
      print('Mariana: Certinho.\n');
      await BotClock().clock(2);

      return 'Chat finalizado com sucesso';
    }catch (e){
      print('Erro no chat: $e');
      return 'Erro durante o chat';
    }finally{
      print('finalizando o chat\n');
    }
  }

  myChat().then((value) => print(value));
}