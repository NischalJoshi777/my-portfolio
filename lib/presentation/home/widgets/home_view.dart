import 'package:flutter/material.dart';
import 'package:my_portfolio/core/widgets/index.dart';

import 'home_desktop.dart';
import 'home_mobile.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveSize(
      desktop: HomeDesktop() ,
      mobile: HomeMobile(),
    );
  }
}
