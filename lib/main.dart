import 'package:flutter/material.dart';
import 'package:my_portfolio/core/routing/index.dart';
import 'package:my_portfolio/core/theme/my_theme.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyPortfolio());
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Nischal',
        routerConfig: router,
        darkTheme: darkThemeData,
      );
    });
  }
}
