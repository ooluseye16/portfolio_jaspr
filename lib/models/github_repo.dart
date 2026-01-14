class GitHubRepo {
  final String name;
  final String? description;
  final String htmlUrl;
  final String? language;
  final int stargazersCount;
  final int forksCount;
  final DateTime updatedAt;

  const GitHubRepo({
    required this.name,
    this.description,
    required this.htmlUrl,
    this.language,
    required this.stargazersCount,
    required this.forksCount,
    required this.updatedAt,
  });

  factory GitHubRepo.fromJson(Map<String, dynamic> json) {
    return GitHubRepo(
      name: json['name'] as String,
      description: json['description'] as String?,
      htmlUrl: json['html_url'] as String,
      language: json['language'] as String?,
      stargazersCount: json['stargazers_count'] as int,
      forksCount: json['forks_count'] as int,
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );
  }
}
