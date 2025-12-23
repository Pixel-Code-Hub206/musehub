import 'package:flutter/material.dart';
import 'dart:io';
import 'package:musehub/models/song_model.dart';
import 'package:musehub/pages/now_playing_page.dart';
import 'package:permission_handler/permission_handler.dart';

class LibraryPage extends StatefulWidget {
  LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  List<Song> songs = [];
  bool isLoading = true;

  Future<List<Song>> scanDeviceForSongs() async{  //Manual File Scanning method
    final musicDir = Directory('/storage/emulated/0/Music/Undertale_Music');
    print('Music exists: ${musicDir.existsSync()}');    //Temporary check
    print('Scanning path: ${musicDir.path}');

    if(!musicDir.existsSync()){
      return [];
    }
    final List<Song> foundSongs = [];

    final files = musicDir.listSync(recursive: true);

    for(var file in files){
      if(file is File){
        print('Found file: ${file.path}');    //Temporary check

        final path = file.path.toLowerCase();

        if(path.endsWith('.mp3') || path.endsWith('.wav') ||path.endsWith('.m4a')){
          foundSongs.add(
            Song(
              path: file.path,
              songName: file.uri.pathSegments.last,
            ),
          );
        }
      }
    }
    return foundSongs;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    requestPermissionAndLoad();
  }

  Future<void> requestPermissionAndLoad() async{
    final status = await Permission.audio.request();

    if(status.isGranted){
      loadSongs();
    }
    else{
      print('Audio Permission denied');
      setState(() {
        isLoading = false;
      });
    }
  }

  void loadSongs() async{       //Checks the permission and Load songs accordingly
    final result = await scanDeviceForSongs();    //Starts manual scanning

    setState(() {
      songs = result;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Library', style: TextStyle(fontSize: 24)),
      ),
      body: isLoading
      ? const Center(child: CircularProgressIndicator())
      : songs.isEmpty
      ? const Center(child: Text('No Songs found'))
          : ListView.builder(
        itemCount: songs.length,
        itemBuilder: (context, index) {
          final song = songs[index];

          return ListTile(
            leading: const Icon(Icons.music_note),
            title: Text(songs[index].songName),
            // subtitle: Text(songs[index].artistName),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (_) => NowPlayingPage(song: song)));
            },
          );
        },
      ),
    );
  }
}

// Song(songName: 'Dreams', artistName: 'Pixel', artworkUri: ''),
// Song(songName: 'Night Drive', artistName: 'MuseHub', artworkUri: ''),
// Song(songName: 'Starlight', artistName: 'Unknown', artworkUri: ''),