class Experience {
  final String title;
  final String info;
  final String countries;

  Experience({
    required this.title,
    required this.info,
    required this.countries,
  });
}


final List<Experience> expList = [
  Experience
    (
    title: 'LMS (Learning Management System)',
    countries: 'US, Nepal, South Africa, Dominican Republic',
    info:
    'Video Player, Online call, Reminders, Push Notifications',
  ),  Experience(
    title: 'TMS (Talent Management System)',
    countries: 'US, Nepal, India, Argentina, Dominican Republic',
    info: 'Biometric Info, Customized Calendar, Push Notifications',
  ),
  Experience(
    title: 'OTA (Online Travel Agency)',
    countries: 'Nepal, Bhutan, India',
    info: 'GPS, Google API, Map, Payment Integration',
  ),
];