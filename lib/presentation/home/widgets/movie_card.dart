import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_application/constants/image_urls.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key, required this.imageurl});

  final String imageurl;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 210,
        width: 160,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(imageurl), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(5)));
  }
}
