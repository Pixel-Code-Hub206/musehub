import 'package:flutter/material.dart';

class PlaylistsPage extends StatelessWidget {
  const PlaylistsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Playlists',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: Text('Playlists are listed here!'),
    );
  }
}
