import 'package:portfolio/models/blog_post.dart';
import 'package:portfolio/models/experience.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/models/skill.dart';

// ===== PERSONAL INFORMATION =====
// Update these with your actual information
class PersonalInfo {
  static const String name = 'Oluseye Obitola';
  static const String title = 'Flutter & Dart Developer';
  static const String email = 'oluseyeobitola1@gmail.com';
  static const String phone = '+234 904 179 0535';
  static const String location = 'Ibadan, Nigeria';

  // TODO: Add your social media links
  static const String githubUsername = 'ooluseye16'; // Used for GitHub API
  static const String githubUrl = 'https://github.com/ooluseye16';
  static const String linkedinUrl = 'https://linkedin.com/in/oluseye-obitola';
  static const String twitterUrl = 'https://twitter.com/oluseye_obitola';

  static const String cvUrl =
      'assets/Oluseye_Obisesan_Obitola_CV.pdf'; // TODO: Add your CV file

  static const String aboutMe = '''
I am a passionate mobile developer with a knack for creating user-friendly, efficient, and innovative applications. Currently, I'm focused on refining my skills and building apps that showcase creativity and functionality. Whether it's crafting dynamic interfaces or implementing clean, maintainable code, I'm dedicated to delivering excellence in every project. Let's collaborate and bring impactful ideas to life!
'''; // TODO: Update your about section
}

// ===== SKILLS =====
// Add or modify your skills here
final List<Skill> skills = [
  // Frontend/Mobile
  const Skill(name: 'Flutter', category: 'Mobile'),
  const Skill(name: 'Dart', category: 'Mobile'),
  const Skill(name: 'Android', category: 'Mobile'),
  const Skill(name: 'iOS', category: 'Mobile'),

  // // Backend
  // const Skill(name: 'Node.js', category: 'Backend'),
  // const Skill(name: 'Express.js', category: 'Backend'),
  // const Skill(name: 'REST API', category: 'Backend'),

  // Database
  const Skill(name: 'MongoDB', category: 'Database'),
  const Skill(name: 'Hive', category: 'Database'),
  const Skill(name: 'Sqflite', category: 'Database'),
  const Skill(name: 'Firebase', category: 'Database'),
  const Skill(name: 'Supabase', category: 'Database'),

  // Tools & Others
  const Skill(name: 'Git', category: 'Tools'),
  const Skill(name: 'GitHub', category: 'Tools'),
  const Skill(name: 'VS Code', category: 'Tools'),
  const Skill(name: 'Google Antigravity', category: 'Tools'),
  const Skill(name: 'Jaspr', category: 'Others'),
  const Skill(name: 'REST API', category: 'Others'),
  const Skill(name: 'AI Agents', category: 'Others'),

  // TODO: Add more skills as needed
];

// ===== WORK EXPERIENCE =====
// Add or modify your work experience here
final List<Experience> experiences = [
  const Experience(
    company: 'nuMoni',
    role: 'Mobile Developer',
    period: 'Sept 2025 - Present',
    description:
        'nuMoni is a digital reward wallet that gives you 5% extra value every time you top up. You can spend your rewards at partner stores, send to friends, or donate to causes — all without cash withdrawals.',
    link: 'https://numoni.io',
  ),
  const Experience(
    company: 'Fiilar',
    role: 'Flutter Developer', 
    period: 'March 2024 - Jan 2026',
    description:
        'Discover perfect spaces - from workspaces and hotels to state-of-the-art studios and unique event venues. We make finding your ideal space easy and convenient',
    link: 'https://fiilar.com/',
  ),

  

  // Add more experiences as needed
];

// ===== PROJECTS =====
// Add or modify your projects here
final List<Project> projects = [
  const Project(
    title: 'Fiamora',
    description:
        'A modern Flutter application that connects people across **8 different connection modes** - from dating and friendship to professional networking and gaming partnerships.',
    technologies: ['Flutter', 'Dart', 'Supabase'],
    // githubUrl: 'https://github.com/username/repo', // TODO: Add if available
    liveUrl: 'https://play.google.com/store/apps/details?id=dev.tirioh.fiamora',
    isFeatured: true, // This will highlight it prominently
  ),
  const Project(
    title: 'Dayri',
    description:
        'Dayri is an AI-powered journaling app that helps you reflect on your day, uncover habits, and gain meaningful insights — automatically. Write freely, and let Dayri summarize, analyze, and guide your growth. 🌤️',
    technologies: ['Flutter', 'Dart', 'Sqflite'],
    githubUrl: 'https://github.com/ooluseye16/dayri',
  ),
  const Project(
    title: 'Voting App',
    description:
        'A beautiful, modern voting application built with Flutter and Firebase that enables organizations to conduct structured voting with a weighted point system. Test Admin Code: P0RTF0L10',
    technologies: ['Flutter Web', 'Dart', 'Firebase'],
    githubUrl: 'https://github.com/ooluseye16/voting_app',
    liveUrl: 'https://votehub-yhkgbh3-ooluseye16.globeapp.dev/',
  ),
  const Project(
    title: 'Free Rant',
    description:
        'A mobile app where users can post their thoughts anonymously and it expires after 24 hours. Follows the design pattern of Whatsapp Status. ( Currently in Google Play Store Closed Testing )',
    technologies: ['Flutter', 'Dart', 'Firebase'],
    githubUrl: 'https://github.com/ooluseye16/free-rant',
    liveUrl:
        'https://play.google.com/store/apps/details?id=dev.tirioh.free-rant',
  ),
  const Project(
    title: 'Invoice Generator',
    description:
        'A flutter app that generates invoices for any organization created. Organizations are stored locally using Hive. Invoice generated in PDF format',
    technologies: ['Flutter', 'Dart', 'Hive', 'PDF'],
    githubUrl: 'https://github.com/ooluseye16/invoice-generator',
  ),

  const Project(
    title: 'Point Tracker',
    description:
        'A leaderboard mobile app where users can track their points. Uses Sqflite to store the data locally.',
    technologies: ['Flutter', 'Dart', 'Sqflite'],
    githubUrl: 'https://github.com/ooluseye16/point-tracker',
  ),

  const Project(
    title: 'Blog API',
    description:
        'A REST API built with Node.js and Express.js that allows users to create, read, update, and delete blog posts. It uses MongoDB as the database.',
    technologies: ['Node.js', 'Express.js', 'MongoDB', 'REST API'],
    githubUrl: 'https://github.com/ooluseye16/blog-api',
  ),

  // TODO: Add more projects as needed
];

// ===== BLOG POSTS =====
// Add your blog posts here with links to external blog platforms
final List<BlogPost> blogPosts = [
  // TODO: Add your blog posts here
  const BlogPost(
    title: 'Getting Started with Flutter: A Beginner\'s Guide',
    excerpt:
        'Learn the basics of Flutter development and build your first mobile app.',
    url: 'https://medium.com/@yourusername/your-blog-post-url',
    date: '2024-01-15',
  ),

  const BlogPost(
    title: 'Building Scalable Apps with Clean Architecture',
    excerpt:
        'Explore how to structure your Flutter apps using clean architecture principles.',
    url: 'https://dev.to/yourusername/your-blog-post-url',
    date: '2024-02-20',
  ),

  const BlogPost(
    title: 'State Management in Flutter: A Comprehensive Guide',
    excerpt:
        'Compare different state management solutions and find the best fit for your project.',
    url: 'https://hashnode.com/@yourusername/your-blog-post-url',
    date: '2024-03-10',
  ),

  // Add more blog posts as needed
];

// ===== HELPER FUNCTIONS =====

// Get skills by category
Map<String, List<Skill>> getSkillsByCategory() {
  final Map<String, List<Skill>> categorized = {};

  for (final skill in skills) {
    if (!categorized.containsKey(skill.category)) {
      categorized[skill.category] = [];
    }
    categorized[skill.category]!.add(skill);
  }

  return categorized;
}

// Get featured projects
List<Project> getFeaturedProjects() {
  return projects.where((project) => project.isFeatured).toList();
}

// Get recent blog posts (limit to n posts)
List<BlogPost> getRecentBlogPosts({int limit = 3}) {
  return blogPosts.take(limit).toList();
}
