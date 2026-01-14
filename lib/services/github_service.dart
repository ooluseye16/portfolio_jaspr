import 'dart:async'; // Added for Completer
import 'dart:convert';

import 'package:web/web.dart' as web; // Changed import

import '../models/github_repo.dart';

class GitHubService {
  static const String _baseUrl = 'https://api.github.com';

  // Fetch user repositories
  static Future<List<GitHubRepo>> fetchUserRepos(
    String username, {
    int perPage = 6,
  }) async {
    try {
      final url =
          '$_baseUrl/users/$username/repos?sort=updated&per_page=$perPage';

      // Replaced html.HttpRequest.getString with web.XMLHttpRequest
      final request = web.XMLHttpRequest();
      request.open('GET', url);

      final completer = Completer<String>();
      request.onLoad.listen((_) {
        if (request.status == 200) {
          completer.complete(request.responseText);
        } else {
          completer.completeError('HTTP ${request.status}');
        }
      });
      request.onError.listen((error) {
        completer.completeError(error);
      });
      request.send();

      final response = await completer.future;
      final List<dynamic> jsonData = json.decode(response);

      return jsonData
          .map((json) => GitHubRepo.fromJson(json as Map<String, dynamic>))
          .toList();
    } catch (e) {
      print('Error fetching GitHub repos: $e');
      return [];
    }
  }

  // Fetch repositories sorted by stars
  static Future<List<GitHubRepo>> fetchPopularRepos(
    String username, {
    int perPage = 6,
  }) async {
    try {
      final repos = await fetchUserRepos(username, perPage: 30);
      repos.sort((a, b) => b.stargazersCount.compareTo(a.stargazersCount));
      return repos.take(perPage).toList();
    } catch (e) {
      print('Error fetching popular repos: $e');
      return [];
    }
  }
}
