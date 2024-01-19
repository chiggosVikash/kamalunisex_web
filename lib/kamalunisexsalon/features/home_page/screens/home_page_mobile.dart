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

class HomePageMobile extends StatelessWidget {
  const HomePageMobile({super.key});

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
                  aspectRatio: 9/11,
                  height: context.height*.5, width: context.width),
                FrontImageContent(
                  btnHeight: context.height*.06,btnWidth: context.width*.4,
                  height: context.height*.5, width: context.width)

              ],
            ),
            SizedBox(height: context.height*.02,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: context.width*.05,vertical: context.height*.03),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AboutSectionContent(width: context.width, vertSpace: .02,),
                  SizedBox(height: context.height*.06,),
                  GallerySectionContent(height: context.height*.35, vertSpace: .02, width: context.width)
                ],
              )),
              SizedBox(height: context.height*.03,),

              Container(
                padding: EdgeInsets.symmetric(horizontal: context.width*.06),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                ContactUsContent(width: context.width,vertSpace: .04,),
                AddressMap(width: context.width),
                SizedBox(height: context.height*.03,),
                 const CuttingEdgeText(),
                 SizedBox(height: context.height*.03,),

                 Center(child: EmailField(width: context.width*.8)),
                 SizedBox(height: context.height*.03,),

                 Center(child: SignUp(height: context.height*.06, width: context.width*.8))
              ],),),

              
              Container(
                padding: EdgeInsets.symmetric(horizontal: context.width*.06),
                child: const CopyRightsText(vertSpace: .04)),
              SizedBox(height: context.height*.1,),

              ],)
        ),
        CustomAppBar(backgroundColor: Colors.grey.withOpacity(.1), foregroundColor: Colors.white),

      ],);
 
  }
}