import 'package:designs/kamalunisexsalon/extension/context_extension.dart';
import 'package:designs/kamalunisexsalon/features/home_page/widgets/about_section/headline_text.dart';
import 'package:designs/kamalunisexsalon/features/home_page/widgets/copy_rights_text.dart';
import 'package:designs/kamalunisexsalon/features/home_page/widgets/custom_appbar.dart';
import 'package:designs/kamalunisexsalon/features/home_page/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PrivacyPolicy extends StatelessWidget {
  static const routeAddress = "/privacyPolicy";
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(backgroundColor: Colors.white, foregroundColor: Colors.black),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: context.width*.06,vertical: context.height*.05),
              children: [
                const HeadlineText(text: "Privacy Policy"),
                SizedBox(height: context.height*.05,),
                ResponsiveBuilder(
                  builder: (context,sizeInfo){
                    final btnHeight = sizeInfo.isMobile?context.height*.06:context.height*.1;
                    // final btnWidth = sizeInfo.isMobile? context.width*.7 
                    return Center(
                      child: CustomButton(
                        backgroundColor: Colors.blueGrey.shade100,
                        height: btnHeight, title: "Privacy Policy Coming Soon", onPressed: (){},
                        width:  context.width*.6),
                    );
                  }),

                  SizedBox(height: context.height*.05,),

                  const CopyRightsText(vertSpace: .02)
              ],
            ))
        ],),
    );
  }
}