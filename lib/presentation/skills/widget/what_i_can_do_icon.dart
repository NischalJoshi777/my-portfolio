import 'package:flutter/material.dart';
import 'package:my_portfolio/core/color/colors.dart';
import 'package:my_portfolio/core/theme/my_theme.dart';
import 'package:my_portfolio/core/widgets/responsive_size.dart';
import 'package:my_portfolio/presentation/widget/gradient_text.dart';
import 'package:sizer/sizer.dart';

class WhatIdoIcon extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;

  const WhatIdoIcon({
    super.key,
    required this.title,
    required this.icon,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: ResponsiveSize.isDesktop(context) ? 38.h : 24.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            width: 1.0,
            color: Palette.whiteColor,
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 48.0,
            ),
            SizedBox(height: 1.h),
            GradientText(
              title,
            ),
            SizedBox(height: 1.h),
            Text(description,
                textAlign: TextAlign.center,
                style: context.bodyLarge.copyWith()),
          ],
        ),
      ),
    );
  }
}
