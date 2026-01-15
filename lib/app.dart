import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'components/github_repos_component.dart';
import 'data/portfolio_data.dart';
import 'models/project.dart';

class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) {
    return div(id: 'app', classes: 'app-container', [
      // Navigation
      nav(classes: 'navbar', [
        div(classes: 'container', [
          div(classes: 'navbar-content', [
            a(href: '#home', classes: 'navbar-logo', [.text('Oluseye')]),

            // Hamburger menu button (mobile/tablet)
            button(
              classes: 'hamburger',
              attributes: {'aria-label': 'Toggle menu'},
              [],
            ),

            ul(classes: 'navbar-links', [
              li([
                a(href: '#about', [.text('About')]),
              ]),
              li([
                a(href: '#skills', [.text('Skills')]),
              ]),
              li([
                a(href: '#experience', [.text('Experience')]),
              ]),
              li([
                a(href: '#projects', [.text('Projects')]),
              ]),
              li([
                a(href: '#blog', [.text('Blog')]),
              ]),
              li([
                a(href: '#github', [.text('GitHub')]),
              ]),
              li([
                a(href: '#contact', [.text('Contact')]),
              ]),
            ]),
          ]),
        ]),
      ]),

      // Hero Section
      section(id: 'home', classes: 'hero-section', [
        // Floating shapes container
        div(classes: 'hero-shapes', []),

        div(classes: 'container', [
          div(classes: 'hero-content', [
            p(classes: 'hero-greeting animate-slide-up stagger-1', [
              .text('Hi, my name is'),
            ]),
            h1(classes: 'hero-name animate-slide-up stagger-2', [
              .text(PersonalInfo.name),
            ]),
            h2(classes: 'hero-title animate-slide-up stagger-3', [
              .text(PersonalInfo.title),
            ]),
            p(classes: 'hero-description animate-slide-up stagger-4', [
              .text(
                'Design-minded mobile developer focused on clean experiences and thoughtful execution',
              ),
            ]),
            div(classes: 'hero-buttons animate-slide-up stagger-5', [
              a(
                href: PersonalInfo.cvUrl,
                classes: 'btn btn-primary',
                attributes: {'download': ''},
                [.text('Download CV')],
              ),
              a(href: '#contact', classes: 'btn btn-secondary', [
                .text('Get in Touch'),
              ]),
            ]),
          ]),
        ]),
      ]),

      // About Section
      section(id: 'about', classes: 'section about-section', [
        div(classes: 'container', [
          h2(classes: 'section-title', [.text('About Me')]),
          div(classes: 'about-content', [
            div(classes: 'about-text', [
              p(classes: 'about-description', [.text(PersonalInfo.aboutMe)]),
              // div(classes: 'about-stats', [
              //   div(classes: 'stat-item', [
              //     h3([.text('${4}+')]),
              //     p([.text('Years Experience')]),
              //   ]),
              //   div(classes: 'stat-item', [
              //     h3([.text('${10}+')]),
              //     p([.text('Projects Completed')]),
              //   ]),
              //   div(classes: 'stat-item', [
              //     h3([.text('${skills.length}+')]),
              //     p([.text('Technologies')]),
              //   ]),
              // ]),
            ]),
          ]),
        ]),
      ]),

      // Skills Section
      section(id: 'skills', classes: 'section skills-section', [
        div(classes: 'container', [
          h2(classes: 'section-title', [.text('Skills & Technologies')]),
          p(classes: 'section-subtitle', [
            .text(
              'Here are some of the technologies I have worked with in my projects.',
            ),
          ]),
          // Spacer
          div(classes: 'section-spacer', []),

          div(classes: 'skills-grid', [
            for (final entry in getSkillsByCategory().entries)
              div(classes: 'skill-category', [
                h3(classes: 'category-title', [.text(entry.key)]),
                div(classes: 'skill-tags', [
                  for (final skill in entry.value)
                    span(classes: 'skill-tag', [.text(skill.name)]),
                ]),
              ]),
          ]),
        ]),
      ]),

      // Experience Section
      section(id: 'experience', classes: 'section experience-section', [
        div(classes: 'container', [
          h2(classes: 'section-title', [.text('Work Experience')]),
          p(classes: 'section-subtitle', [
            .text(
              'I have worked with some amazing companies professionally to build awesome products.',
            ),
          ]),
          div(classes: 'timeline', [
            for (final exp in experiences)
              div(classes: 'timeline-item', [
                div(classes: 'timeline-marker', []),
                div(classes: 'timeline-content', [
                  div(classes: 'experience-header', [
                    h3(classes: 'company-name', [
                      if (exp.link != null)
                        a(href: exp.link!, target: Target.blank, [
                          .text(exp.company),
                        ])
                      else
                        .text(exp.company),
                    ]),
                    span(classes: 'period', [.text(exp.period)]),
                  ]),
                  p(classes: 'role', [.text(exp.role)]),
                  p(classes: 'description', [.text(exp.description)]),
                ]),
              ]),
          ]),
        ]),
      ]),

      // Projects Section
      section(id: 'projects', classes: 'section projects-section', [
        div(classes: 'container', [
          h2(classes: 'section-title', [.text('Projects')]),
          p(classes: 'section-subtitle', [
            .text('Here are some of the personal projects I have worked on.'),
          ]),

          // Featured Projects
          if (getFeaturedProjects().isNotEmpty) ...[
            h3(classes: 'projects-subtitle', [.text('Featured')]),
            div(classes: 'featured-projects', [
              for (final project in getFeaturedProjects())
                _buildProjectCard(project, isFeatured: true),
            ]),
          ],

          // Regular Projects
          if (projects.where((p) => !p.isFeatured).isNotEmpty) ...[
            if (getFeaturedProjects().isNotEmpty)
              h3(classes: 'projects-subtitle', [.text('Other Projects')]),
            div(classes: 'projects-grid', [
              for (final project in projects.where((p) => !p.isFeatured))
                _buildProjectCard(project),
            ]),
          ],
        ]),
      ]),

      // Blog Section
      section(id: 'blog', classes: 'section blog-section', [
        div(classes: 'container', [
          h2(classes: 'section-title', [.text('Blog')]),
          p(classes: 'section-subtitle', [
            .text('Thoughts, tutorials, and insights on software development.'),
          ]),
          div(classes: 'blog-grid', [
            for (final post in blogPosts)
              a(href: post.url, target: Target.blank, classes: 'blog-card', [
                div(classes: 'blog-date', [.text(post.date)]),
                h3(classes: 'blog-title', [.text(post.title)]),
                p(classes: 'blog-excerpt', [.text(post.excerpt)]),
                span(classes: 'read-more', [.text('Read more →')]),
              ]),
          ]),
        ]),
      ]),

      // GitHub Section
      section(id: 'github', classes: 'section github-section', [
        div(classes: 'container', [
          h2(classes: 'section-title', [.text('GitHub Repositories')]),
          p(classes: 'section-subtitle', [
            .text(
              'Check out my latest open-source projects and contributions.',
            ),
          ]),

          // Repository grid - now using Dart component
          const GitHubReposComponent(),

          div(classes: 'github-link-wrapper', [
            a(
              href: PersonalInfo.githubUrl,
              target: Target.blank,
              classes: 'btn btn-primary',
              [.text('View All on GitHub →')],
            ),
          ]),
        ]),
      ]),

      // Contact Section
      section(id: 'contact', classes: 'section contact-section', [
        div(classes: 'container', [
          h2(classes: 'section-title', [.text('Get In Touch')]),
          p(classes: 'section-subtitle', [
            .text(
              'I am always open to discussing new projects, creative ideas, or opportunities to be part of your vision.',
            ),
          ]),
          div(classes: 'contact-content', [
            div(classes: 'contact-info', [
              div(classes: 'contact-item', [
                span(classes: 'contact-icon', [.text('📧')]),
                div([
                  p(classes: 'contact-label', [.text('Email')]),
                  a(
                    href: 'mailto:${PersonalInfo.email}',
                    classes: 'contact-value',
                    [.text(PersonalInfo.email)],
                  ),
                ]),
              ]),
              div(classes: 'contact-item', [
                span(classes: 'contact-icon', [.text('📍')]),
                div([
                  p(classes: 'contact-label', [.text('Location')]),
                  p(classes: 'contact-value', [.text(PersonalInfo.location)]),
                ]),
              ]),
              div(classes: 'social-links', [
                a(
                  href: PersonalInfo.githubUrl,
                  target: Target.blank,
                  classes: 'social-link',
                  [.text('GitHub')],
                ),
                a(
                  href: PersonalInfo.linkedinUrl,
                  target: Target.blank,
                  classes: 'social-link',
                  [.text('LinkedIn')],
                ),
                a(
                  href: PersonalInfo.twitterUrl,
                  target: Target.blank,
                  classes: 'social-link',
                  [.text('Twitter')],
                ),
              ]),
            ]),
            div(classes: 'contact-cta', [
              a(
                href: 'mailto:${PersonalInfo.email}',
                classes: 'btn btn-primary btn-large',
                [.text('Send me an email')],
              ),
            ]),
          ]),
        ]),
      ]),

      // Footer
      footer(classes: 'footer', [
        div(classes: 'container', [
          div(classes: 'footer-content', [
            p(classes: 'footer-text', [
              .text(
                '© ${DateTime.now().year} ${PersonalInfo.name}. Built with ',
              ),
              a(
                href: 'https://github.com/schultek/jaspr',
                target: Target.blank,
                [.text('Jaspr')],
              ),
              .text('.'),
            ]),
            div(classes: 'footer-links', [
              a(href: '#home', [.text('Back to Top ↑')]),
            ]),
          ]),
        ]),
      ]),
    ]);
  }

  Component _buildProjectCard(Project project, {bool isFeatured = false}) {
    return div(classes: isFeatured ? 'project-card featured' : 'project-card', [
      div(classes: 'project-header', [
        div([
          h3(classes: 'project-title', [.text(project.title)]),
        ]),
        if (isFeatured) span(classes: 'featured-badge', [.text('Featured')]),
      ]),
      p(classes: 'project-description', [.text(project.description)]),
      div(classes: 'project-tech', [
        for (final tech in project.technologies)
          span(classes: 'tech-tag', [.text(tech)]),
      ]),
      div(classes: 'project-links', [
        if (project.githubUrl != null)
          a(
            href: project.githubUrl!,
            target: Target.blank,
            classes: 'project-link',
            [.text('View Code →')],
          ),
        if (project.liveUrl != null)
          a(
            href: project.liveUrl!,
            target: Target.blank,
            classes: 'project-link',
            [.text('Live Demo →')],
          ),
      ]),
    ]);
  }
}
