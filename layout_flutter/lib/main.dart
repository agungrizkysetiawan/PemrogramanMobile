import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Implementasi titleSection
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung Batur',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Desa Panelokan, Kecamatan Kintamani, Kabupaten Bangli, Bali',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: const [
              Icon(
                Icons.star,
                color: Colors.red,
              ),
              Text('41'),
            ],
          ),
        ],
      ),
    );

    // Implementasi buttonSection
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    // Langkah 1: Buat widget textSection
Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
    'Gunung yang berada di kawasan Bangli ini memiliki ketinggian 1.717 meter di atas permukaan laut. '
    'Gunung Batur ini termasuk dalam bagian dari Cincin Api Nusantara. '
    'Durasi yang kamu butuhkan untuk perjalanan menuju puncak, hanya sekitar tiga jam saja. '
    'Dan kamu juga akan mendaki dengan jalur yang cukup rapi dan mudah. '
    'Sangat cocok untuk pendaki pemula, yang masih belum terbiasa dengan medan-medan berat saat pendakian.',
    softWrap: true,
  ),
);

   Widget imageSection = Image.asset(
      'lake.jpg', // Path gambar yang sesuai
      width: 600,
      height: 240,
      fit: BoxFit.cover, // Agar gambar menutupi seluruh area kotak
    );
   

    return MaterialApp(
      title: 'Flutter layout: Agung Rizky Setiawan - 2241720187',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        // Langkah 3: Ubah menjadi ListView untuk scroll
        body: ListView(
          children: [
            imageSection,
            titleSection,
            buttonSection,
            textSection,  // Semua elemen berada dalam ListView
          ],
        ),
      ),
    );
  }

  // Method untuk membuat button column
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
