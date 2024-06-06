import 'package:flutter/material.dart';

class Navbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const Navbar({Key? key, required this.title}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: Colors.black,
      actions: [
        IconButton(
          icon: Icon(Icons.lightbulb),
          onPressed: () {
            // Implement light theme switch logic
          },
        ),
      ],
    );
  }
}
