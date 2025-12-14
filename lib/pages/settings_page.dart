import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.account_circle_outlined),
            title: Text('Appearance'),
            subtitle: Text('Dark Theme - Toggle')
          ),
          ListTile(
            leading: Icon(Icons.audiotrack_outlined),
            title: Text('Audio'),
            subtitle: Text('Gapless playback'),
          ),
          ListTile(
            leading: Icon(Icons.library_music_outlined),
            title: Text('Library'),
            subtitle: Text('Rescan disk'),
          ),
          ListTile(
            leading: Icon(Icons.volume_up_outlined),
            title: Text('Playback'),
            subtitle: Text('Autoplay controls'),
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('App Info'),
            subtitle: Text('About MuseHub'),
          )
        ],
      ),
    );
  }
}
