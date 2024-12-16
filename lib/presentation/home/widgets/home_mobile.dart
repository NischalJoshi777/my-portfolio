import 'package:flutter/cupertino.dart';
import 'package:my_portfolio/core/color/colors.dart';
import 'package:my_portfolio/core/widgets/index.dart';
import 'package:my_portfolio/presentation/home/widgets/intro.dart';
import 'package:sizer/sizer.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 4.h),
        const _MyImage(),
        SizedBox(height: 2.h),
        const Intro(),
      ],
    );
  }
}

class _MyImage extends StatelessWidget {
  const _MyImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ResponsiveSize.isMobile(context)
          ? 20.0.h
          : 30.h, // Outer container width (includes border)
      height: ResponsiveSize.isMobile(context)
          ? 20.0.h
          : 30.h, // Outer container height (includes border)
      decoration: const BoxDecoration(
          shape: BoxShape.circle, gradient: Palette.pinkpurple),
      child: Padding(
        padding: const EdgeInsets.all(6.0), // Border thickness
        child: ClipOval(
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              'assets/imgs/my_profile.jpeg',
              fit: BoxFit.cover, // Ensures the image covers the entire circle
            ),
          ),
        ),
      ),
    );
  }
}
