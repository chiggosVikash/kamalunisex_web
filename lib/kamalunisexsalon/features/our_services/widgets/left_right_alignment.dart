import 'package:flutter/material.dart';

class LeftRightAlignment extends StatelessWidget {
  final Widget firstChild;
  final Widget secondChild;
  const LeftRightAlignment({super.key,required this.firstChild,required this.secondChild});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
      firstChild,secondChild
    ],);
  }
}