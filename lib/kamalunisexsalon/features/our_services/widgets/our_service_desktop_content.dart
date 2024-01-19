import 'package:designs/kamalunisexsalon/extension/context_extension.dart';
import 'package:designs/kamalunisexsalon/features/our_services/widgets/left_right_alignment.dart';
import 'package:designs/kamalunisexsalon/features/our_services/widgets/service_description.dart';
import 'package:designs/kamalunisexsalon/features/our_services/widgets/service_image.dart';
import 'package:flutter/material.dart';

class OurServiceDesktopContent   extends StatelessWidget {
  final int index;
  final String image;
  const OurServiceDesktopContent({super.key,required this.image,required this.index});
  
  final double vertSpace = .05;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: context.height*.03),
      child: index%2==0?LeftRightAlignment(
       firstChild: ServiceImage(imageUrl: image, width: context.width*.45,height: context.height*.42,),
        secondChild:ServiceDescription(index: index, vertSpace: vertSpace,width: context.width*.4,)
      ):LeftRightAlignment(
        firstChild:ServiceDescription(index: index, vertSpace: vertSpace,width: context.width*.4,),

        secondChild: ServiceImage(imageUrl: image, width: context.width*.45,height: context.height*.42,),
      ),
    );
  }
}