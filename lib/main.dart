import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Quiz',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var pertanyaan = [
      'Tempat apa yang akan anda kunjungi?',
      'Apa warna kesukaan anda?',
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplikasi Quiz'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Text("Pertanyaan"),
          ElevatedButton(onPressed: () {}, child: const Text("Jawaban 1")),
          ElevatedButton(onPressed: () {}, child: const Text("Jawaban 2")),
          ElevatedButton(onPressed: () {}, child: const Text("Jawaban 3")),
          ElevatedButton(onPressed: () {}, child: const Text("Jawaban 4")),
        ],
      ),
    );
  }
}
