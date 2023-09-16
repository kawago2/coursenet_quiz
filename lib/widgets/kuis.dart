import 'package:coursenet_quiz/widgets/jawaban.dart';
import 'package:coursenet_quiz/widgets/pertanyaan.dart';
import 'package:flutter/cupertino.dart';

class Kuis extends StatelessWidget {
  // const Kuis({super.key});
  int soalIndex;
  List<Map<String, Object>> data;
  Function jawaban;
  Kuis(
    this.soalIndex,
    this.data,
    this.jawaban,
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Pertanyaan('${soalIndex + 1}. ${data[soalIndex]['pertanyaan']}'),
        ...(data[soalIndex]['jawaban'] as List<Map<String, Object>>)
            .map((jawabanText) {
          return Jawaban(() => jawaban(jawabanText['skor']),
              jawabanText['teks'] as String);
        }).toList(),
      ],
    );
  }
}
