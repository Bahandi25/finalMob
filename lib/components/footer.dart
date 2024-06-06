import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        height: 50, // Adjust the height as needed
        color: Colors.black,
        alignment: Alignment.center,
        child: Text(
          'Abuev Bakhtiiar SE-2213',
          style: TextStyle(
            color: Colors.white, // Set text color to white
            fontSize: 16, // Adjust font size as needed
            fontWeight: FontWeight.bold, // Optional: adjust font weight
          ),
        ),
      ),
    );
  }
}
