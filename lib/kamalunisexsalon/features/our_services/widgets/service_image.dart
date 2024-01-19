import 'package:flutter/material.dart';

class ServiceImage extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;
  const ServiceImage({super.key, 
  required this.height,
  required this.imageUrl,required this.width});

  @override
  Widget build(BuildContext context) {
    return Image.asset(imageUrl,width: width,height: height,fit: BoxFit.cover,);
  }
}