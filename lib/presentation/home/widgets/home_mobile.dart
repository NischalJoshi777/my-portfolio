import 'package:flutter/cupertino.dart';
import 'package:my_portfolio/core/color/colors.dart';
import 'package:sizer/sizer.dart';

import 'intro.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 4.h),
          const _MyImage(),
          const Intro(),
        ],
      ),
    );
  }
}

class _MyImage extends StatelessWidget {
  const _MyImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.0.h, // Outer container width (includes border)
      height: 20.0.h, // Outer container height (includes border)
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
              'assets/imgs/my_profile.jpg',
              fit: BoxFit.cover, // Ensures the image covers the entire circle
            ),
          ),
        ),
      ),
    );
  }
}
