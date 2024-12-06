import 'package:flutter/material.dart';
import 'package:my_portfolio/presentation/skills/widget/what_i_can_do_icon.dart';
import 'package:sizer/sizer.dart';

class WhatICanDoList extends StatelessWidget {
  const WhatICanDoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.start,
      spacing: 3.h,
      runSpacing: 3.h,
      children: const [
        WhatIdoIcon(
          title: 'DEVELOP',
          icon: Icons.code,
          description: 'Mobile Application, Web Application',
        ),
        WhatIdoIcon(
          title: 'TEST',
          icon: Icons.bug_report,
          description: 'Unit Test, Integration Test, Manual Test',
        ),
        WhatIdoIcon(
          title: 'RELEASE',
          icon: Icons.rocket_launch,
          description: 'Android, iOS, Web Applications',
        ),
        WhatIdoIcon(
          title: 'MANAGE',
          description: 'Jira, Kanban, Notion',
          icon: Icons.checklist,
        ),
      ],
    );
  }
}
