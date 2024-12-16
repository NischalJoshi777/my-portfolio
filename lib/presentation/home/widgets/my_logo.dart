import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/my_theme.dart';
import 'package:my_portfolio/core/widgets/index.dart';

class MyLogo extends StatelessWidget {
  const MyLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "<! NJ.",
          style: ResponsiveSize.isDesktop(context)
              ? context.myTheme.h1.copyWith(fontWeight: FontWeight.bold)
              : context.myTheme.h2.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
