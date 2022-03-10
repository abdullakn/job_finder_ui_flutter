class Job {
  String company;
  String logoUrl;
  bool isMark;
  String title;
  String location;
  String time;
  List<String> req;

  Job(
      {required this.company,
      required this.logoUrl,
      required this.isMark,
      required this.title,
      required this.location,
      required this.time,
      required this.req});

  static List<Job> getJob() {
    return [
      Job(
          company: 'Google LLC',
          logoUrl: "assets/images/Google.jpg",
          isMark: true,
          title: "Software Developer",
          location: "banglore",
          time: "Full Time",
          req: [
            'HTML',
            'CSS',
            'Python',
            'Docker',
            'Nginx',
            'Server side concept'
          ]),
      Job(
          company: 'Amazon',
          logoUrl: "assets/images/amazon.png",
          isMark: false,
          title: "Software Developer",
          location: "Noida",
          time: "Full Time",
          req: [
            'HTML',
            'CSS',
            'Python',
            'Docker',
            'Nginx',
            'Server side concepts',
            'ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd'
          ])
    ];
  }
}
