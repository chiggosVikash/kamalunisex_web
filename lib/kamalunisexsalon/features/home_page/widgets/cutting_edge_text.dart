import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CuttingEdgeText extends StatelessWidget {
  const CuttingEdgeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("Stay on the cutting-edge",
        style: Theme.of(context).textTheme.displaySmall!.merge(GoogleFonts.radley(
          color: Color.fromARGB(255, 184, 120, 61)
        ),),);
  }
}