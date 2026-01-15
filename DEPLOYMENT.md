# Firebase Deployment Guide

## Prerequisites

1. **Install Firebase CLI** (if not already installed):
```bash
npm install -g firebase-tools
```

2. **Login to Firebase**:
```bash
firebase login
```

## Deployment Steps

### 1. Build Your Production App

```bash
webdev build --output web:build/web
```

This creates an optimized production build in the `build/web` directory.

**Note:** We use `webdev build` instead of `jaspr build` because the portfolio uses client-side JavaScript interop for GitHub API calls, which requires a client-side build.

### 2. Initialize Firebase (First Time Only)

If you haven't initialized Firebase in this project:

```bash
firebase init hosting
```

When prompted:
- Select "Use an existing project" or "Create a new project"
- Choose your Firebase project (or create one at https://console.firebase.google.com)
- Set public directory: `build/web`
- Configure as single-page app: `Yes`
- Set up automatic builds with GitHub: `No` (optional)
- Don't overwrite `index.html`: `No`

**Note:** I've already created `firebase.json` for you with the correct configuration.

### 3. Deploy to Firebase

```bash
firebase deploy
```

Your site will be deployed to: `https://YOUR-PROJECT-ID.web.app`

## Quick Deploy (After First Setup)

For subsequent deployments:

```bash
# Build the app
webdev build --output web:build/web

# Deploy to Firebase
firebase deploy
```

## Custom Domain (Optional)

1. Go to Firebase Console: https://console.firebase.google.com
2. Select your project
3. Go to Hosting → Add custom domain
4. Follow the instructions to connect your domain

## Update og:url After Deployment

After deploying, update the `og:url` in `web/index.html`:

```html
<meta property="og:url" content="https://YOUR-PROJECT-ID.web.app/">
```

Replace `YOUR-PROJECT-ID` with your actual Firebase project ID.

## Troubleshooting

**Build fails?**
- Make sure all dependencies are installed: `dart pub get`
- Check that `jaspr` configuration is in `pubspec.yaml`

**Deploy fails?**
- Ensure you're logged in: `firebase login`
- Check that you have the correct project selected: `firebase use --add`

**404 errors after deploy?**
- Verify `firebase.json` has the correct rewrites configuration
- Make sure the build directory is `build/jaspr`
