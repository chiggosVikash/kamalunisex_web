import 'package:designs/kamalunisexsalon/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HoursOpen extends StatelessWidget {
  final double vertSpace;
  const HoursOpen({super.key,required this.vertSpace});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
       
       Text("Hours",
           style: Theme.of(context).textTheme.titleLarge!.merge(GoogleFonts.openSans(
          ),),),
         SizedBox(height: context.height*vertSpace,),
      ListTile(
        title: Text.rich(TextSpan(children: [
         TextSpan(text: "Open Today ",style: GoogleFonts.radley()),
        TextSpan(text:  " 09:00 am - 05:00 pm",style: GoogleFonts.roboto(
          color: context.colorScheme.primary
        ))
      ])))   
         
    ],);
  }
}