import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_application/constants/fonts/normal_bold_font.dart';

class CustomTextbutton extends StatelessWidget {
  const CustomTextbutton({super.key, required this.label, required this.ontap});

  final String label;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: ontap, child: NormalBoldFont(label: label));
  }
}
