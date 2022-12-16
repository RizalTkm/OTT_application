import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget(
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
            size: 35,
            color: Colors.white,
          ),
          Text(
            label,
            style: const TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }
}
