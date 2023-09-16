import 'package:flutter/material.dart';

class Jawaban extends StatelessWidget {
  // const Jawaban({super.key});
  VoidCallback onPressed;
  String jawabanText;
  
  Jawaban(this.onPressed, this.jawabanText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(jawabanText),
      ),
    );
  }
}
