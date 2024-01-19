import 'package:flutter/material.dart';

class AddressMap extends StatelessWidget {
  final double width;
  const AddressMap({super.key,required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      color: Colors.grey.shade100,
      child: Image.network("assets/kamal_salon_map.jpeg",fit: BoxFit.cover,),);
  }
}