import 'dart:ui';

import 'package:flutter/material.dart';

class AppGradient extends StatelessWidget {
  const AppGradient({super.key, required this.child, required this.colors});
  final Widget child;
  final List<Color> colors; //[Color(0xFF0093E9),Color(0xFF80D0C7)]

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: colors,
        ),
      ),
      child: child,
    );
  }
}