import 'package:flutter/material.dart';
import 'package:my_portfolio/core/routing/index.dart';
import 'package:my_portfolio/core/theme/my_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyPortfolio());
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    final darkThemeData = ThemeData(
      brightness: Brightness.dark,
      extensions: [darkTheme],
    );

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Nischal',
      routerConfig: router,
      theme: darkThemeData,
    );
  }
}
