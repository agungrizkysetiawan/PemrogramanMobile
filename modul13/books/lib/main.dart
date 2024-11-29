import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart'; // Impor shared_preferences
import 'navigation_dialog.dart'; // Impor file navigation_dialog.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Dialog Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const NavigationDialogScreen(), // Menjadikan NavigationDialogScreen sebagai home
    );
  }
}

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  int appCounter = 0;
  Color color = Colors.blue.shade700;

  @override
  void initState() {
    super.initState();
    readAndWritePreference();
  }

  // Membaca dan Menyimpan Preferensi
  Future<void> readAndWritePreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    appCounter = prefs.getInt('appCounter') ?? 0;
    appCounter++;
    await prefs.setInt('appCounter', appCounter);
    setState(() {
      appCounter = appCounter;
    });
  }

  // Mereset Nilai (Menghapus Data appCounter)
  Future<void> deletePreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear(); // Menghapus semua data yang disimpan
    setState(() {
      appCounter = 0; // Set appCounter ke 0
    });
  }

  // Method untuk menampilkan dialog pemilihan warna
  Future<void> _showColorDialog(BuildContext context) async {
    await showDialog(
      barrierDismissible: false, // Prevent dismissal by tapping outside
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Very important question'),
          content: const Text('Please choose a color'),
          actions: <Widget>[
            TextButton(
              child: const Text('Red'),
              onPressed: () {
                setState(() {
                  color = Colors.red.shade700;
                });
                Navigator.pop(context, color);
              },
            ),
            TextButton(
              child: const Text('Green'),
              onPressed: () {
                setState(() {
                  color = Colors.green.shade700;
                });
                Navigator.pop(context, color);
              },
            ),
            TextButton(
              child: const Text('Blue'),
              onPressed: () {
                setState(() {
                  color = Colors.blue.shade700;
                });
                Navigator.pop(context, color);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color, // Background color is dynamically set
      appBar: AppBar(
        title: const Text('Navigation Dialog Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You have opened the app $appCounter times.',
              style: const TextStyle(fontSize: 18),
            ),
            ElevatedButton(
              onPressed: deletePreference, // Memanggil deletePreference untuk mereset nilai
              child: const Text('Reset counter'),
            ),
            ElevatedButton(
              onPressed: () {
                _showColorDialog(context); // Menampilkan dialog pemilihan warna
              },
              child: const Text('Change Color'),
            ),
          ],
        ),
      ),
    );
  }
}
