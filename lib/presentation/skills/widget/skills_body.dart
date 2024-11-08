import 'package:flutter/cupertino.dart';
import 'package:my_portfolio/core/widgets/index.dart';
import 'package:my_portfolio/presentation/skills/widget/skills_desktop.dart';
import 'package:my_portfolio/presentation/skills/widget/skills_mobile.dart';

class SkillsBody extends StatelessWidget {
  const SkillsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveSize(
      mobile: SkillsMobile(),
      desktop: SkillsDesktop(),
    );
  }
}
