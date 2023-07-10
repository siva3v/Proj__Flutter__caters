import 'dart:ui';

import 'package:flutter/material.dart';

class AppBlur extends StatelessWidget {
  const AppBlur({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 7.5, sigmaY: 7.5),
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