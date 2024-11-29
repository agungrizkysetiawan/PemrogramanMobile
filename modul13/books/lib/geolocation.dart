import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  // Variabel untuk menyimpan hasil dari getPosition()
  Future<Position>? position;

  @override
  void initState() {
    super.initState();
    position = getPosition(); // Memanggil getPosition() dan menyimpan hasilnya
  }

  // Method untuk mengambil posisi pengguna
  Future<Position> getPosition() async {
    await Geolocator.isLocationServiceEnabled(); // Pastikan layanan lokasi aktif
    await Future.delayed(const Duration(seconds: 3)); // Delay 3 detik agar loading terlihat
    Position position = await Geolocator.getCurrentPosition(); // Ambil posisi saat ini
    return position;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agung Rizky S'),
      ),
      body: Center(
        child: FutureBuilder<Position>(
          future: position, // Menggunakan future position yang sudah diinisialisasi
          builder: (BuildContext context, AsyncSnapshot<Position> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator(); // Tampilkan loading saat menunggu
            } else if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                // Menangani error jika terjadi
                return const Text('Something terrible happened!');
              }
              // Menampilkan latitude dan longitude setelah selesai
              return Text('Latitude: ${snapshot.data?.latitude}, Longitude: ${snapshot.data?.longitude}');
            } else {
              return const Text('Error retrieving location');
            }
          },
        ),
      ),
    );
  }
}
