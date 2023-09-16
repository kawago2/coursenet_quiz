import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Hasil extends StatelessWidget {
  // const Hasil({super.key});
  int totalSkor;
  VoidCallback reset;

  Hasil(this.totalSkor, this.reset);
  //Getter
  String get hasilText {
    String hasil = 'Anda Berhasil';

    if (totalSkor >= 3 && totalSkor <= 8) {
      hasil = 'Sepi banget ya hidupmu';
    } else if (totalSkor >= 9 && totalSkor <= 12) {
      hasil = 'Hmm… Lumayan juga ya kamu';
    } else if (totalSkor >= 13 && totalSkor <= 16) {
      hasil = 'Keren banget';
    } else if (totalSkor > 16) {
      hasil = 'Wow energi kamu luarbiasa';
    }
    return hasil;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          hasilText,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
        ),
        Text(
          "Total Skor : $totalSkor",
          style: TextStyle(fontSize: 14.sp),
        ),
        TextButton(
          onPressed: reset,
          child: Text("Mulai Kembali"),
        )
      ],
    ));
  }
}
