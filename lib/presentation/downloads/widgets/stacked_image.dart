import 'package:flutter/material.dart';

class StackedImagesWidget extends StatelessWidget {
  final String firstimageurl;
  final String secondimageurl;
  final String thirdimageurl;
  const StackedImagesWidget(
      {super.key,
      required this.firstimageurl,
      required this.secondimageurl,
      required this.thirdimageurl});

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      StackedContainer(
        imageUrl: firstimageurl,
        rotationAngle: .23,
        margin: const EdgeInsets.only(left: 130),
      ),
      StackedContainer(
        imageUrl: secondimageurl,
        rotationAngle: -0.23,
        margin: const EdgeInsets.only(right: 130),
      ),
      StackedContainer(
        imageUrl: thirdimageurl,
        margin: const EdgeInsets.only(top: 4),
      ),
    ]);
  }
}

class StackedContainer extends StatelessWidget {
  const StackedContainer(
      {Key? key,
      required this.imageUrl,
      this.rotationAngle = 0,
      required this.margin})
      : super(key: key);
  final String imageUrl;
  final double rotationAngle;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: rotationAngle,
      child: Container(
        margin: margin,
        height: 200,
        width: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage(imageUrl), fit: BoxFit.cover)),
      ),
    );
  }
}
