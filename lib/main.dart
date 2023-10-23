import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Flutter mobile computing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final String title = 'FAKULTAS VOKASI-UB';
  final String location = 'Malang, Jawa Timur';
  final String description = '''
Fakultas Vokasi Universitas Brawijaya memiliki dua pilihan departemen yaitu Departemen Departemen Bisnis dan Hospitality (BDH) dan Departemen Industri Kreatif dan Digital (IKD).
Sementara Departemen Industri Kreatif dan Digital terdiri atas:

1. PS. Sarjana Terapan (D4) Desain Grafis
2. PS.Ahli Madya (D3) Teknologi Informasi
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TEMPAT PENDIDIKAN'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            'images/vokasi.jpg',
            height: 250.0,
            width: 412.0,
            fit: BoxFit.fill,
          ),
          Container(
            height: 15.0,
          ),
          Row(
            children: <Widget>[
              Container(
                width: 15.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(this.title,
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold)),
                  Text(
                    this.location,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
              Container(
                width: 130.0,
              ),
              Icon(
                Icons.star,
                size: 32.0,
                color: Colors.blueAccent,
              ),
              Text('5',
                  style: TextStyle(
                    fontSize: 18.0,
                  )),
            ],
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            child: Text(
              this.description,
              style: TextStyle(
                fontSize: 18.0,
              ),
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
