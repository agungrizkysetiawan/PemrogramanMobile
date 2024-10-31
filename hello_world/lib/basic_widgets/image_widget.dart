import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  const MyImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage("logo_polinema.jpg"),
      width: 500,  // Mengatur lebar gambar
      height: 500, // Mengatur tinggi gambar
      fit: BoxFit.cover, // Menyesuaikan gambar agar sesuai dengan ukuran yang diberikan
    );
  }
}
