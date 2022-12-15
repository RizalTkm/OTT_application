import 'package:flutter/material.dart';
import 'package:movie_application/constants/fonts/standard_font.dart';

class CustomAppbarWidget extends StatelessWidget {
  const CustomAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: const StandardFont(label: 'New & Hot'),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.cast)),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.square,
              color: Colors.blue,
            ))
      ],
    );
  }
}
