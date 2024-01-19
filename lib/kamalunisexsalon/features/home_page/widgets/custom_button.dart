import 'package:designs/kamalunisexsalon/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double height;
  final double width;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Function() onPressed;
  const CustomButton({super.key,
  required this.height,
  required this.title,
  this.backgroundColor,
  this.foregroundColor,
  required this.onPressed,
  required this.width});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        minimumSize: Size(width, height),
        // foregroundColor: foregroundColor??context.colorScheme.onSecondary,
        backgroundColor: backgroundColor?? context.colorScheme.onPrimary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2))
      ),
      onPressed: onPressed, 
      child: Text(title,
      style: Theme.of(context).textTheme.bodyLarge!.merge(
          GoogleFonts.openSans(fontWeight: FontWeight.w600,color: foregroundColor)

      ),));
  }
}