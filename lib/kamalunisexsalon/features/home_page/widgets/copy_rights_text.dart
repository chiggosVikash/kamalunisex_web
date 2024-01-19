import 'package:designs/kamalunisexsalon/extension/context_extension.dart';
import 'package:designs/kamalunisexsalon/features/our_services/screens/our_services.dart';
import 'package:designs/kamalunisexsalon/features/privacy_policy/privacy_policy.dart';
import 'package:designs/kamalunisexsalon/features/terms_nd_conditions/terms_nd_conditions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CopyRightsText extends StatelessWidget {
  final double vertSpace;
  const CopyRightsText({super.key,required this.vertSpace});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
      SizedBox(height: context.height*vertSpace,),

      SizedBox(width: context.width,
        child:const  Divider()),
        SizedBox(height: context.height*vertSpace,),
       Text("Copyright © 2024 Kamal Unisex Salon - All Rights Reserved",
        style: Theme.of(context).textTheme.bodyLarge!.merge(GoogleFonts.radley()),),

       SizedBox(height: context.height*vertSpace,),
      Center(
        child: Wrap(spacing: context.width*.04,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
           TextButton(onPressed: (){
            Navigator.pushNamed(context, OurServices.routeAddress);
           }, child: const Text("Our Services")),
          TextButton(onPressed: (){
            Navigator.pushNamed(context, PrivacyPolicy.routeAddress);
          }, child: const Text("Privacy Policy")),
          TextButton(onPressed: (){
            Navigator.pushNamed(context, TermsNdConditions.routeAddress);
          }, child: const Text("Terms and Conditions"))
        ],),
      ),
    ],);
  }
}