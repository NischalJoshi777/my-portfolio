import 'package:flutter/cupertino.dart';
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

List<Recommendations> myRecommendations = [
  Recommendations(
      title: "Lead Mobile Engineer",
      name: "Kapil Maharjan",
      imagePath: "assets/imgs/my_profile.jpg",
      recommendation:
          '"Nischal is a highly motivated individual with an unwavering commitment to achieving his goals. He is a quick learner, and he consistently took on new challenges with enthusiasm, demonstrating an ability to work independently while also being an excellent team player. Nischal is an effective communicator and never hesitated to provide valuable feedback and suggestions to the team. Nischal is an excellent colleague and an asset to any organization. I would highly recommend him for any position he seeks, and I am confident he will excel in any role he takes on."'),
  Recommendations(
      title: "Assitant Technology Manager",
      name: "Kushal Rajbhandari",
      imagePath: "assets/imgs/my_profile.jpg",
      recommendation:
          '"Nischal is a highly motivated individual with an unwavering commitment to achieving his goals. He is a quick learner, and he consistently took on new challenges with enthusiasm, demonstrating an ability to work independently while also being an excellent team player. Nischal is an effective communicator and never hesitated to provide valuable feedback and suggestions to the team. Nischal is an excellent colleague and an asset to any organization. I would highly recommend him for any position he seeks, and I am confident he will excel in any role he takes on."'),
];

class Recommendations {
  final String title;
  final String name;
  final String imagePath;
  final String recommendation;

  Recommendations({
    required this.title,
    required this.name,
    required this.imagePath,
    required this.recommendation,
  });
}
