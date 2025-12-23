import 'package:flutter/material.dart';
import 'package:musehub/models/song_model.dart';

class LibraryPage extends StatelessWidget {
  LibraryPage({super.key});

  final List<Song> songs = [
    Song(id: 1, songName: 'Dreams', artistName: 'Pixel', artworkUri: ''),
    Song(id: 2, songName: 'Night Drive', artistName: 'MuseHub', artworkUri: ''),
    Song(id: 3, songName: 'Starlight', artistName: 'Unknown', artworkUri: ''),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Library', style: TextStyle(fontSize: 24)),
      ),
      body: ListView.builder(
        itemCount: songs.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.music_note),
            title: Text(songs[index].songName),
            subtitle: Text(songs[index].artistName),
          );
        },
      ),
    );
  }
}
