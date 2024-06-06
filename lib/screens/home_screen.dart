import 'package:flutter/material.dart';
import 'package:mediverse_app/components/navbar.dart';
import 'package:mediverse_app/components/footer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navbar(title: 'Mediverse'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('There is a new song from OneRepublic'),
            SizedBox(height: 20),
            YoutubePlayer(
              controller: YoutubePlayerController(
                initialVideoId: 'ChukpOHfAI8',
                flags: YoutubePlayerFlags(
                  autoPlay: true,
                  mute: false,
                ),
              ),
              showVideoProgressIndicator: true,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Footer(),
    );
  }
}
