//import 'dart:html';

import 'package:aplikasi_hitung/lingkaran_result.dart';
import 'package:flutter/material.dart';
import 'persegi_result.dart';
import 'about_me.dart';
import 'lingkaran_result.dart';

void main() {
  runApp(new MaterialApp(
    home: new Home(),
    routes: <String, WidgetBuilder>{
      '/Halsatu': (BuildContext context) => Home(),
      '/Haldua': (BuildContext context) => MyProfil(),
    },
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  int panjang = 0;
  int lebar = 0;

  var _nama = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    //ignore: unnecessary_new
    return Scaffold(
      appBar: AppBar(
        leading: new Icon(Icons.view_list),
        title: new Text('Menghitung Luas'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.person_outline),
            onPressed: () {
              Navigator.pushNamed(context, '/Haldua');
            },
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: new EdgeInsets.all(20.0),
            child: new Column(
              children: <Widget>[
                new Padding(padding: new EdgeInsets.only(top: 20.0)),
                new Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            panjang = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 5,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                            labelText: "Panjang Persegi",
                            suffix: Text('cm'),
                            border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(10.0)),
                            //filled: true,
                            hintText: 'Panjang'),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            lebar = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 5,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                            labelText: "Lebar Persegi",
                            suffix: Text('cm'),
                            border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(10.0)),
                            //filled: true,
                            hintText: 'Lebar'),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.0),
                  child: Container(
                    child: ElevatedButton(
                      child: Text(
                        'Hitung Luas Persegi',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        var route = MaterialPageRoute(
                          builder: (context) => PersegiResult(
                              panjang_persegi: panjang, lebar_persegi: lebar),
                        );
                        Navigator.of(context).push(route);
                      },
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
