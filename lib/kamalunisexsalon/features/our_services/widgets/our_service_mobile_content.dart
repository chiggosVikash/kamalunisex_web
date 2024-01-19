import 'package:designs/kamalunisexsalon/extension/context_extension.dart';
import 'package:designs/kamalunisexsalon/features/our_services/widgets/service_description.dart';
import 'package:designs/kamalunisexsalon/features/our_services/widgets/service_image.dart';
import 'package:flutter/material.dart';

class OurServiceMobileContent   extends StatelessWidget {
  final String image;
  final int index;
  const OurServiceMobileContent({super.key,
  required this.index,
  required this.image});

  final double vertSpace = .03;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: context.height*.02),
      child: Column(children: [
        ServiceImage( imageUrl: image, width: context.width,height: context.height*.22,),
        SizedBox(height: context.height*vertSpace,),
        ServiceDescription(index: index, vertSpace: vertSpace,width: context.width,)
      ],),
    );
  }
}