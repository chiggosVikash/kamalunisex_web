import 'package:flutter/material.dart';

extension ContextExtension on BuildContext{

  double get width => MediaQuery.of(this).size.width;

  double get height => MediaQuery.of(this).size.height;

  double get aspectRatio => MediaQuery.of(this).size.aspectRatio;

  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}