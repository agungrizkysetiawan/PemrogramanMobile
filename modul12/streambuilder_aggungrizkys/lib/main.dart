import 'package:flutter/material.dart';
import 'stream.dart'; // Mengimpor stream.dart
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream',
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
  late Stream<int> numberStream;

  @override
  void initState() {
    super.initState();
    numberStream = NumberStream().getNumbers(); // Menyiapkan stream
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stream"),
      ),
      body: StreamBuilder<int>(
        stream: numberStream, // Menghubungkan dengan stream
        initialData: 0, // Nilai awal
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          if (snapshot.hasData) {
            return Center(
              child: Text(
                snapshot.data.toString(), // Menampilkan angka acak
                style: const TextStyle(fontSize: 96),
              ),
            );
          } else {
            return const SizedBox.shrink(); // Menampilkan widget kosong jika tidak ada data
          }
        },
      ),
    );
  }
}
