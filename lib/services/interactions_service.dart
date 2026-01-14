import 'dart:js_interop';

import 'package:web/web.dart' as web;

/// Service to initialize and manage custom JavaScript interactions
class InteractionsService {
  static bool _initialized = false;

  /// Initialize all JavaScript interactions
  static void initialize() {
    if (_initialized) return;
    _initialized = true;

    // Wait for DOM to be ready
    if (web.document.readyState == 'loading') {
      web.document.addEventListener('DOMContentLoaded', _initInteractions.toJS);
    } else {
      _initInteractions();
    }
  }

  static void _initInteractions([web.Event? event]) {
    // Load the interactions.js file
    _loadInteractionsScript();
  }

  static void _loadInteractionsScript() {
    // Create script element
    final script =
        web.document.createElement('script') as web.HTMLScriptElement;
    script.src = 'interactions.js';
    script.type = 'text/javascript';

    // Add error handler
    script.addEventListener(
      'error',
      ((web.Event event) {
        web.console.error('Error loading interactions.js'.toJS);
      }).toJS,
    );

    // Add success handler
    script.addEventListener(
      'load',
      ((web.Event event) {
        web.console.log('interactions.js loaded successfully'.toJS);
      }).toJS,
    );

    // Append to document body (after Jaspr hydration)
    web.window.setTimeout(
      (() {
        web.document.body?.appendChild(script);
      }).toJS,
      100.toJS,
    );
  }
}
