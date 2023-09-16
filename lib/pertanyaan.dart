import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Pertanyaan extends StatelessWidget {
  // const Pertanyaan({super.key});
  var pertanyaan;

  Pertanyaan(this.pertanyaan);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(3.w),
      width: double.infinity,
      child: Text(
        pertanyaan,
        style: TextStyle(
          fontSize: 14.sp,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
