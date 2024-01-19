import 'package:designs/kamalunisexsalon/extension/context_extension.dart';
import 'package:designs/kamalunisexsalon/features/home_page/widgets/about_section/headline_text.dart';
import 'package:designs/kamalunisexsalon/features/home_page/widgets/copy_rights_text.dart';
import 'package:designs/kamalunisexsalon/features/home_page/widgets/custom_appbar.dart';
import 'package:designs/kamalunisexsalon/features/our_services/widgets/our_service_desktop_content.dart';
import 'package:designs/kamalunisexsalon/features/our_services/widgets/our_service_mobile_content.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class OurServices extends StatelessWidget {
  static const routeAddress = "/ourServices";
  const OurServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        const CustomAppBar(backgroundColor: Colors.white, foregroundColor: Colors.black),

        Expanded(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: context.width*.06,vertical: context.height*.05),
            children: [
           const  HeadlineText(text: "About Kamal Unisex Salon"),
           SizedBox(height: context.height*.04,),
           Column(children: List.generate(3, (index) {
            return ScreenTypeLayout.builder(
              desktop: (context) => OurServiceDesktopContent(index: index, image: "assets/about_image${index+1}.webp"),
              mobile: (context) => OurServiceMobileContent(index: index, image: "assets/about_image${index+1}.webp"),
            );
           }),),
           const CopyRightsText(vertSpace: .02)
          ],))
        ],),
    );
  }
}