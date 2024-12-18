import 'package:flutter/cupertino.dart';
import 'package:my_portfolio/presentation/home/widgets/intro.dart';
import 'package:my_portfolio/presentation/home/widgets/sliding_image.dart';
import 'package:sizer/sizer.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 4.h),
        const SlidingImage(),
        SizedBox(height: 2.h),
        const Intro(),
      ],
    );
  }
}
