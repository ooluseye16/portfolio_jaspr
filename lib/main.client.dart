import 'package:jaspr/jaspr.dart';

import 'app.dart';
import 'services/interactions_service.dart';

void main() {
  // Initialize JavaScript interactions (cursor, animations, etc.)
  InteractionsService.initialize();

  // Run the app
  runApp(const App());
}
