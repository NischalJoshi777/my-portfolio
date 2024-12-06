import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/const/messages.dart';
import 'package:my_portfolio/core/color/colors.dart';
import 'package:my_portfolio/core/theme/my_theme.dart';
import 'package:my_portfolio/core/widgets/index.dart';
import 'package:my_portfolio/presentation/home/widgets/social_buttons.dart';
import 'package:sizer/sizer.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.w),
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nischal Joshi',
                style: ResponsiveSize.isDesktop(context)
                    ? context.h1.copyWith(
                        color: Palette.whiteColor,
                        fontWeight: FontWeight.bold,
                      )
                    : context.h2.copyWith(
                        color: Palette.whiteColor,
                        fontWeight: FontWeight.bold,
                      )),
            AnimatedTextKit(
              isRepeatingAnimation: ResponsiveSize.isDesktop(context),
              repeatForever: true,
              animatedTexts: [
                TyperAnimatedText(
                  skillset,
                  speed: const Duration(milliseconds: 50),
                  textStyle: ResponsiveSize.isDesktop(context)
                      ? context.h2.copyWith(
                          color: Palette.whiteColor,
                          fontWeight: FontWeight.w500,
                        )
                      : context.bodyLarge.copyWith(
                          color: Palette.whiteColor,
                          fontWeight: FontWeight.w500,
                        ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Text(
              introMessage,
              style: context.bodyLarge.copyWith(
                color: Palette.whiteColor,
                fontWeight: FontWeight.w200,
              ),
              maxLines: 6,
            ),
            SizedBox(
              height: 2.h,
            ),
            const SocialButtons(),
          ],
        ),
      ),
    );
  }
}
