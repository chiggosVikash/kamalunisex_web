import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  final double width;
  const EmailField({super.key,required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextFormField(
        decoration: const InputDecoration(
          isDense: true,
          hintText: "Email Address",
          border: OutlineInputBorder()
        ),
      ),
    );
  }
}