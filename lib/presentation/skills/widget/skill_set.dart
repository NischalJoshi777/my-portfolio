import 'package:flutter/material.dart';
import 'package:my_portfolio/const/icons.dart';
import 'package:sizer/sizer.dart';

class SkillSet extends StatelessWidget {
  const SkillSet({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.start,
      spacing: 2.h,
      runSpacing: 2.h,
      children: const [
        SkillsIcon(
          icon: MyIcons.flutter,
        ),
        SkillsIcon(
          icon: MyIcons.dart,
        ),
        SkillsIcon(
          icon: MyIcons.android,
        ),
        SkillsIcon(
          icon: MyIcons.iOS,
        ),
        SkillsIcon(
          icon: MyIcons.python,
        ),
        SkillsIcon(
          icon: MyIcons.html5,
        ),
        SkillsIcon(
          icon: MyIcons.css,
        ),
        SkillsIcon(
          icon: MyIcons.javascript,
        ),
      ],
    );
  }
}

class SkillsIcon extends StatelessWidget {
  final String icon;

  const SkillsIcon({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      icon,
      height: 8.h,
      width: 8.w,
    );
  }
}
