import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/my_theme.dart';
import 'package:my_portfolio/core/widgets/index.dart';

class CustomHeaderText extends StatelessWidget {
  final String text;

  const CustomHeaderText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: ResponsiveSize.isDesktop(context)
          ? context.h1.copyWith(fontWeight: FontWeight.bold)
          : context.h2.copyWith(fontWeight: FontWeight.bold),
    );
  }
}
