import 'dart:convert';
import 'dart:js_interop';

import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:web/web.dart' as web;

import '../data/portfolio_data.dart';
import '../models/github_repo.dart';

/// Component that fetches and displays GitHub repositories
class GitHubReposComponent extends StatefulComponent {
  const GitHubReposComponent({super.key});

  @override
  State<GitHubReposComponent> createState() => _GitHubReposComponentState();
}

class _GitHubReposComponentState extends State<GitHubReposComponent> {
  List<GitHubRepo>? _repos;
  bool _isLoading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _fetchRepos();
  }

  Future<void> _fetchRepos() async {
    try {
      final username = PersonalInfo.githubUsername;
      if (username == 'YOUR_GITHUB_USERNAME') {
        setState(() {
          _error = 'Please update your GitHub username in portfolio_data.dart';
          _isLoading = false;
        });
        return;
      }

      final url =
          'https://api.github.com/users/$username/repos?sort=updated&per_page=6';
      final response = await web.window.fetch(url.toJS).toDart;

      if (!response.ok) {
        throw Exception('GitHub API returned ${response.status}');
      }

      final jsText = await response.text().toDart;
      final text = jsText.toDart;
      final List<dynamic> data = jsonDecode(text);

      setState(() {
        _repos = data
            .map((json) => GitHubRepo.fromJson(json as Map<String, dynamic>))
            .toList();
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _error = 'Unable to load repositories';
        _isLoading = false;
      });
    }
  }

  @override
  Component build(BuildContext context) {
    if (_isLoading) {
      return div(classes: 'github-loading', [.text('Loading repositories...')]);
    }

    if (_error != null) {
      return div(classes: 'github-loading', [.text(_error!)]);
    }

    if (_repos == null || _repos!.isEmpty) {
      return div(classes: 'github-loading', [
        .text('No public repositories found.'),
      ]);
    }

    return div(classes: 'github-grid', [
      for (var i = 0; i < _repos!.length; i++) _buildRepoCard(_repos![i], i),
    ]);
  }

  Component _buildRepoCard(GitHubRepo repo, int index) {
    return a(
      href: repo.htmlUrl,
      target: Target.blank,
      classes: 'repo-card animate-scale',
      [
        div(classes: 'repo-header', [
          h3(classes: 'repo-name', [.text(repo.name)]),
          if (repo.stargazersCount > 0)
            div(classes: 'repo-stars', [.text('⭐ ${repo.stargazersCount}')]),
        ]),
        p(classes: 'repo-description', [
          .text(repo.description ?? 'No description available'),
        ]),
        div(classes: 'repo-footer', [
          if (repo.language != null)
            div(classes: 'repo-language', [
              span(classes: 'language-dot', []),
              .text(repo.language!),
            ])
          else
            div([]),
          span(classes: 'repo-link', [.text('View →')]),
        ]),
      ],
    );
  }
}
