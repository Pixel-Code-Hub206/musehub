import 'package:flutter/material.dart';
import 'package:musehub/models/song_model.dart';
import 'package:just_audio/just_audio.dart';

class NowPlayingPage extends StatefulWidget {
  final Song song;
  const NowPlayingPage({super.key, required this.song});

  @override
  State<NowPlayingPage> createState() => _NowPlayingPageState();
}

class _NowPlayingPageState extends State<NowPlayingPage> {

  final AudioPlayer _player = AudioPlayer();
  bool isPlaying = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _init();
  }

  Future<void> _init() async{
    await _player.setFilePath(widget.song.path);
    await _player.play();
    final duration = await _player.setFilePath(widget.song.path);
    print('duration: $duration');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _player.dispose();
    super.dispose();
  }

  void togglePlay() async{
    if(isPlaying){
      await _player.play();
    }
    else{
      await _player.pause();
    }
    setState(() {
      isPlaying = !isPlaying;       //Changing the state internally.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Now Playing"),

      ),
      body: IconButton(onPressed: togglePlay,
          icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow_outlined))
    );
  }
}
