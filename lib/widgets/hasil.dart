import 'package:flutter/material.dart';

class Hasil extends StatelessWidget {
  // const Hasil({super.key});
  int totalSkor;
  VoidCallback reset;

  Hasil(this.totalSkor, this.reset);
  //Getter
  String get hasilText {
    String hasil = 'Anda Berhasil';

    if (totalSkor >= 15) {
      hasil = 'Baik';
    } else if (totalSkor >= 10) {
      hasil = 'Cukup';
    } else if (totalSkor >= 7) {
      hasil = 'Kurang';
    } else {
      hasil = 'Sangat Kurang';
    }
    return hasil;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          hasilText,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text("Total Skor : $totalSkor"),
        TextButton(
          onPressed: reset,
          child: Text("Mulai Kembali"),
        )
      ],
    ));
  }
}
