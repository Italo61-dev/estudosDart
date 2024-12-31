
void stackStart() {
  print('Started main');
  functionOne();
  print('Finished main');
}

functionOne() {
  print('Started F01');
  try {
    functionTwo();
  } catch (exception, stacktrace){
    print(exception);
    print(stacktrace);
    rethrow;
  } finally {
    print('Chegou ao finally');
  }

  print('Finshed F01');
}

functionTwo() {
  print('Started F02');
  for (int i = 1; i <= 5; i++) {
    print(i);
    double amount = double.parse('n');
  }
  print('Finshed F02');
}