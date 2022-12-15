import 'package:flutter/material.dart';

class GreyFont extends StatelessWidget {
  const GreyFont({super.key, required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: const TextStyle(color: Colors.grey, fontSize: 18),
      textAlign: TextAlign.center,
    );
  }
}
