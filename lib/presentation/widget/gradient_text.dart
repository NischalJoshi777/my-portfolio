import 'package:flutter/material.dart';
import 'package:my_portfolio/core/color/colors.dart';
import 'package:my_portfolio/core/theme/my_theme.dart';
import 'package:my_portfolio/core/widgets/index.dart';

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    super.key,
    this.style,
  });

  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => Palette.pinkpurple.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        text,
        style: ResponsiveSize.isMobile(context)
            ? context.myTheme.h2
                .copyWith(fontWeight: FontWeight.bold, fontSize: 20.0)
            : context.myTheme.h2.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
