import 'package:designs/kamalunisexsalon/features/home_page/screens/home_page.dart';
import 'package:designs/kamalunisexsalon/features/our_services/screens/our_services.dart';
import 'package:designs/kamalunisexsalon/features/privacy_policy/privacy_policy.dart';
import 'package:designs/kamalunisexsalon/features/terms_nd_conditions/terms_nd_conditions.dart';
import 'package:flutter/material.dart';

class ScreenRoute extends RouteSettings {

  static Route routeSettings(RouteSettings settings){
    switch(settings.name){
      case HomePage.routeAddress:
       return MaterialPageRoute(builder: (context) => const  HomePage());

      case OurServices.routeAddress:
        return MaterialPageRoute(builder:  (context) => const OurServices());

      case PrivacyPolicy.routeAddress:
        return MaterialPageRoute(builder: (context)=> const PrivacyPolicy()); 

      case TermsNdConditions.routeAddress:
        return MaterialPageRoute(builder: (context)=> const TermsNdConditions());   
      default:
       return MaterialPageRoute(builder: (context) =>  Scaffold(
        appBar:  AppBar(),
        body: const  Center(child: Text("Route not found:("),),
       )); 
    }
  } 
}