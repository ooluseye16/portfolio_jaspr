# Portfolio - Jaspr

A modern, artistic portfolio website built with [Jaspr](https://github.com/schultek/jaspr) - a Dart framework for building web applications.

## 🌐 Live Demo

**[View Live Portfolio →](https://tirioh.wtf/)**

## Features

- 🎨 **Artistic Mondrian-style design** with geometric shapes and solid colors
- ✨ **Interactive effects** - Custom cursor, particle bursts, scroll animations
- 📱 **Fully responsive** - Mobile, tablet, and desktop optimized
- ⚡ **Pure Dart GitHub integration** - Automatic repository display using `dart:js_interop`
- 🎯 **Dynamic project showcase** with featured highlighting
- 📊 **Skills visualization** with category-based Mondrian grid
- 📅 **Experience timeline** with interactive markers
- 📝 **Blog integration** with external links
- 🌐 **SEO optimized** with Open Graph and Twitter Card meta tags
- 🖼️ **Custom favicon and social preview image**

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
webdev build --output web:build/web
```

The built files will be in the `build/web` directory.

For deployment instructions, see [`DEPLOYMENT.md`](DEPLOYMENT.md).

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

This portfolio is deployed on **Firebase Hosting**: [oluseyeobitola.web.app](https://oluseyeobitola.web.app/)

For detailed deployment instructions, see [`DEPLOYMENT.md`](DEPLOYMENT.md).

Compatible with:
- ✅ Firebase Hosting (recommended)
- GitHub Pages
- Netlify
- Vercel
- Any static hosting service

## License

MIT License - feel free to use this template for your own portfolio!

## Built With

- [Jaspr](https://github.com/schultek/jaspr) - Dart web framework
- [dart:js_interop](https://dart.dev/interop/js-interop) - For GitHub API integration
- [GitHub REST API](https://docs.github.com/en/rest) - Repository data
- [Google Fonts](https://fonts.google.com/) - Space Grotesk & Inter typography
- [Firebase Hosting](https://firebase.google.com/products/hosting) - Deployment platform

---

Made with ❤️ by Oluseye Obitola
