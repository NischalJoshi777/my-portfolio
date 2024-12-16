import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/my_theme.dart';
import 'package:my_portfolio/core/widgets/responsive_size.dart';

class ExperienceInfo extends StatelessWidget {
  const ExperienceInfo({
    super.key,
    required this.title,
    required this.countries,
    required this.info,
  });

  final String title;
  final String countries;
  final String info;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTitle(title),
        const SizedBox(
          height: 8.0,
        ),
        _buildCountries(countries),
        const SizedBox(
          height: 8.0,
        ),
        _buildCountries(info),
      ],
    );
  }

  Widget _buildTitle(String title) {
    return Builder(
      builder: (context) {
        return Text(
          title.toUpperCase(),
          style: ResponsiveSize.isDesktop(context)
              ? context.myTheme.h2.copyWith(fontWeight: FontWeight.bold)
              : context.myTheme.bodyLarge.copyWith(fontWeight: FontWeight.bold),
        );
      },
    );
  }

  Widget _buildCountries(String countries) {
    return Builder(
      builder: (context) {
        return Text(
          countries,
          style:
              context.myTheme.bodyLarge.copyWith(fontWeight: FontWeight.w300),
        );
      },
    );
  }
}
