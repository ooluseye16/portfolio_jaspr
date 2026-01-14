class Experience {
  final String company;
  final String role;
  final String period;
  final String description;
  final String? link;
  final String? logo;

  const Experience({
    required this.company,
    required this.role,
    required this.period,
    required this.description,
    this.link,
    this.logo,
  });
}
