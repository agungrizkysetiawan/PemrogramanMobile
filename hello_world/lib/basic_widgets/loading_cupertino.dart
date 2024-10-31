import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoadingCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  // Menghilangkan label debug
      home: Container(
        margin: const EdgeInsets.only(top: 30),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,  // Menyusun widget di tengah
          children: <Widget>[
            CupertinoButton(
              child: const Text("Agung Rizky S"),
              onPressed: () {},
            ),
            const SizedBox(height: 20),  // Memberi jarak antara tombol dan indikator
            const CupertinoActivityIndicator(),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(LoadingCupertino());
}
