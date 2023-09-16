import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import './kuis.dart';
import './hasil.dart';

void main() => runApp(MyApp());

String judul = 'Kuis Interaktif';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: judul,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: HomePage(judul: judul),
      );
    });
  }
}

class HomePage extends StatefulWidget {
  String judul;
  HomePage({required this.judul, super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _soalIndex = 0;
  int totalskor = 0;
  var data = [
    {
      'pertanyaan': 'Tempat apa yang akan Anda kunjungi?',
      'jawaban': [
        {'teks': 'Pegunungan', 'skor': 10},
        {'teks': 'Pantai', 'skor': 5},
        {'teks': 'Mall', 'skor': 3},
        {'teks': 'Hutan', 'skor': 7},
      ]
    },
    {
      'pertanyaan': 'Apa warna kesukaan Anda?',
      'jawaban': [
        {'teks': 'Merah', 'skor': 7},
        {'teks': 'Biru', 'skor': 3},
        {'teks': 'Hijau', 'skor': 5},
        {'teks': 'Hitam', 'skor': 1},
      ]
    },
    {
      'pertanyaan': 'Apa hobby anda?',
      'jawaban': [
        {'teks': 'Sepak Bola', 'skor': 2},
        {'teks': 'Basket', 'skor': 3},
        {'teks': 'Berenang', 'skor': 6},
        {'teks': 'Ngoding', 'skor': 4},
      ]
    },
  ];
  void _jawaban(int skor) {
    totalskor = totalskor + skor;
    setState(() {
      _soalIndex += 1;
    });
  }

  void reset() {
    setState(() {
      _soalIndex = 0;
      totalskor = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.judul),
        centerTitle: true,
        actions: [
          IconButton(onPressed: reset, icon: const Icon(Icons.refresh))
        ],
      ),
      body: _soalIndex < data.length
          ? Kuis(
              _soalIndex,
              data,
              _jawaban,
            )
          : Hasil(totalskor, reset),
    );
  }
}
