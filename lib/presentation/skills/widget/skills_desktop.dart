import 'package:flutter/material.dart';
import 'package:my_portfolio/const/icons.dart';
import 'package:my_portfolio/core/color/colors.dart';
import 'package:my_portfolio/core/theme/my_theme.dart';
import 'package:my_portfolio/core/widgets/index.dart';
import 'package:my_portfolio/presentation/skills/widget/skill_chart.dart';
import 'package:my_portfolio/presentation/widget/custom_header_text.dart';
import 'package:my_portfolio/presentation/widget/gradient_text.dart';
import 'package:sizer/sizer.dart';

import 'experience.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Column(
        children: [
          const CustomHeaderText(
            text: 'SKILLS',
          ),
          const SizedBox(height: 32.0),
          const _WhatICanDoList(),
          const SizedBox(height: 60.0),
          const _SkillSet(),
          const SizedBox(height: 40.0),
          const SkillsChart(),
          const SizedBox(height: 48.0),
          const CustomHeaderText(
            text: 'EXPERIENCE',
          ),
          const SizedBox(height: 32.0),
          Center(
            child: Wrap(
              spacing: 20.0,
              runSpacing: 40.0,
              children: expList
                  .map(
                    (exp) => SizedBox(
                      width: constraints.maxWidth / 2.4 - 20.0,
                      child: _ExperienceInfo(
                        title: exp.title,
                        countries: exp.countries,
                        info: exp.info,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          const SizedBox(height: 32.0),
        ],
      );
    });
  }
}

class _WhatIdoIcon extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;

  const _WhatIdoIcon({
    super.key,
    required this.title,
    required this.icon,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width:  38.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            width: 1.0,
            color: Palette.whiteColor,
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12.0,
          vertical: 24.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: ResponsiveSize.isDesktop(context) ? 48.0 : 24.0,
            ),
            const SizedBox(height: 8.0),
            GradientText(
              title,
            ),
            const SizedBox(height: 12.0),
            Text(
              description,
              textAlign: TextAlign.center,
              style: ResponsiveSize.isDesktop(context)
                  ? context.bodyLarge.copyWith()
                  : context.bodyExtraSmall.copyWith(),
            ),
          ],
        ),
      ),
    );
  }
}

class _WhatICanDoList extends StatelessWidget {
  const _WhatICanDoList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          _WhatIdoIcon(
            title: 'DEVELOP',
            icon: Icons.code,
            description: 'Mobile Application, Web Application',
          ),
          SizedBox(width: 28.0),
          _WhatIdoIcon(
            title: 'TEST',
            icon: Icons.bug_report,
            description: 'Unit Test, Integration Test, Manual Test',
          ),
          SizedBox(width: 28.0),
          _WhatIdoIcon(
            title: 'RELEASE',
            icon: Icons.rocket_launch,
            description: 'Android, iOS, Web Applications',
          ),
          SizedBox(width: 28.0),
          _WhatIdoIcon(
            title: 'MANAGE',
            description: 'Jira, Kanban, Notion',
            icon: Icons.checklist,
          ),
        ],
      ),
    );
  }
}

class _SkillSet extends StatelessWidget {
  const _SkillSet({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          MyIcons.flutter,
          height: 48.0,
          width: 48.0,
        ),
        const SizedBox(width: 36.0),
        Image.asset(
          MyIcons.dart,
          height: 48.0,
          width: 48.0,
        ),
        const SizedBox(width: 36.0),
        Image.asset(
          MyIcons.android,
          height: 48.0,
          width: 48.0,
        ),
        const SizedBox(width: 36.0),
        Image.asset(
          MyIcons.iOS,
          height: 48.0,
          width: 48.0,
        ),
        const SizedBox(width: 36.0),
        Image.asset(
          MyIcons.python,
          height: 48.0,
          width: 48.0,
        ),
        const SizedBox(width: 36.0),
        Image.asset(
          MyIcons.html5,
          height: 48.0,
          width: 48.0,
        ),
        const SizedBox(width: 36.0),
        Image.asset(
          MyIcons.css,
          height: 48.0,
          width: 48.0,
        ),
        const SizedBox(width: 36.0),
        Image.asset(
          MyIcons.javascript,
          height: 48.0,
          width: 48.0,
        ),
      ],
    );
  }
}

class _ExperienceInfo extends StatelessWidget {
  const _ExperienceInfo({
    super.key,
    required this.title,
    required this.countries,
    required this.info,
  });

  final String title;
  final String countries;
  final String info;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTitle(title),
        const SizedBox(
          height: 8.0,
        ),
        _buildCountries(countries),
        const SizedBox(
          height: 8.0,
        ),
        _buildCountries(info),
      ],
    );
  }

  Widget _buildTitle(String title) {
    return Builder(
      builder: (context) {
        return Text(
          title.toUpperCase(),
          style: context.h2.copyWith(fontWeight: FontWeight.w500),
        );
      },
    );
  }

  Widget _buildCountries(String countries) {
    return Builder(
      builder: (context) {
        return Text(
          countries,
          style: context.bodyLarge.copyWith(fontWeight: FontWeight.w300),
        );
      },
    );
  }
}
