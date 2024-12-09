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

List<Recommendations> myRecommendations = [
  Recommendations(
      title: "Software Engineer",
      name: 'Nischal Joshi',
      imagePath: "assets/imgs/adarsha.jpeg",
      recommendation:
          '"I have worked with Nischal for almost three years at Fusemachines and '
          'I have had the pleasure of witnessing his exceptional work ethic, dedication and proficiency. '
          'His commitment to delivering high-quality results is visible in every task he undertakes, '
          'whether it\'s meeting tight deadlines or tackling complex challenges.He brings a wealth of expertise in the field of mobile app'
          ' development, from initial planning and design phase to the final stages of deployment. '
          'This comprehensive understanding enabled him to contribute significantly to the success of our projects and ensured that the final'
          ' products met the highest standards.In addition to his development skills, he possesses exceptional project management and'
          ' communication skills. He is not only quick at identifying potential problems but also takes the initiative to proactively solve them. '
          'He has a solid grasp of project management and is well-versed in the Scrum/Agile workflow. This proficiency greatly benefitted our team during planning and overall project execution. '
          'He has played a pivotal role in ensuring the smooth functioning of our projects, contributing valuable insights that enhance our efficiency and collaboration.I wholeheartedly recommend '
          'Nischal as an exceptional professional and team player. His hard work, problem-solving abilities, and proficiency in development skills make him an invaluable asset to any team.'
          'I am confident that he will continue to excel in future endeavors."'),
  Recommendations(
      title: "Lead Mobile Engineer",
      name: "Kapil Maharjan",
      imagePath: "assets/imgs/kapil.jpeg",
      recommendation:
          '"Nischal is a highly motivated individual with an unwavering commitment to achieving his goals. He is a quick learner, and he consistently took on new challenges with enthusiasm, demonstrating an ability to work independently while also being an excellent team player. Nischal is an effective communicator and never hesitated to provide valuable feedback and suggestions to the team. Nischal is an excellent colleague and an asset to any organization. I would highly recommend him for any position he seeks, and I am confident he will excel in any role he takes on."'),
];
