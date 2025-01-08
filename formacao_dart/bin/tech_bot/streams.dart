import 'dart:async';
import 'dart:math';

void main() async{
  Stream myStream(int interval, [int? maxCount]) async* {
    int i = 1;
    while (i != maxCount) {
      print('Counting: $i');
      await Future.delayed(Duration(seconds: interval));
      yield i++;
    }
    print('The Stream is finished');
  }

  print('Main is finished');

  StreamSubscription mySubscriber = myStream(1).listen((event) {
    if (event.isEven) {
      print('This number is even!\n');
    }
  }, onError: (e) {
    print('An error happend: $e');
  }, onDone: (){
    print('The subscriber is gone.');
  });
  await Future.delayed(Duration(seconds: 3));
  mySubscriber.pause();
  print('Stream paused');
  await Future.delayed(Duration(seconds: 3));
  mySubscriber.resume();
  print('Stream resumed');
  await Future.delayed(Duration(seconds: 3));
  mySubscriber.cancel();
  print('Stream canceled');
}
