import 'package:designs/kamalunisexsalon/extension/context_extension.dart';
import 'package:designs/kamalunisexsalon/features/home_page/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FrontImageContent extends StatelessWidget {
  final double height;
  final double width;
  final double btnHeight;
  final double btnWidth;
  const FrontImageContent({super.key,
  required this.btnHeight,required this.btnWidth,
  required this.height,required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: context.width*.05,vertical: context.height*.01),
      height: height,
      width: width,
      child: LayoutBuilder(
        builder: (context,constraints) {
          return Column(mainAxisAlignment: MainAxisAlignment.end,children: [
              Text("Revitalize your hair".toUpperCase(),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displayLarge!.
              merge(GoogleFonts.overpass(
                color: Colors.white
              ),)),
              SizedBox(
                width: constraints.biggest.width*.52,
                child: const Divider(thickness: 1,color: Colors.white,),),

              SizedBox(height: context.height*.02,),
                
              Text("Experience luxury hair care tailored to your needs",
               textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colors.white),),  
          
              SizedBox(height:context.height*.04,),

              CustomButton(height: btnHeight, 
              title: "Schedule appointment", 
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              onPressed: (){}, width: btnWidth),
          ],);
        }
      ),
    );
  }
}