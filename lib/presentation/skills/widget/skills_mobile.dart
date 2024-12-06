import 'package:flutter/cupertino.dart';
import 'package:my_portfolio/presentation/skills/widget/skill_chart.dart';
import 'package:my_portfolio/presentation/skills/widget/skill_set.dart';
import 'package:my_portfolio/presentation/skills/widget/what_i_can_do_list.dart';
import 'package:my_portfolio/presentation/widget/custom_header_text.dart';
import 'package:sizer/sizer.dart';

import 'experience.dart';
import 'experience_info.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomHeaderText(
            text: 'SKILLS',
          ),
          SizedBox(height: 3.h),
          const WhatICanDoList(),
          SizedBox(height: 4.h),
          const SkillSet(),
          SizedBox(height: 4.h),
          const SkillsChart(),
          SizedBox(height: 4.h),
          const CustomHeaderText(
            text: 'EXPERIENCE',
          ),
          SizedBox(height: 3.h),
          Center(
            child: Wrap(
              spacing: 20.0,
              runSpacing: 40.0,
              children: expList
                  .map(
                    (exp) => ExperienceInfo(
                      title: exp.title,
                      countries: exp.countries,
                      info: exp.info,
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      );
    });
  }
}
