import 'package:flutter/cupertino.dart';
import 'package:my_portfolio/core/theme/my_theme.dart';
import 'package:my_portfolio/core/widgets/responsive_size.dart';
import 'package:my_portfolio/presentation/projects/project_card.dart';
import 'package:my_portfolio/presentation/projects/project_utils.dart';
import 'package:my_portfolio/presentation/widget/custom_header_text.dart';
import 'package:sizer/sizer.dart';

class ProjectBody extends StatelessWidget {
  const ProjectBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: ResponsiveSize.isDesktop(context)
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        const CustomHeaderText(text: "\nPROJECTS"),
        const SizedBox(height: 20.0),
        Text(
          'Checkout few of the major projects that I have worked on till the date!',
          style: context.bodyLarge,
        ),
        const SizedBox(height: 30.0),
        const _ProjectList(),
      ],
    );
  }
}

class _ProjectList extends StatelessWidget {
  const _ProjectList({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.start,
      runSpacing: 5.h,
      children: projectUtils
          .asMap()
          .entries
          .map(
            (e) => ProjectCard(project: e.value),
          )
          .toList(),
    );
  }
}
