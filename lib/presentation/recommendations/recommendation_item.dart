import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/my_theme.dart';
import 'package:my_portfolio/core/widgets/responsive_size.dart';
import 'package:sizer/sizer.dart';

class RecommendationItem extends StatelessWidget {
  final String title;
  final String name;
  final String recommendation;
  final String imagePath;

  const RecommendationItem({
    super.key,
    required this.title,
    required this.name,
    required this.recommendation,
    required this.imagePath,
  });

  Widget build(BuildContext context) {
    return SizedBox(
      width: ResponsiveSize.isDesktop(context) ? 40.w : 70.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipOval(
                child: SizedBox(
                  height: 8.h,
                  width: 8.h,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit
                        .cover, // Ensures the image covers the entire circle
                  ),
                ),
              ),
              SizedBox(width: 2.w),
              Flexible(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: context.myTheme.bodyRegular
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      title,
                      style: context.myTheme.bodyRegular,
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 3.h),
          Text(
            recommendation,
            style: context.myTheme.bodyRegular,
          ),
          SizedBox(height: 2.h),
        ],
      ),
    );
  }
}
