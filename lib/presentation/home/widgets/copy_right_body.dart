import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CopyRightBody extends StatelessWidget {
  const CopyRightBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Copyright © Nischal Joshi 2024',
        ),
        SizedBox(height: 1.h),
        const Text(
          'All rights reserved',
        ),
        const SizedBox(height: 30.0),
      ],
    );
  }
}
