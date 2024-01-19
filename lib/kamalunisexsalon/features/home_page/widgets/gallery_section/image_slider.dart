import 'package:designs/kamalunisexsalon/extension/context_extension.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  final double height;
  const ImageSlider({super.key,required this.height});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
   late PageController _pageController;
   int _pageIndex = 0;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0,viewportFraction: .7);
    super.initState();
  }
 
  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center,
      children: [
        SizedBox(height: widget.height,
        width: context.width,
         child: PageView.builder(
          controller: _pageController,
          itemCount: 4,
          itemBuilder: (context,index){
            return Image.asset("assets/gallery/gallery_image${index+1}.webp",fit: BoxFit.contain,);
         }),),
         Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
          IconButton.outlined(onPressed:(){
            setState(() {
                _pageController.previousPage(duration: const Duration(milliseconds: 600), curve: Curves.easeInOutSine);
            });
          } , icon:  Icon(Icons.arrow_back_ios_new,color: context.colorScheme.onBackground,)),
          IconButton.outlined(onPressed:(){
            setState(() {
              if(_pageIndex < 3){
                _pageController.nextPage(duration: const Duration(milliseconds: 600), curve: Curves.easeIn);
              }
            });
          } , icon:  Icon(Icons.arrow_forward_ios,color: context.colorScheme.onBackground,))
    
         ],)
      ],
    );
  }
}