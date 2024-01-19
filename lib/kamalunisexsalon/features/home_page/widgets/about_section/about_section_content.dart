import 'package:designs/kamalunisexsalon/constants/constants.dart';
import 'package:designs/kamalunisexsalon/extension/context_extension.dart';
import 'package:designs/kamalunisexsalon/features/home_page/widgets/about_section/circular_image.dart';
import 'package:designs/kamalunisexsalon/features/home_page/widgets/about_section/headline_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutSectionContent extends StatelessWidget {
  final double width;
  final double vertSpace;
  const AboutSectionContent({super.key,required this.vertSpace,required this.width});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
      const  HeadlineText(text:"About kamal Unisex Salon"),

       SizedBox(height: context.height*.02,),

       Wrap(spacing: context.width*.02,runSpacing: context.height*.03,children: List.generate(Constants.aboutUsCategory.length, (index) {
        return SizedBox(width:width,child: LayoutBuilder(
          builder: (context,constraints) {
            return Column(children: [
              CircularImage(
                url: "assets/about_image${index+1}.webp", 
                width: constraints.maxWidth*.4),
                SizedBox(height: context.height* vertSpace,),
              
              Text(Constants.aboutUsCategory[index]["category"]!,
               style: Theme.of(context).textTheme.titleLarge!.merge(GoogleFonts.openSans(
                fontWeight: FontWeight.w600)
               ),),

              SizedBox(height: context.height* vertSpace,),

              Text(Constants.aboutUsCategory[index]["description"]!,
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSans(
              ),)



            ]);
          }
        ),);
       }),)
    ],);
  }
}