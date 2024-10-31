import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'red_text_widget.dart';  // Pastikan file red_text_widget.dart di-import

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Ambil daftar kamera yang tersedia
  final cameras = await availableCameras();
  
  runApp(MyApp(cameras: cameras)); // Pass daftar kamera ke MyApp
}

class MyApp extends StatelessWidget {
  final List<CameraDescription> cameras; // Daftar kamera

  const MyApp({Key? key, required this.cameras}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Plugin Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(cameras: cameras), // Pass daftar kamera ke MyHomePage
    );
  }
}

class MyHomePage extends StatefulWidget {
  final List<CameraDescription> cameras; // Daftar kamera

  const MyHomePage({Key? key, required this.cameras}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  int _selectedCameraIndex = 0; // Indeks kamera yang dipilih

  @override
  void initState() {
    super.initState();
    // Inisialisasi controller kamera
    _initializeCamera();
  }

  // Fungsi untuk menginisialisasi kamera berdasarkan indeks yang dipilih
  void _initializeCamera() {
    _controller = CameraController(
      widget.cameras[_selectedCameraIndex], // Pilih kamera berdasarkan indeks
      ResolutionPreset.high,
    );
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    // Hapus controller ketika tidak digunakan
    _controller.dispose();
    super.dispose();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Fungsi untuk mengganti kamera
  void _toggleCamera() {
    setState(() {
      // Ganti kamera dengan indeks berikutnya
      _selectedCameraIndex = (_selectedCameraIndex + 1) % widget.cameras.length;
      _initializeCamera(); // Inisialisasi ulang dengan kamera baru
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Plugin Demo Home Page'),
        actions: [
          IconButton(
            icon: const Icon(Icons.switch_camera), // Ikon untuk mengganti kamera
            onPressed: _toggleCamera, // Panggil fungsi untuk mengganti kamera
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.yellowAccent,
              width: 80,
              child: const RedTextWidget(
                text: 'You have pushed the button this many times:',
              ),
            ),
            const SizedBox(height: 20),
            Container(
              color: Colors.greenAccent,
              width: 100,
              child: const Text(
                'You have pushed the button this many times:',
              ),
            ),
            const SizedBox(height: 20),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            FutureBuilder<void>(
              future: _initializeControllerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  // Jika controller sudah siap, tampilkan preview kamera
                  return CameraPreview(_controller);
                } else {
                  // Jika masih menunggu, tampilkan loading spinner
                  return const CircularProgressIndicator();
                }
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          try {
            await _initializeControllerFuture;
            // Ambil gambar
            final image = await _controller.takePicture();
            // Tampilkan gambar yang diambil
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('Gambar diambil!'),
                  content: Image.file(File(image.path)),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Tutup'),
                    ),
                  ],
                );
              },
            );
          } catch (e) {
            print(e);
          }
        },
        tooltip: 'Ambil Gambar',
        child: const Icon(Icons.camera),
      ),
    );
  }
}
