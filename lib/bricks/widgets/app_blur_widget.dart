import 'dart:ui';

import 'package:flutter/material.dart';

class AppBlur extends StatelessWidget {
  const AppBlur({super.key, required this.child, required this.level});
  final Widget child;
  final double level;

  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: level, sigmaY: level),
            child: ShaderMask(
              shaderCallback: (rect) {
                return LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Colors.black.withOpacity(0)],
                    stops: const [0, 0]
                ).createShader(rect);
              },
              blendMode: BlendMode.dstOut,
              child: child,
            )
        );
  }
}