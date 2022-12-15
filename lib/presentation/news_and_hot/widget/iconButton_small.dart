import 'package:flutter/material.dart';

class IconButtonSmallWidget extends StatelessWidget {
  const IconButtonSmallWidget(
      {super.key, required this.icon, this.label = '', required this.ontap});

  final IconData icon;
  final String label;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Column(
        children: [
          Icon(
            icon,
            size: 20,
            color: Colors.white,
          ),
          Text(
            label,
            style: const TextStyle(fontSize: 15, color: Colors.grey),
          )
        ],
      ),
    );
  }
}
