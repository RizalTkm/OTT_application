import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class StandardFont extends StatelessWidget {
  const StandardFont({super.key, required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: GoogleFonts.abel(fontWeight: FontWeight.bold, fontSize: 35),
    );
  }
}
