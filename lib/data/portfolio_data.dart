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
  static const String location = 'Ibadan, Nigeria';

  // TODO: Add your social media links
  static const String githubUsername = 'ooluseye16'; // Used for GitHub API
  static const String githubUrl = 'https://github.com/ooluseye16';
  static const String linkedinUrl = 'https://linkedin.com/in/oluseye-obitola';
  static const String twitterUrl = 'https://twitter.com/oluseye_obitola';

  static const String cvUrl =
      'assets/Oluseye_Obisesan_Resume.pdf'; 

  static const String aboutMe = '''
I build mobile products end-to-end with Flutter and Dart — from fintech wallets and KYC flows to real-time gaming platforms. At nuMoni I work on a digital rewards wallet people use for everyday top-ups; before that I built booking experiences at Fiilar. Outside client work, I ship things I'm curious about: two published Flutter packages, a bonding-curve fantasy trading game, and a notes-style expense tracker I use myself daily. I care most about interfaces that feel fast and forgiving, and code that's still legible six months later.
''';
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
    title: 'Wonr',
    description:
        'A live competitive gaming platform for Nigeria — players join real-money prize pools and compete in trivia, math sprint, and undercover game modes, with KYC-verified payouts direct to bank accounts in 60 seconds.',
    technologies: ['Flutter', 'Riverpod', 'Supabase', 'Paystack'],
    githubUrl: 'https://github.com/ooluseye16/winflow',
    liveUrl: 'https://wonr.app',
    isFeatured: true,
  ),
  const Project(
    title: 'Voxstreet',
    description:
        "Nigeria's independent review platform — \"what the street is saying.\" Lets users write and browse honest reviews of local businesses and services.",
    technologies: ['Flutter', 'Firebase', 'Supabase'],
    githubUrl: 'https://github.com/ooluseye16/voxstreet',
    liveUrl: 'https://thevoxstreet.com',
    isFeatured: true,
  ),
  const Project(
    title: 'Fiamora',
    description:
        'A modern Flutter application that connects people across 8 different connection modes - from dating and friendship to professional networking and gaming partnerships. Currently in Google Play Store Closed Testing',
    technologies: ['Flutter', 'Dart', 'Supabase'],
    // githubUrl: 'https://github.com/username/repo', // TODO: Add if available
    liveUrl: 'https://play.google.com/store/apps/details?id=dev.tirioh.fiamora',
    isFeatured: true, // This will highlight it prominently
    interactiveDemoUrl: '/fiamora/',
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
        'https://play.google.com/store/apps/details?id=com.triadico.freedom_rant',
        isFeatured: true,
  ),
  // Games
  const Project(
    title: 'Territory Conquest',
    description:
        'A real-time multiplayer strategy game — Risk crossed with a base-builder. Claim territory, run a five-resource economy, march armies across a procedurally generated 3D map under fog of war, and propose or betray alliances. Play solo against bots with distinct personalities or against friends via a room code.',
    technologies: ['Flutter', 'flutter_scene', 'Serverpod', 'Postgres'],
    liveUrl: 'https://play.territoryconquest.xyz',
    category: 'game',
  ),
  const Project(
    title: 'Labyrinth',
    description:
        'A 3D procedurally generated maze game with Rapier physics — casual play, a daily challenge with a global leaderboard and ghost racing against your best run, and a hand-authored Challenge mode with timed levels and a dimming-torch hazard.',
    technologies: ['Flutter', 'flutter_scene', 'Firebase'],
    category: 'game',
  ),
  const Project(
    title: 'RMC Lab',
    description:
        'Runes Magic Circle — a magic-circle sandbox where you build circles from components and a deterministic engine works out what happens. Learn the basics in the Academy, then document your discoveries in your own journal. Includes a verified leaderboard, sharing, and AI-written discovery cards.',
    technologies: ['JavaScript', 'Node.js', 'Postgres', 'Gemini'],
    liveUrl: 'https://rmclab.tirioh.wtf',
    category: 'game',
  ),

  // Packages
  const Project(
    title: 'Flutter Tour Guide',
    description:
        'A lightweight, themeable Flutter onboarding tour package with spotlight cutouts, animated tooltips, auto-scroll, and tab/page navigation support. Published on pub.dev.',
    technologies: ['Flutter', 'Dart'],
    githubUrl: 'https://github.com/ooluseye16/flutter_spotlight_tour',
    liveUrl: 'https://pub.dev/packages/flutter_tour_guide',
    category: 'package',
  ),
  const Project(
    title: 'Dev Log Viewer',
    description:
        'A real-time local log viewer for Flutter/Dart development — streams structured logs from a running app to a searchable, filterable web UI on localhost. Ships as two published packages: a CLI server and a Flutter/Dart client.',
    technologies: ['Dart', 'Flutter', 'CLI'],
    githubUrl: 'https://github.com/ooluseye16/dev_log_viewer',
    liveUrl: 'https://pub.dev/packages/dev_log_viewer',
    category: 'package',
  ),

  // Side Projects
  const Project(
    title: 'Own A Country',
    description:
        'A World Cup fantasy trading game — buy shares in national teams and watch prices move on a bonding-curve pricing engine as tournament results come in. Includes group play, portfolio tracking, and sell-window mechanics tied to knockout rounds.',
    technologies: ['React', 'Vite', 'Supabase', 'Zustand'],
    githubUrl: 'https://github.com/ooluseye16/own_a_country',
    liveUrl: 'https://own-a-country.vercel.app/',
    category: 'side',
  ),
  const Project(
    title: 'Ledger',
    description:
        'A notes-style salary & expense tracker. Fully offline, local-only PWA — type a line like you would in a notes app ("fuel 15k", "netflix 4400 monthly") and it\'s parsed into an expense, income, or recurring bill. All data stays in IndexedDB on-device.',
    technologies: ['TypeScript', 'React', 'Vite', 'PWA'],
    githubUrl: 'https://github.com/ooluseye16/ledger',
    liveUrl: 'https://ledger-ten-liard.vercel.app/',
    category: 'side',
  ),

  // TODO: Add more projects as needed
];

// ===== BLOG POSTS =====
// Add your blog posts here with links to external blog platforms
final List<BlogPost> blogPosts = [
  // TODO: Add your blog posts here
  const BlogPost(
    title: 'Where do I go from here?',
    excerpt:
        'A Roadmap to navigate your learning journey as a Flutter Developer.',
    url: 'https://tirioh.hashnode.dev/where-do-i-go-from-here',
    date: '2022-07-22',
  ),

  const BlogPost(
    title: 'Using PageView to display multiple StoryView',
    excerpt: 'An approach to showing multiple StoryView using Flutter',
    url:
        'https://tirioh.hashnode.dev/using-pageview-to-display-multiple-storyview',
    date: '2023-11-07',
  ),

  // const BlogPost(
  //   title: 'State Management in Flutter: A Comprehensive Guide',
  //   excerpt:
  //       'Compare different state management solutions and find the best fit for your project.',
  //   url: 'https://hashnode.com/@yourusername/your-blog-post-url',
  //   date: '2024-03-10',
  // ),

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

// Get games
List<Project> getGameProjects() {
  return projects.where((project) => project.category == 'game').toList();
}

// Get published packages
List<Project> getPackageProjects() {
  return projects.where((project) => project.category == 'package').toList();
}

// Get side projects
List<Project> getSideProjects() {
  return projects.where((project) => project.category == 'side').toList();
}

// Get everything else (not featured, not a package, not a side project)
List<Project> getOtherProjects() {
  return projects
      .where(
        (project) => !project.isFeatured && project.category == null,
      )
      .toList();
}

// Get recent blog posts (limit to n posts)
List<BlogPost> getRecentBlogPosts({int limit = 3}) {
  return blogPosts.take(limit).toList();
}
