import 'package:flutter/material.dart';
import 'package:my_portfolio/core/color/colors.dart';
import 'package:my_portfolio/core/theme/my_theme.dart';
import 'package:my_portfolio/core/widgets/index.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        PrimaryButton(
            onPressed: () => launchUrl(
                  Uri.parse('https://www.linkedin.com/in/nischal-joshi777/'),
                  mode: LaunchMode.externalApplication,
                ),
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
            onPressed: () => launchUrl(
                  Uri.parse('https://github.com/NischalJoshi777'),
                  mode: LaunchMode.externalApplication,
                ),
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
  final VoidCallback onPressed;

  const PrimaryButton(
      {super.key,
      required this.child,
      required this.color,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
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
