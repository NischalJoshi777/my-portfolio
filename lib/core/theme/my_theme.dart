import 'package:flutter/material.dart';
import 'package:my_portfolio/core/color/colors.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'my_theme.tailor.dart';

@TailorMixin()
class MyTheme extends ThemeExtension<MyTheme> with _$MyThemeTailorMixin {
  @override
  final Color backgroundColor;
  @override
  final Color appBarColor;
  @override
  final Color iconColor;
  @override
  final TextStyle h1;
  @override
  final TextStyle h2;
  @override
  final TextStyle bodyRegular;
  @override
  final TextStyle bodySmall;
  @override
  final TextStyle bodyExtraSmall;
  @override
  final TextStyle bodyLarge;
  @override
  final String fontFamily;
  @override
  final Color primaryColor;
  @override
  final Color secondaryColor;
  @override
  final Color scaffoldBackGroundColor;
  @override
  final AppBarTheme appBarTheme;

  MyTheme({
    required this.scaffoldBackGroundColor,
    required this.backgroundColor,
    required this.appBarColor,
    required this.h1,
    required this.h2,
    required this.iconColor,
    required this.bodyRegular,
    required this.bodyLarge,
    required this.fontFamily,
    required this.primaryColor,
    required this.secondaryColor,
    required this.appBarTheme,
    required this.bodySmall,
    required this.bodyExtraSmall,
  });
}

const TextStyle _base = TextStyle(
  color: Palette.darkTextColor,
  fontFamily: 'Poppins',
  leadingDistribution: TextLeadingDistribution.even,
);

final darkTheme = MyTheme(
  iconColor: Palette.whiteColor,
  appBarColor: Palette.blackColor,
  backgroundColor: Palette.darkBackgroundColor,
  h1: _base.copyWith(fontSize: 48, height: 72 / 48),
  h2: _base.copyWith(fontSize: 32, height: 36 / 28),
  bodyLarge: _base.copyWith(fontSize: 16, height: 24 / 16),
  bodyRegular: _base.copyWith(fontSize: 14, height: 24 / 16),
  primaryColor: Palette.primaryColor,
  secondaryColor: Palette.secondaryColor,
  scaffoldBackGroundColor: Palette.darkBackgroundColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: Palette.darkBackgroundColor,
  ),
  fontFamily: 'Poppins',
  bodySmall: _base.copyWith(fontSize: 12.0, height: 24 / 16),
  bodyExtraSmall: _base.copyWith(fontSize: 10.0, height: 24 / 16),
);

final darkThemeData = ThemeData(
  brightness: Brightness.dark,
  extensions: [darkTheme],
);
