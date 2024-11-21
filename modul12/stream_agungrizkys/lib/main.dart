import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream_Agung Rizky S',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  int lastNumber = 0;
  String values = ''; // Menyimpan log data stream untuk ditampilkan
  late StreamController<int> numberStreamController;
  late NumberStream numberStream;
  late StreamSubscription<int> subscription; // Untuk subscription pertama
  late StreamSubscription<int> subscription2; // Untuk subscription kedua

  @override
  void initState() {
    super.initState();

    // Inisialisasi NumberStream dan StreamController
    numberStream = NumberStream();
    numberStreamController = numberStream.controller;

    // Mengubah stream menjadi broadcast stream untuk mendukung beberapa listener
    Stream<int> stream = numberStreamController.stream.asBroadcastStream();

    // Subscription pertama untuk memperbarui nilai `lastNumber`
    subscription = stream.listen((event) {
      setState(() {
        lastNumber = event;
        values += '$event - '; // Menambahkan nilai ke `values` untuk log
      });
    });

    // Menangani error pada subscription pertama
    subscription.onError((error) {
      setState(() {
        lastNumber = -1;
      });
    });

    // Menambahkan onDone pada subscription pertama
    subscription.onDone(() {
      print('OnDone was called on subscription 1');
    });

    // Subscription kedua untuk memperbarui log `values`
    subscription2 = stream.listen((event) {
      setState(() {
        values += '$event - '; // Menambahkan nilai ke `values` untuk log
      });
    });
  }

  // Method untuk menambahkan angka acak ke stream
  void addRandomNumber() {
    Random random = Random();
    int myNum = random.nextInt(10);
    if (!numberStreamController.isClosed) {
      numberStream.addNumberToSink(myNum);
    } else {
      setState(() {
        lastNumber = -1;
      });
    }
  }

  // Method untuk menghentikan stream
  void stopStream() {
    numberStreamController.close();
  }

  @override
  void dispose() {
    // Menghentikan kedua subscription untuk menghindari kebocoran memori
    subscription.cancel();
    subscription2.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Mengatur latar belakang menjadi putih
      appBar: AppBar(
        title: const Text('Stream_Agung Rizky S'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              lastNumber.toString(),
              style: const TextStyle(
                  fontSize: 48,
                  color: Colors.black), // Warna teks hitam untuk kontras
            ),
            Text(values), // Menampilkan log dari `values`
            ElevatedButton(
              onPressed: () => addRandomNumber(),
              child: const Text('New Random Number'),
            ),
            // Tombol untuk menghentikan stream
            ElevatedButton(
              onPressed: () => stopStream(),
              child: const Text('Stop Subscription'),
            ),
          ],
        ),
      ),
    );
  }
}

class NumberStream {
  late StreamController<int> controller;

  NumberStream() {
    controller = StreamController<int>();
  }

  // Method untuk menambah angka ke stream
  void addNumberToSink(int number) {
    controller.sink.add(number);
  }

  // Method untuk menambahkan error ke stream
  void addError() {
    controller.sink.addError('error');
  }

  // Method untuk mendapatkan stream
  Stream<int> get stream => controller.stream;

  // Method untuk menutup stream controller
  void close() {
    controller.close();
  }
}
    