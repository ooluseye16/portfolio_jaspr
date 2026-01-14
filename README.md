# Portfolio - Jaspr

A modern, responsive portfolio website built with [Jaspr](https://github.com/schultek/jaspr) - a Dart framework for building web applications.

## Features

- 🎨 Modern flat design with smooth animations
- 📱 Fully responsive (mobile, tablet, desktop)
- ⚡ Fast loading and optimized performance
- 🔗 GitHub API integration for automatic repository display
- 📝 Blog section with external links
- 🎯 Interactive project showcase with featured highlighting
- 📊 Skills categorization and visualization
- 📅 Experience timeline
- 🌐 SEO optimized

## Getting Started

### Prerequisites

- [Dart SDK](https://dart.dev/get-dart) (version 3.10.0 or higher)

### Installation

1. Install dependencies:
```bash
dart pub get
```

2. Update your information in `lib/data/portfolio_data.dart`:
   - Personal information (name, email, social links)
   - GitHub username (for API integration)
   - Work experience
   - Projects
   - Skills
   - Blog posts

### Development

Run the development server:

```bash
webdev serve
```

The site will be available at `http://localhost:8080`

### Building for Production

Build the production version:

```bash
webdev build
```

The built files will be in the `build` directory.

## Project Structure

```
portfolio-jaspr/
├── lib/
│   ├── components/       # UI components
│   ├── models/          # Data models
│   ├── services/        # API services
│   ├── data/            # Portfolio data
│   └── app.dart         # Main app component
├── web/
│   ├── index.html       # HTML entry point
│   ├── styles.css       # Global styles
│   └── main.dart        # Dart entry point
└── pubspec.yaml         # Dependencies
```

## Customization

### Updating Content

All content is centralized in `lib/data/portfolio_data.dart`. Look for `TODO` comments to find sections that need updating:

- Personal information
- GitHub username
- Work experience
- Projects (including your closed testing app)
- Skills
- Blog posts

### Styling

Global styles and design tokens are in `web/styles.css`. You can customize:

- Color scheme (CSS variables)
- Typography
- Spacing
- Animations
- Responsive breakpoints

### Components

Each section is a separate component in `lib/components/`. You can modify individual sections without affecting others.

## Deployment

This portfolio can be deployed to:

- Firebase Hosting
- GitHub Pages
- Netlify
- Vercel
- Any static hosting service

## License

MIT License - feel free to use this template for your own portfolio!

## Built With

- [Jaspr](https://github.com/schultek/jaspr) - Dart web framework
- [GitHub API](https://docs.github.com/en/rest) - For repository integration
- Google Fonts (Inter)

---

Made with ❤️ by Oluseye Obitola
