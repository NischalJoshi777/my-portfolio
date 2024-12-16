import 'package:flutter/material.dart';
import 'package:my_portfolio/core/color/colors.dart';
import 'package:my_portfolio/core/theme/my_theme.dart';
import 'package:my_portfolio/core/widgets/index.dart';
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
    return !ResponsiveSize.isDesktop(context)
        ? _MobileWhatICanDo(
            title: title,
            description: description,
            icon: icon,
          )
        : _DesktopWhatIdoIcon(
            title: title,
            icon: icon,
            description: description,
          );
  }
}

class _DesktopWhatIdoIcon extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;

  const _DesktopWhatIdoIcon({
    super.key,
    required this.title,
    required this.icon,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: 38.h,
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
                style: context.myTheme.bodyLarge.copyWith()),
          ],
        ),
      ),
    );
  }
}

class _MobileWhatICanDo extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;

  const _MobileWhatICanDo({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 38.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Flexible(
                flex: 1,
                child: Icon(
                  icon,
                  size: ResponsiveSize.isMobile(context) ? 32.0 : 48.0,
                ),
              ),
              SizedBox(width: 2.w),
              Flexible(
                flex: 2,
                child: GradientText(
                  title,
                ),
              ),
            ],
          ),
          SizedBox(height: 1.h),
          Text(
            description,
            style: context.myTheme.bodyRegular,
          ),
        ],
      ),
    );
  }
}
