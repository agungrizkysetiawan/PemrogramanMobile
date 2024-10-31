import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, 
      color: const Color.fromARGB(255, 148, 255, 253), 
      padding: EdgeInsets.all(5), 
      child: Column(
        mainAxisSize: MainAxisSize.min, 
        crossAxisAlignment: CrossAxisAlignment.center, // Isi rata tengah
        children: [
          Text(
            'Agung Rizky S',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            '2241720187',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
