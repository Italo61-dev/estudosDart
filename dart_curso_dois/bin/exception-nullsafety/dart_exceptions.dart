import 'dart:io';

import 'controllers/bank_controller.dart';
import 'models/account.dart';
import '../exceptions/bank_controller_exceptions.dart';

void main() {
  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas
  bankController.addAccount(
      id: "Ricarth",
      account:
          Account(name: "Ricarth Lima", balance: 400, isAuthenticated: false));

  bankController.addAccount(
      id: "Kako",
      account:
          Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

  // Fazendo transferência
  try {
    bool result = bankController.makeTransfer(
        idSender: "Kako", idReceiver: "Ricarth", amount: 75550);

    // Observando resultado
    if (result) {
      print('Transação concluída com sucesso!');
    }
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
