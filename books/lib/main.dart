import 'package:flutter/material.dart';
import 'navigation_dialog.dart'; // Pastikan untuk mengimpor file navigation_dialog.dart

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
