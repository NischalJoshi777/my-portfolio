import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/my_theme.dart';
import 'package:my_portfolio/core/widgets/responsive_size.dart';
import 'package:my_portfolio/data/recommendation.dart';
import 'package:my_portfolio/presentation/recommendations/recommendation_list.dart';
import 'package:my_portfolio/presentation/widget/custom_header_text.dart';
import 'package:sizer/sizer.dart';

class RecommendationBody extends StatelessWidget {
  const RecommendationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: ResponsiveSize.isDesktop(context)
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        SizedBox(height: 4.h),
        const CustomHeaderText(text: 'TESTIMONIALS'),
        Text(
          'These recommendations are from my LinkedIn profile.',
          style: context.myTheme.bodyRegular,
        ),
        SizedBox(height: 3.h),
        RecommendationList(recommendations: myRecommendations),
      ],
    );
  }
}
