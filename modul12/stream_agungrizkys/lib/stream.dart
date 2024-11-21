import 'package:flutter/material.dart';
import 'dart:async';

//--------------prak 1
class ColorStream {
  final List<Color> colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal
  ];
  Stream<Color> getColors() async* {
    yield* Stream.periodic(const Duration(seconds: 1), (int t) {
      int index = t % colors.length;
      return colors[index];
    });
  }
}

//----------------prak 2
class NumberStream {
  final StreamController<int> controller = StreamController<int>();

  // Method untuk menutup StreamController
  void close() {
    controller.close();
  }

  // Method untuk menambahkan error ke stream
  void addError() {
    controller.sink.addError('error');
  }
}
