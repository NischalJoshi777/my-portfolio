import 'package:flutter/material.dart';
import 'package:my_portfolio/core/color/colors.dart';
import 'package:my_portfolio/core/theme/my_theme.dart';

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    // required this.gradient,
    this.style,
  });

  final String text;
  final TextStyle? style;

  // final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => Palette.pinkpurple.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child:
          Text(text, style: context.h2.copyWith(fontWeight: FontWeight.bold)),
    );
  }
}
