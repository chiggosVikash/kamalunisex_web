import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AppTheme { 

  static  TextStyle kDisplayLargeDesktop = const TextStyle(
     fontSize: 60,

  );
  static TextStyle  kDisplayLargeMobile = const TextStyle(
    fontSize: 38,
  );

  static  TextStyle kTitleLargeDesktop = const TextStyle(
     fontSize: 20,

  );
  static TextStyle  kTitleLargeMobile = const TextStyle(
    fontSize: 16,
  );


  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    textTheme: GoogleFonts.overpassTextTheme(TextTheme(
      titleLarge:ResponsiveAppUtil.width>= 380 && ResponsiveAppUtil.width <=440?
      kTitleLargeMobile:kTitleLargeDesktop ,
      displayLarge:ResponsiveAppUtil.width>= 380 && ResponsiveAppUtil.width <=440?
      kDisplayLargeMobile:kDisplayLargeDesktop
    )),
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.light,
      seedColor: Colors.blueGrey)
  );

}