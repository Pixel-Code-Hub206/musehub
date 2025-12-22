import 'package:flutter/material.dart';
import 'package:musehub/models/song_model.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Song> songs = [
      Song(songName: "Undertale", artistName: "Toby Fox", artworkUri: "The Dog"),
      Song(songName: "Shooting Stars", artistName: "NCS", artworkUri: "The Sky"),
      Song(songName: "Bury the Light", artistName: "Cassey Edwards", artworkUri: "The Dog"),
      Song(songName: "Plumbing up", artistName: "Mario", artworkUri: "Bowser"),
      Song(songName: "You're too Slow!", artistName: "Sonic", artworkUri: "Mr Beast"),
    ];    //Dummy Data

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Library',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: songs.length,
        itemBuilder: (context, index){
          return ListTile(
            leading: SizedBox(
            width: 48,
            child: Text(songs[index].artworkUri),
          )
          ,
            title: Text(songs[index].songName),
            subtitle: Text(songs[index].artistName),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Tapped ${songs[index].songName}')),
              );
            },
          );
        }
      ),
    );
  }
}