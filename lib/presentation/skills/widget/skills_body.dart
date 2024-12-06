import 'package:flutter/cupertino.dart';
import 'package:my_portfolio/core/widgets/index.dart';
import 'package:my_portfolio/presentation/skills/widget/skill_chart.dart';
import 'package:my_portfolio/presentation/skills/widget/skill_set.dart';
import 'package:my_portfolio/presentation/skills/widget/what_i_can_do_list.dart';
import 'package:my_portfolio/presentation/widget/custom_header_text.dart';
import 'package:sizer/sizer.dart';

import 'experience.dart';
import 'experience_info.dart';

class SkillsBody extends StatelessWidget {
  const SkillsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Column(
        crossAxisAlignment: ResponsiveSize.isDesktop(context)
            ? CrossAxisAlignment.center
            : CrossAxisAlignment.start,
        children: [
          const CustomHeaderText(
            text: 'SKILLS',
          ),
          const SizedBox(height: 32.0),
          const WhatICanDoList(),
          const SizedBox(height: 60.0),
          const SkillSet(),
          const SizedBox(height: 40.0),
          const SkillsChart(),
          const SizedBox(height: 48.0),
          const CustomHeaderText(
            text: 'EXPERIENCE',
          ),
          const SizedBox(height: 32.0),
          Center(
            child: Wrap(
              spacing: 3.w,
              runSpacing: 3.h,
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
