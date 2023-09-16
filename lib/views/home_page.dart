import 'package:coursenet_quiz/widgets/kuis.dart';
import 'package:coursenet_quiz/widgets/hasil.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _soalIndex = 0;
  int totalskor = 0;
  var data = [
    {
      'pertanyaan': 'Tempat apa yang akan anda kunjungi?',
      'jawaban': [
        {'teks': 'Pegunungan', 'skor': 10},
        {'teks': 'Pantai', 'skor': 5},
        {'teks': 'Mall', 'skor': 4},
        {'teks': 'Hutan', 'skor': 1},
      ]
    },
    {
      'pertanyaan': 'Apa warna kesukaan anda?',
      'jawaban': [
        {'teks': 'Merah', 'skor': 10},
        {'teks': 'Biru', 'skor': 5},
        {'teks': 'Hijau', 'skor': 4},
        {'teks': 'Hitam', 'skor': 3},
      ]
    },
    {
      'pertanyaan': 'Apa hobby anda?',
      'jawaban': [
        {'teks': 'Sepak Bola', 'skor': 6},
        {'teks': 'Basket', 'skor': 14},
        {'teks': 'Nonton', 'skor': 2},
        {'teks': 'Ngoding', 'skor': 10},
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
        title: const Text('Aplikasi Kuis'),
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
