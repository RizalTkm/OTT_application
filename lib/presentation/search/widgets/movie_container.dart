import 'package:flutter/material.dart';

import 'package:movie_application/constants/spaces.dart';

class MovieContainer extends StatelessWidget {
  const MovieContainer(
      {super.key, required this.imageurl, required this.movieTitle});

  final String imageurl;
  final String movieTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 100,
          width: 170,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(imageurl), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(5)),
        ),
        Spaces.kWidth20,
        Expanded(
          child: SizedBox(
            width: 400,
            child: Text(
              movieTitle,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.play_circle_outline_rounded,
              color: Colors.white,
              size: 30,
            )),
      ],
    );
  }
}
