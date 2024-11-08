import 'package:flutter/cupertino.dart';
import 'package:my_portfolio/core/widgets/index.dart';
import 'package:my_portfolio/presentation/projects/project_desktop.dart';
import 'package:my_portfolio/presentation/projects/project_mobile.dart';

class ProjectBody extends StatelessWidget {
  const ProjectBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveSize(
      mobile: ProjectMobile(),
      desktop: ProjectDesktop(),
    );
  }
}
