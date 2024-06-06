import 'package:flutter/material.dart';
import 'package:mediverse_app/screens/home_screen.dart';
import 'package:mediverse_app/screens/calendar_screen.dart';
import 'package:mediverse_app/components/navbar.dart';
import 'package:mediverse_app/components/footer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mediverse',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mediverse'),
        ),
        body: Stack(
          children: [
            // Your main content widgets here
            Center(
              child: Text('This is the main content'),
            ),
            Footer(), // Include the Footer widget in the Stack
          ],
        ),
      ),
    );
  }
}
