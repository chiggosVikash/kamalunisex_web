import 'package:designs/kamalunisexsalon/extension/context_extension.dart';
import 'package:designs/kamalunisexsalon/features/home_page/screens/home_page.dart';
import 'package:designs/kamalunisexsalon/features/our_services/screens/our_services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CustomAppBar extends StatelessWidget {
  final Color backgroundColor;
  final Color foregroundColor;
  const CustomAppBar({super.key,required this.backgroundColor,required this.foregroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      padding: EdgeInsets.symmetric(horizontal: context.width*.06,vertical: context.height*.02),
      color: backgroundColor,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         const  CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage("assets/salon_logo.png"),),
          SizedBox(width: context.width*.01,),
          Expanded(
             child: Text("KAMAL UNISEX SALON",
             style: Theme.of(context).textTheme.titleLarge!.merge(
              GoogleFonts.overpass(color: foregroundColor),)),
           ),
          Row(mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  visualDensity: VisualDensity.compact,
                  foregroundColor: foregroundColor
                  
                ),
              onPressed: (){
                Navigator.pushReplacementNamed(context, HomePage.routeAddress);
              },
              child: ScreenTypeLayout.builder(
                mobile: (context) => const Icon(Icons.home),
                desktop:(context) => const Text("Home")),
              ),
             TextButton(
              style: TextButton.styleFrom(
                  visualDensity: VisualDensity.compact,
                  foregroundColor: foregroundColor
                  
                ),
              onPressed: (){
                Navigator.pushNamed(context, OurServices.routeAddress);
              }, 
             child:ScreenTypeLayout.builder(
                mobile: (context) => const Icon(Icons.design_services),
                desktop:(context) => const Text("Our Services")),
              )

            ],
          ),

        ],
      ),);
  }
}