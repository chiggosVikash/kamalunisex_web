import 'package:designs/kamalunisexsalon/features/home_page/screens/home_page_desktop.dart';
import 'package:designs/kamalunisexsalon/features/home_page/screens/home_page_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  static const routeAddress = "/";
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      // foregroundColor: Colors.white,
      // backgroundColor: Colors.grey.withOpacity(.5) ,
      // actions: [
      //   TextButton(
      //     onPressed: (){},
      //     child: const Text("Home"),
      //     ),
      //     TextButton(onPressed: (){}, child: const Text("Our Services"))
      // ],
      // title: const Text("KAMAL UNISEX SALON"),),

      body: ScreenTypeLayout.builder(
        mobile: (context) => const HomePageMobile(),
        desktop: (context) => const HomePageDesktop(),
      ),
    );
  }
}