import 'package:flutter/material.dart';
import 'package:my_portfolio/core/color/colors.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'my_theme.tailor.dart';

@TailorMixin(themeGetter: ThemeGetter.onBuildContext)
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
  final Color primaryColor;
  @override
  final Color secondaryColor;
  @override
  final Color scaffoldBackGroundColor;
  @override
  final AppBarTheme appBarTheme;

  static const TextStyle _base = TextStyle(
    color: Palette.whiteColor,
    fontFamily: 'Poppins',
    leadingDistribution: TextLeadingDistribution.even,
  );

  static final h1Style = _base.copyWith(fontSize: 48, height: 72 / 48);
  static final h2Style = _base.copyWith(fontSize: 32, height: 36 / 28);
  static final bodyLargeStyle = _base.copyWith(fontSize: 16, height: 24 / 16);
  static final bodyRegularStyle = _base.copyWith(fontSize: 14, height: 24 / 16);
  static final bodySmallStyle = _base.copyWith(fontSize: 12.0, height: 24 / 16);
  static final bodyExtraSmallStyle =
      _base.copyWith(fontSize: 10.0, height: 24 / 16);

  MyTheme({
    required this.scaffoldBackGroundColor,
    required this.backgroundColor,
    required this.appBarColor,
    required this.h1,
    required this.h2,
    required this.iconColor,
    required this.bodyRegular,
    required this.bodyLarge,
    required this.primaryColor,
    required this.secondaryColor,
    required this.appBarTheme,
    required this.bodySmall,
    required this.bodyExtraSmall,
  });
}

final darkTheme = MyTheme(
  iconColor: Palette.whiteColor,
  appBarColor: Palette.blackColor,
  backgroundColor: Palette.darkBackgroundColor,
  h1: MyTheme.h1Style,
  h2: MyTheme.h2Style,
  bodyLarge: MyTheme.bodyLargeStyle,
  bodyRegular: MyTheme.bodyRegularStyle,
  primaryColor: Palette.primaryColor,
  secondaryColor: Palette.secondaryColor,
  scaffoldBackGroundColor: Palette.darkBackgroundColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: Palette.darkBackgroundColor,
  ),
  bodySmall: MyTheme.bodySmallStyle,
  bodyExtraSmall: MyTheme.bodyExtraSmallStyle,
);
