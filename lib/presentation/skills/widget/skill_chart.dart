import 'package:flutter/material.dart';
import 'package:my_portfolio/core/widgets/index.dart';
import 'package:my_portfolio/presentation/skills/skills.dart';
import 'package:sizer/sizer.dart';

List<Skill> skills = [
  Skill(
    skill: "Dart",
    percentage: 82,
  ),
  Skill(
    skill: "Java",
    percentage: 60,
  ),
  Skill(
    skill: "Javascript",
    percentage: 55,
  ),
  Skill(
    skill: "Python",
    percentage: 40,
  ),
  Skill(
    skill: "C++",
    percentage: 40,
  ),
];

class SkillsChart extends StatelessWidget {
  const SkillsChart({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSize(
      desktop: _buildUi(),
      mobile: _buildUi(),
    );
  }

  Widget _buildUi() {
    return Center(
      child: Builder(builder: (context) {
        return Flex(
          direction: ResponsiveSize.isMobile(context)
              ? Axis.vertical
              : Axis.horizontal,
          children: [
            ResponsiveSize.isDesktop(context)
                ? ClipOval(
                    child: Container(
                      height: 32.h,
                      width: 32.h,
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      child: Image.asset(
                        'assets/imgs/my_profile.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                : const SizedBox.shrink(),
            const SizedBox(width: 50.0),
            Expanded(
              flex: ResponsiveSize.isMobile(context) ? 0 : 5,
              child: Column(
                children: skills
                    .map(
                      (skill) => Container(
                        margin: EdgeInsets.only(bottom: 15.0, right: 5.w),
                        child: Row(
                          children: [
                            Expanded(
                              flex: skill.percentage,
                              child: Container(
                                padding: const EdgeInsets.only(left: 10.0),
                                alignment: Alignment.centerLeft,
                                height: 38.0,
                                color: Colors.white,
                                child: Text(skill.skill),
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              flex: 100 - skill.percentage,
                              child: const Divider(
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              "${skill.percentage} %",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            )
          ],
        );
      }),
    );
  }
}
