import 'package:flutter/cupertino.dart';
import 'package:my_portfolio/data/recommendation.dart';
import 'package:my_portfolio/presentation/recommendations/recommendation_item.dart';

class RecommendationList extends StatelessWidget {
  final List<Recommendations> recommendations;

  const RecommendationList({
    super.key,
    required this.recommendations,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.start,
      spacing: 20.0,
      runSpacing: 40.0,
      children: recommendations
          .map((e) => RecommendationItem(
                title: e.title,
                name: e.name,
                imagePath: e.imagePath,
                recommendation: e.recommendation,
              ))
          .toList(),
    );
  }
}
