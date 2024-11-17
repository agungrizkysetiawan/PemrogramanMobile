import 'dart:async';
import 'dart:math';

class RandomNumberBloc {
  // StreamController untuk input events
  final _generateRandomController = StreamController<void>();
  
  // StreamController untuk output
  final _randomNumberController = StreamController<int>();

  // Sink untuk menerima input
  Sink<void> get generateRandom => _generateRandomController.sink;

  // Stream untuk mengirim data keluar
  Stream<int> get randomNumber => _randomNumberController.stream;

  RandomNumberBloc() {
    _generateRandomController.stream.listen((_) {
      final random = Random().nextInt(10); // Angka acak antara 0-9
      _randomNumberController.sink.add(random);
    });
  }

  void dispose() {
    _generateRandomController.close();
    _randomNumberController.close();
  }
}
