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
            const _MyName(),
            const _AnimatedText(),
            const SizedBox(height: 10.0),
            Text(
              introMessage,
              style: ResponsiveSize.isMobile(context)
                  ? context.myTheme.bodyRegular.copyWith(
                      color: Palette.whiteColor,
                    )
                  : context.myTheme.bodyLarge.copyWith(
                      color: Palette.whiteColor,
                      fontWeight: FontWeight.w200,
                    ),
            ),
            SizedBox(height: 2.h),
            const SocialButtons(),
          ],
        ),
      ),
    );
  }
}

class _MyName extends StatefulWidget {
  const _MyName({super.key});

  @override
  State<_MyName> createState() => _MyNameState();
}

class _MyNameState extends State<_MyName> with SingleTickerProviderStateMixin {
  late Animation<double> opacity;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    opacity = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.ease,
      ),
    );

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: opacity,
      child: Text(
        'Nischal Joshi',
        style: ResponsiveSize.isDesktop(context)
            ? context.myTheme.h1.copyWith(
                color: Palette.whiteColor,
                fontWeight: FontWeight.bold,
              )
            : context.myTheme.h2.copyWith(
                color: Palette.whiteColor,
                fontWeight: FontWeight.bold,
              ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class _AnimatedText extends StatelessWidget {
  const _AnimatedText({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      isRepeatingAnimation: ResponsiveSize.isDesktop(context),
      repeatForever: true,
      animatedTexts: [
        TyperAnimatedText(
          skillset,
          speed: const Duration(milliseconds: 50),
          textStyle: ResponsiveSize.isDesktop(context)
              ? context.myTheme.h2.copyWith(
                  color: Palette.whiteColor,
                  fontWeight: FontWeight.w500,
                )
              : context.myTheme.bodyLarge.copyWith(
                  color: Palette.whiteColor,
                  fontWeight: FontWeight.w500,
                ),
        ),
      ],
    );
  }
}
