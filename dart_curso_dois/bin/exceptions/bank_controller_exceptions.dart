class SenderIdInvalidException implements Exception{
  String idSender;
  SenderIdInvalidException({required this.idSender});
}

class ReceiverIdInvalidException implements Exception{
  String idReceiver;
  ReceiverIdInvalidException({required this.idReceiver});
}

class SenderNotAuthenticatedException implements Exception{
  String idSender;
  SenderNotAuthenticatedException({required this.idSender});
}

class SenderBalanceLowerThanAmountException implements Exception{
  String idSender;
  double amount;
  double senderBalance;

  SenderBalanceLowerThanAmountException({required this.idSender, required this.amount, required this.senderBalance});
}