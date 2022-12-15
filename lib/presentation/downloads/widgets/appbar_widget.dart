import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_application/constants/fonts/standard_font.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: const StandardFont(label: 'Downloads'),
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
