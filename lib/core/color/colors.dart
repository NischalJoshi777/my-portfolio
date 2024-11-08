import 'package:flutter/material.dart';

class Palette {
  static const primaryColor = Color(0xFF09FBD3);
  static const secondaryColor = Color(0xFFFE53BB);
  static const linkedInColor = Color(0xFF0077b5);
  static const githubColor = Color(0xFF171515);



  static const textColor = Color(0xFF2B2B2B);
  static const lightGrayColor = Color(0x44948282);
  static const whiteColor = Color(0xFFFFFFFF);
  static const blackColor = Color(0xFF2B2B2B);

  static const lightBackgroundColor = Color(0xFFFFFFFF);

  static const lightTextColor = Color(0xFF403930);

  static const darkBackgroundColor = Color(0xFF2B2B2B);

  static const darkTextColor = Color(0xFFF3F2FF);


  static const pinkpurple = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [Color(0XFFaa367c), Color(0XFF4a2fbd)],
  );

  static const grayBack = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0XFF2E2D36), Color(0XFF11101D)],
  );

  static const grayWhite = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFFFFFFF), Color(0xFFF3F2FF)],
  );

  static const buttonGradi = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0XFF7DE7EB), Color(0XFF33BBCF)],
  );

  static const contactGradi = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0XFF2E2D36), Color(0XFF11101D)],
  );

  static BoxShadow primaryColorShadow = BoxShadow(
    color: primaryColor.withAlpha(100),
    blurRadius: 12.0,
    offset: const Offset(0.0, 0.0),
  );
  static BoxShadow blackColorShadow = BoxShadow(
    color: Colors.black.withAlpha(100),
    blurRadius: 12.0,
    offset: const Offset(0.0, 0.0),
  );

}
