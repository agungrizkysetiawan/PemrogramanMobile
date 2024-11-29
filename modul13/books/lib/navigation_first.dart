import 'package:flutter/material.dart';
import 'navigation_second.dart'; // Pastikan impor file kedua

class NavigationFirst extends StatefulWidget {
  const NavigationFirst({super.key});

  @override
  State<NavigationFirst> createState() => _NavigationFirstState();
}

class _NavigationFirstState extends State<NavigationFirst> {
  Color color = Colors.blue.shade700;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Agung Rizky S - Navigation First Screen'), // Tambahkan nama
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Change Color'),
          onPressed: () {
            _navigateAndGetColor(context); // Panggil method untuk navigasi
          },
        ),
      ),
    );
  }

  Future _navigateAndGetColor(BuildContext context) async {
    color = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const NavigationSecond()), // Navigasi ke layar kedua
    ) ?? Colors.blue;
    setState(() {}); // Update tampilan setelah mendapatkan warna
  }
}
