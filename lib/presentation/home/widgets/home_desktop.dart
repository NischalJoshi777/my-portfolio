import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/presentation/home/widgets/bouncing_image.dart';
import 'package:sizer/sizer.dart';

import 'intro.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.only(right: 12.w),
                child: const Intro(),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 8.w),
              child: const BouncingImage(),
            ),
          ],
        ),
      ],
    );
  }
}
