import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  final double width;
  final String url;
  const CircularImage({super.key,required this.url,required this.width});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: width,
      backgroundImage: AssetImage(url),
    );
  }
}