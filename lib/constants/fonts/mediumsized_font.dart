import 'package:flutter/material.dart';

class MediumSIzedFont extends StatelessWidget {
  const MediumSIzedFont({super.key, required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(label,
        style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold));
  }
}
