import 'package:designs/kamalunisexsalon/app_theme/app_theme.dart';
import 'package:designs/kamalunisexsalon/features/home_page/screens/home_page.dart';
import 'package:designs/kamalunisexsalon/route/screen.route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveApp(
      preferDesktop: true,
      builder:(context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Kamal Unisex Salon',
        theme: AppTheme.lightTheme,
        onGenerateRoute: ScreenRoute.routeSettings,
        initialRoute: HomePage.routeAddress,
        // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

