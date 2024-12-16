import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/presentation/home/widgets/home_view.dart';
import 'package:my_portfolio/presentation/projects/project_body.dart';
import 'package:my_portfolio/presentation/recommendations/recommendation_body.dart';
import 'package:my_portfolio/presentation/skills/widget/skills_body.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../scroll_cubit/scroll_cubit.dart';
import 'copy_right_body.dart';

class BodySections {
  static const List<Widget> views = [
    HomeView(),
    SkillsBody(),
    ProjectBody(),
    RecommendationBody(),
    CopyRightBody(),
  ];
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollcubit = context.read<ScrollCubit>();
    return ScrollablePositionedList.builder(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      itemCount: BodySections.views.length,
      itemBuilder: (context, index) => BodySections.views[index],
      itemScrollController: scrollcubit.itemScrollController,
    );
  }
}
