import 'package:designs/kamalunisexsalon/extension/context_extension.dart';
import 'package:designs/kamalunisexsalon/features/home_page/widgets/about_section/headline_text.dart';
import 'package:designs/kamalunisexsalon/features/home_page/widgets/gallery_section/image_slider.dart';
import 'package:flutter/material.dart';

class GallerySectionContent extends StatefulWidget {
  final double width;
  final double vertSpace;
  final double height;
  
  const GallerySectionContent({super.key,required this.height,required this.vertSpace,required this.width});

  @override
  State<GallerySectionContent> createState() => _GallerySectionContentState();
}

class _GallerySectionContentState extends State<GallerySectionContent> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeadlineText(text: "Our Stunning Transformation Gallery"),
        SizedBox(height: context.height*widget.vertSpace,),
        Container(
          color: Colors.grey.shade100,
          child: ImageSlider(height: widget.height))
      ],);
  }
}