import 'package:designs/kamalunisexsalon/constants/constants.dart';
import 'package:designs/kamalunisexsalon/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServiceDescription extends StatelessWidget {
  final int index;
  final double vertSpace;
  final double width;
  const ServiceDescription({super.key,
  required this.width,
  required this.index,required this.vertSpace});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width,
      child: Column(children: [
        Text(Constants.aboutUsCategory[index]["category"]!,
         style: Theme.of(context).textTheme.titleLarge!.merge(GoogleFonts.openSans(
           fontWeight: FontWeight.w600)
          ),),
      
         SizedBox(height: context.height* vertSpace,),
      
         Text(Constants.aboutUsCategory[index]["description"]!,
           textAlign: TextAlign.center,
           style: GoogleFonts.notoSans(
          ),)
      
      ],),
    );
  }
}