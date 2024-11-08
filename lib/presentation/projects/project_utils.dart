class ProjectUtils {
  final String banners;
  final String icons;
  final String titles;
  final String description;
  final String links;
  ProjectUtils({
    required this.banners,
    required this.icons,
    required this.titles,
    required this.description,
    required this.links,
  });
}

List<ProjectUtils> projectUtils = [
  ProjectUtils(
    banners: 'assets/imgs/fuse_classroom.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Fuse Classroom',
    description:
    'Student side mobile application for the Fuseclassroom LMS.',
    links: 'https://github.com/sudeshnb/poetically-.git',
  ),
  ProjectUtils(
    banners: 'assets/imgs/fuse_parents.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Awesome CRM UI',
    description:
    'Parent side mobile application for the Fuseclassroom LMS.',
    links: 'https://github.com/sudeshnb/',
  ),
  ProjectUtils(
    banners: 'assets/imgs/squadery_connect.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Exercise App',
    description:
    'Employee side application of the Squadery TMS.',
    links: 'https://github.com/sudeshnb/elderly_exercise_app.git',
  ),
  ProjectUtils(
    banners: 'assets/imgs/squadery_connect.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Exercise App',
    description:
    'Employee side application of the Squadery TMS.',
    links: 'https://github.com/sudeshnb/elderly_exercise_app.git',
  ),
];
