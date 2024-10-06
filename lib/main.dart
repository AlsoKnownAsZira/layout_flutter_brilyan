import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            /* soal 1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* soal 2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Air Terjun Sedudo Kabupaten Nganjuk',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Sawahan, Nganjuk, Indonesia',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /* soal 3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text("41"),
        ],
      ),
    );

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

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Air terjun Sedudo merupakan salah satu wisata utama Kabupaten Nganjuk\n'
        'Terletak di Kecamatan Sawahan, memang jaraknya lumayan jauh dari pusat kabupaten.\n '
        'Namun keindahan yang ditawarkan oleh air terjun ini sangatlah memuaskan. \n'
        'Jika anda datang pada tanggal 15 bulan suro, anda berkesempatan untuk menyaksikan tradisi siraman\n'
        'Anda juga bisa menikmati kesegaran air terjun ini. Dengan berendam dibawahnya\n'
        'Terdapat juga kuliner lokal yang bisa anda coba. \n'
        'Brilyan Satria W - 2241720019',
        softWrap: true,
      ),
    );
    return MaterialApp(
      title: 'Brilyan Satria W - 2241720019',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Flutter Demo - Brilyan'),
        ),
        body: Center(
          child: ListView(
            children: [
              Image.network('https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p3/30/2024/02/08/WhatsApp-Image-2024-02-08-at-074120-3430848626.jpeg'),
              titleSection,
              buttonSection,
              textSection
            ],
          ),
        ),
      ),
    );
  }
}
