import 'dart:io'; // Impor pustaka dart:io untuk operasi file
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String documentsPath = ''; // Menyimpan path dokumen
  String tempPath = ''; // Menyimpan path temporary
  late File myFile; // File untuk menulis dan membaca
  String fileText = ''; // Menyimpan teks yang dibaca dari file
// Method untuk mengambil direktori dokumen dan temporary
  Future<void> getPaths() async {
    final docDir = await getApplicationDocumentsDirectory();
    final tempDir = await getTemporaryDirectory();
    setState(() {
      documentsPath = docDir.path;
      tempPath = tempDir.path;
    });
  }

// Method untuk menulis ke file
  Future<bool> writeFile() async {
    try {
      await myFile.writeAsString('Margherita, Capricciosa, Napoli');
      return true;
    } catch (e) {
      return false;
    }
  }

// Method untuk membaca file
  Future<bool> readFile() async {
    try {
      String fileContent = await myFile.readAsString();
      setState(() {
        fileText = fileContent;
      });
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  void initState() {
    super.initState();
    getPaths().then((_) {
      myFile = File(
          '$documentsPath/pizzas.txt'); // Membuat file pizzas.txt di direktori dokumen
      writeFile(); // Menulis ke file setelah path didapat
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Path Provider and File Operations'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Doc path: $documentsPath'), // Menampilkan path dokumen
          Text('Temp path: $tempPath'), // Menampilkan path temporary
          ElevatedButton(
            onPressed: () => readFile(), // Membaca file ketika tombol ditekan
            child: const Text("Read File"),
          ),
          Text(fileText), // Menampilkan konten file setelah dibaca
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Flutter File Operations',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const MyHomePage(), // Menjadikan MyHomePage sebagai halaman utama
  ));
}
