import 'package:flutter/cupertino.dart';

class MainCard extends StatelessWidget {
  const MainCard({super.key, required this.imageurl});

  final String imageurl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image:
              DecorationImage(image: NetworkImage(imageurl), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(5)),
    );
  }
}
