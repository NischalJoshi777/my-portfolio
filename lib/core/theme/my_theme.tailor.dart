// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'my_theme.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$MyThemeTailorMixin on ThemeExtension<MyTheme> {
  Color get backgroundColor;
  Color get appBarColor;
  Color get iconColor;
  TextStyle get h1;
  TextStyle get h2;
  TextStyle get bodyRegular;
  TextStyle get bodySmall;
  TextStyle get bodyExtraSmall;
  TextStyle get bodyLarge;
  Color get primaryColor;
  Color get secondaryColor;
  Color get scaffoldBackGroundColor;
  AppBarTheme get appBarTheme;

  @override
  MyTheme copyWith({
    Color? backgroundColor,
    Color? appBarColor,
    Color? iconColor,
    TextStyle? h1,
    TextStyle? h2,
    TextStyle? bodyRegular,
    TextStyle? bodySmall,
    TextStyle? bodyExtraSmall,
    TextStyle? bodyLarge,
    Color? primaryColor,
    Color? secondaryColor,
    Color? scaffoldBackGroundColor,
    AppBarTheme? appBarTheme,
  }) {
    return MyTheme(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      appBarColor: appBarColor ?? this.appBarColor,
      iconColor: iconColor ?? this.iconColor,
      h1: h1 ?? this.h1,
      h2: h2 ?? this.h2,
      bodyRegular: bodyRegular ?? this.bodyRegular,
      bodySmall: bodySmall ?? this.bodySmall,
      bodyExtraSmall: bodyExtraSmall ?? this.bodyExtraSmall,
      bodyLarge: bodyLarge ?? this.bodyLarge,
      primaryColor: primaryColor ?? this.primaryColor,
      secondaryColor: secondaryColor ?? this.secondaryColor,
      scaffoldBackGroundColor:
          scaffoldBackGroundColor ?? this.scaffoldBackGroundColor,
      appBarTheme: appBarTheme ?? this.appBarTheme,
    );
  }

  @override
  MyTheme lerp(covariant ThemeExtension<MyTheme>? other, double t) {
    if (other is! MyTheme) return this as MyTheme;
    return MyTheme(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
      appBarColor: Color.lerp(appBarColor, other.appBarColor, t)!,
      iconColor: Color.lerp(iconColor, other.iconColor, t)!,
      h1: TextStyle.lerp(h1, other.h1, t)!,
      h2: TextStyle.lerp(h2, other.h2, t)!,
      bodyRegular: TextStyle.lerp(bodyRegular, other.bodyRegular, t)!,
      bodySmall: TextStyle.lerp(bodySmall, other.bodySmall, t)!,
      bodyExtraSmall: TextStyle.lerp(bodyExtraSmall, other.bodyExtraSmall, t)!,
      bodyLarge: TextStyle.lerp(bodyLarge, other.bodyLarge, t)!,
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t)!,
      secondaryColor: Color.lerp(secondaryColor, other.secondaryColor, t)!,
      scaffoldBackGroundColor: Color.lerp(
          scaffoldBackGroundColor, other.scaffoldBackGroundColor, t)!,
      appBarTheme: t < 0.5 ? appBarTheme : other.appBarTheme,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MyTheme &&
            const DeepCollectionEquality()
                .equals(backgroundColor, other.backgroundColor) &&
            const DeepCollectionEquality()
                .equals(appBarColor, other.appBarColor) &&
            const DeepCollectionEquality().equals(iconColor, other.iconColor) &&
            const DeepCollectionEquality().equals(h1, other.h1) &&
            const DeepCollectionEquality().equals(h2, other.h2) &&
            const DeepCollectionEquality()
                .equals(bodyRegular, other.bodyRegular) &&
            const DeepCollectionEquality().equals(bodySmall, other.bodySmall) &&
            const DeepCollectionEquality()
                .equals(bodyExtraSmall, other.bodyExtraSmall) &&
            const DeepCollectionEquality().equals(bodyLarge, other.bodyLarge) &&
            const DeepCollectionEquality()
                .equals(primaryColor, other.primaryColor) &&
            const DeepCollectionEquality()
                .equals(secondaryColor, other.secondaryColor) &&
            const DeepCollectionEquality().equals(
                scaffoldBackGroundColor, other.scaffoldBackGroundColor) &&
            const DeepCollectionEquality()
                .equals(appBarTheme, other.appBarTheme));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(backgroundColor),
      const DeepCollectionEquality().hash(appBarColor),
      const DeepCollectionEquality().hash(iconColor),
      const DeepCollectionEquality().hash(h1),
      const DeepCollectionEquality().hash(h2),
      const DeepCollectionEquality().hash(bodyRegular),
      const DeepCollectionEquality().hash(bodySmall),
      const DeepCollectionEquality().hash(bodyExtraSmall),
      const DeepCollectionEquality().hash(bodyLarge),
      const DeepCollectionEquality().hash(primaryColor),
      const DeepCollectionEquality().hash(secondaryColor),
      const DeepCollectionEquality().hash(scaffoldBackGroundColor),
      const DeepCollectionEquality().hash(appBarTheme),
    );
  }
}

extension MyThemeBuildContext on BuildContext {
  MyTheme get myTheme => Theme.of(this).extension<MyTheme>()!;
}
