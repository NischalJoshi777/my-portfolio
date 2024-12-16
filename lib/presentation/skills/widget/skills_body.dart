import 'package:flutter/cupertino.dart';
import 'package:my_portfolio/core/widgets/index.dart';
import 'package:my_portfolio/presentation/skills/widget/experience.dart';
import 'package:my_portfolio/presentation/skills/widget/experience_info.dart';
import 'package:my_portfolio/presentation/skills/widget/skill_chart.dart';
import 'package:my_portfolio/presentation/skills/widget/skill_set.dart';
import 'package:my_portfolio/presentation/skills/widget/what_i_can_do_list.dart';
import 'package:my_portfolio/presentation/widget/custom_header_text.dart';
import 'package:sizer/sizer.dart';

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
          SizedBox(height: 2.h),
          const WhatICanDoList(),
          SizedBox(height: 2.h),
          const SkillSet(),
          SizedBox(height: 2.h),
          const SkillsChart(),
          SizedBox(height: 3.h),
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
