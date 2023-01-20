import 'package:flutter/material.dart';
import 'dart:math';
import 'about_me.dart';

class LingkaranResult extends StatelessWidget {
  LingkaranResult({required this.nilai_phi, required this.diameter_lingkaran});
  final int nilai_phi;
  final int diameter_lingkaran;

  @override
  Widget build(BuildContext context) {
    double hasil = (nilai_phi * diameter_lingkaran * 1.0);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Hasil'),
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
              child: Container(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
              child: Container(
                color: Colors.white,
              ),
            ),
            Text(
              'Luas Keliling Lingkaran adalah :',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
              ),
            ),
            Text(
              '$hasil',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
