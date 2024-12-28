import 'dart:io';
import 'dart:math';

import 'controllers/bank_controller.dart';
import 'models/account.dart';
import '../exceptions/bank_controller_exceptions.dart';

void testingNullSafety(){
  Account? myAccount;
  Account myAccount2 = Account(name: "Italo", balance: 3000, isAuthenticated: true);

  // Simulando uma comunicação externa
  Random rng = Random();
  int randomNumber = rng.nextInt(10);
  if(randomNumber <= 5){
    myAccount = Account(name: "Ricarth", balance: 200, isAuthenticated: true);
  }

  //-- Para saber o tipo do myAccount
  // print(myAccount.runtimeType);

  //-- Conversão direta: Má prática
  // print(myAccount!.balance);

  //-- tratamento de null safety
  if (myAccount != null){
    print("O valor do seu saldo é ${myAccount.balance}");
  } else {
    print("Conta Nula!!!");
  }

  //-- modo operador ternário
  // print(myAccount != null ? "O valor do seu saldo é ${myAccount.balance}" : "Conta nula");

  // Safe call
  // print(myAccount?.balance);
  if(myAccount2.createAt != null){
    print(myAccount2.createAt!.day);
  }
}

void main() {
  testingNullSafety();

  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas
  bankController.addAccount(
      id: "Ricarth",
      account:
          Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true));

  bankController.addAccount(
      id: "Kako",
      account:
          Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

  // Fazendo transferência
  try {
    bool result = bankController.makeTransfer(
        idSender: "Kako", idReceiver: "Ricarth", amount: 50);

    // Observando resultado
    // if (result) {
    //   print('Transação concluída com sucesso!');
    // }
  } on SenderIdInvalidException catch (e) {
    print(e);
    print('O Id "${e.idSender}" do rementente não é um Id válido!');
  } on ReceiverIdInvalidException catch (e) {
    print(e);
    print('O Id "${e.idReceiver}" do destinatário não é um Id válido!');
  } on SenderNotAuthenticatedException catch (e) {
    print(e);
    print('O usuário de Id "${e.idSender}" não está autenticado!');
  } on ReceiverNotAuthenticatedException catch(e){
    print('O usuário de Id "${e.idReceiver}" não está autenticado!(remetente!)');
  } on SenderBalanceLowerThanAmountException catch (e) {
    print(e);
    print(
        'O usuário de Id "${e.idSender}" tentou enviar ${e.amount} sendo que na sua conta tem apenas ${e.senderBalance}!');
  } on Exception {
    print('Algo deu errado!');
  }
}
