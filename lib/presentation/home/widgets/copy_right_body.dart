import 'package:flutter/material.dart';

class CopyRightBody extends StatelessWidget {
  const CopyRightBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Copyright © Nischal Joshi 2024. All rights Reserved',
          maxLines: 2,
        ),
        SizedBox(height: 30.0),
      ],
    );
  }
}
