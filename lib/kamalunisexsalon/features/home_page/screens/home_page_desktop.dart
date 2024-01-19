import 'package:designs/kamalunisexsalon/extension/context_extension.dart';
import 'package:designs/kamalunisexsalon/features/home_page/widgets/about_section/about_section_content.dart';
import 'package:designs/kamalunisexsalon/features/home_page/widgets/address_map.dart';
import 'package:designs/kamalunisexsalon/features/home_page/widgets/contact_us/contact_us_content.dart';
import 'package:designs/kamalunisexsalon/features/home_page/widgets/copy_rights_text.dart';
import 'package:designs/kamalunisexsalon/features/home_page/widgets/custom_appbar.dart';
import 'package:designs/kamalunisexsalon/features/home_page/widgets/cutting_edge_text.dart';
import 'package:designs/kamalunisexsalon/features/home_page/widgets/email_field.dart';
import 'package:designs/kamalunisexsalon/features/home_page/widgets/front_image.dart';
import 'package:designs/kamalunisexsalon/features/home_page/widgets/front_image_content.dart';
import 'package:designs/kamalunisexsalon/features/home_page/widgets/gallery_section/gallery_section_content.dart';
import 'package:designs/kamalunisexsalon/features/home_page/widgets/sign_up.dart';
import 'package:flutter/material.dart';

class HomePageDesktop extends StatelessWidget {
  const HomePageDesktop({super.key,});

  @override
  Widget build(BuildContext context) {
    return Stack(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          child: Column(children: [
            Stack(
              children: [
                FrontImage(
                  aspectRatio: 15/6,
                  height: context.height*.7, width: context.width),
                FrontImageContent(
                  btnHeight: context.height*.1,btnWidth: context.width*.14,
                  height: context.height*.7, width: context.width)

              ],
            ),
            SizedBox(height: context.height*.03,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: context.width*.06,vertical: context.height*.03),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AboutSectionContent(width: context.width*.83/3,vertSpace: .03,),
                  SizedBox(height: context.height*.09,),
                  GallerySectionContent(height: context.height*.85, vertSpace: .03, width: context.width)
                ],
              )),

              SizedBox(height: context.height*.06,),

              Container(
                padding: EdgeInsets.symmetric(horizontal: context.width*.06),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                    ContactUsContent(width: context.width*.35,vertSpace: .04,),
                    AddressMap(width: context.width*.5),
                    
                    ],),
                  SizedBox(height: context.height*.06,),

                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                  const CuttingEdgeText(),
                  SizedBox(width: context.width*.03,),
                  EmailField(width: context.width*.35),
                  SizedBox(width: context.width*.03,),

                  SignUp(height: context.height*.1, width: context.width*.13)
                ],)
             
                  ],
                ),),
              Container(
                padding: EdgeInsets.symmetric(horizontal: context.width*.06),
                child: const CopyRightsText(vertSpace: .04)),
              SizedBox(height: context.height*.1,),

              ],),
        ),
        CustomAppBar(backgroundColor: Colors.grey.withOpacity(.1), foregroundColor: Colors.white),

      ],);
  }
}