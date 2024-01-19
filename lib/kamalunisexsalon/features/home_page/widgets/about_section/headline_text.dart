import 'package:designs/kamalunisexsalon/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadlineText extends StatelessWidget {
  final String text;
  const HeadlineText({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
        Text(text.toUpperCase(),
        style: Theme.of(context).textTheme.titleLarge!.merge(GoogleFonts.aboreto(
          fontWeight: FontWeight.w600
        ),),),
        SizedBox(width: context.width,child:  Divider(
          color: context.colorScheme.secondaryContainer,
        ),)
    ],);
  }
}