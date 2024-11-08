import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/my_theme.dart';

class MyLogo extends StatelessWidget {
  final bool isNotDesktop;

  const MyLogo({
    Key? key,
    this.isNotDesktop = true
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "<! NJ.",
          style:isNotDesktop?
          context.h1.copyWith(fontWeight: FontWeight.bold) :
          context.h2
        ),
      ],
    );
  }
}
