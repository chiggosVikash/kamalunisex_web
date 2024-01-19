import 'package:designs/kamalunisexsalon/features/home_page/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  final double height;
  final double width;
  const SignUp({super.key,required this.height,required this.width});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      height: height, 
      foregroundColor: Colors.white,
      backgroundColor: Colors.black,
      title: "Sign up", onPressed: (){}, width: width );
  }
}