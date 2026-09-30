class Project {
  final String title;
  final String description;
  final List<String> technologies;
  final String? githubUrl;
  final String? liveUrl;
  final bool isFeatured;

  /// Optional grouping for the "Projects" section: 'game', 'package' or 'side'.
  /// Leave null for a regular project.
  final String? category;

  /// Path to a self-contained interactive app-map demo (embedded via iframe),
  /// for apps that aren't publicly downloadable.
  final String? interactiveDemoUrl;

  const Project({
    required this.title,
    required this.description,
    required this.technologies,
    this.githubUrl,
    this.liveUrl,
    this.isFeatured = false,
    this.category,
    this.interactiveDemoUrl,
  });
}
