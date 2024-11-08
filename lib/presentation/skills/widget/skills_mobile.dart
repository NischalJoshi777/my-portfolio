import 'package:flutter/cupertino.dart';
import 'package:my_portfolio/presentation/widget/custom_header_text.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomHeaderText(
          text: 'SKILLS',
        ),
        const SizedBox(height: 32.0),
      ],
    );
  }
}
