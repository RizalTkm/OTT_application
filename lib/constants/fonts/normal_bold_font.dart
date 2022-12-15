import 'package:flutter/widgets.dart';

class NormalBoldFont extends StatelessWidget {
  const NormalBoldFont({super.key, required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
    );
  }
}
