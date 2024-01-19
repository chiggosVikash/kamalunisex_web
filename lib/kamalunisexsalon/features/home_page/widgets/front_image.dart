import 'package:flutter/material.dart';

class FrontImage extends StatelessWidget {
  final double width;
  final double height;
  final double aspectRatio;
  
  const FrontImage({super.key,required this.aspectRatio,required this.height,required this.width});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Image.asset("assets/front_image.jpg",
        width:width,
        fit: BoxFit.cover,
            ),
    )
     ;
  }
}