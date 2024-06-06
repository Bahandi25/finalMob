# mediverse_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
Create a flutter app first, add dependencies:
dependencies:
  flutter:
    sdk: flutter
  youtube_player_flutter: ^9.0.1
  googleapis: ^13.1.0
  googleapis_auth: ^1.6.0
  table_calendar: ^3.0.0
  url_launcher: ^6.0.0
  google_maps_flutter: ^2.6.1
Write flutter pub get to add new packages
The most frequent issue faced is TypeError: Cannot set properties of undefined (setting 'nativeCommunication'). To solve it change index.html within web folder:
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>My Flutter App</title>
  <!-- Import Flutter web assets -->
  <script src="https://cdn.jsdelivr.net/npm/@flutter/flutter@latest/flutter_web.js"></script>
</head>
<body>
  <!-- Your Flutter app will be rendered here -->
  <script src="main.dart.js" type="application/javascript"></script>
  <!-- Import additional scripts for flutter_inappwebview -->
  <script type="application/javascript" src="/assets/packages/flutter_inappwebview/assets/web/web_support.js" defer></script>
  <script type="application/javascript" src="/assets/packages/flutter_inappwebview_web/assets/web/web_support.js" defer></script>
</body>
</html>

To simplify code and avoid duplication, navbar and footer are  in separate files, that now we can add them wherever it is required. 
Services added are: Calendar, YouTube video and map(not working for now)
