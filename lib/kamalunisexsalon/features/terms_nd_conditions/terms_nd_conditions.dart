import 'package:designs/kamalunisexsalon/extension/context_extension.dart';
import 'package:designs/kamalunisexsalon/features/home_page/widgets/about_section/headline_text.dart';
import 'package:designs/kamalunisexsalon/features/home_page/widgets/copy_rights_text.dart';
import 'package:designs/kamalunisexsalon/features/home_page/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TermsNdConditions extends StatelessWidget {
  static const routeAddress = "/termsNdConditions";
  const TermsNdConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(backgroundColor: Colors.white, foregroundColor: Colors.black),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: context.width*.06,vertical: context.height*.03),
              children: [
                const HeadlineText(text: "Terms and Conditions"),
                SizedBox(height: context.height*.03,),
                Center(
                  child: Container(
                    alignment: Alignment.center,
                    width: context.width*.6,
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,children: [
                       Text("Your Terms and Conditions section is like a contract between you and your customers. You make information and services available to your customers, and your customers must follow your rules.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.alice(),),
                    SizedBox(height: context.height*.03,),
                     Text("Common items in a terms and conditions agreement allow you to:",
                     style: GoogleFonts.alice(),),
                      SizedBox(height: context.height*.03,),

                     Text('''Withdraw and cancel services, and make financial transactions.
Manage customer expectations, such as liability for information errors or website downtime.
Explain your copyright rules, such as attribution, adaptation, commercial or non-commercial use, etc.
Set rules for user behavior, like forbidding unlawful behavior, hate speech, bullying, promotions, spam, etc.
Disable user accounts.
Write down any other terms or conditions that protect you or your audience.''',
 style: GoogleFonts.alice(),)
                  
                  ],),),
                ),
                
                

                // ResponsiveBuilder(
                //   builder: (context,sizeInfo){
                //     final btnHeight = sizeInfo.isMobile?context.height*.06:context.height*.1;
                //     // final btnWidth = sizeInfo.isMobile? context.width*.7 
                //     return CustomButton(
                //       height: btnHeight, title: "Coming Soon", onPressed: (){},
                //       width:  context.width*.7);
                //   }),

                  SizedBox(height: context.height*.03,),

                  const CopyRightsText(vertSpace: .02)
              ],
            ))
        ],),
    );
  }
}