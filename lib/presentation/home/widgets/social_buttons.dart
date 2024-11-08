import 'package:flutter/material.dart';
import 'package:my_portfolio/core/color/colors.dart';
import 'package:my_portfolio/core/theme/my_theme.dart';
import 'package:my_portfolio/core/widgets/index.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        PrimaryButton(
            color: Palette.linkedInColor,
            child: Text(
              'LinkedIn',
              style: ResponsiveSize.isDesktop(context)
                  ? context.bodyLarge.copyWith(
                      color: Palette.whiteColor,
                    )
                  : context.bodyRegular.copyWith(
                      color: Palette.whiteColor,
                    ),
            )),
        const SizedBox(
          width: 12.0,
        ),
        PrimaryButton(
            color: Colors.white70,
            child: Text(
              'GitHub',
              style: ResponsiveSize.isDesktop(context)
                  ? context.bodyLarge.copyWith(
                      color: Palette.whiteColor,
                    )
                  : context.bodyRegular.copyWith(
                      color: Palette.whiteColor,
                    ),
            )),
      ],
    );
  }
}

class PrimaryButton extends StatelessWidget {
  final Widget child;
  final Color color;

  const PrimaryButton({
    super.key,
    required this.child,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(8.0), // Adjust the radius as needed
        ),
      ),
      child: child,
    );
  }
}
