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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
            child: Text(
                'Appearance',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_outlined),
            title: Text('Dark Theme - Always On'),
            onTap: () {
              print('Toggle theme tapped!');
            },
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
            child: Text(
              'Audio',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack_outlined),
            title: Text('Gapless playback'),
            onTap: () {
              print('Uses a switch!');
            },
          ),
          ListTile(
            leading: Icon(Icons.audiotrack_outlined),
            title: Text('Normalize Volume'),
            onTap: () {
              print('Uses a switch!');
            },
          ),
          ListTile(
            leading: Icon(Icons.audiotrack_outlined),
            title: Text('CrossFade Duration'),
            onTap: () {
              print('Leads to another page!');
            },
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
            child: Text(
              'Library',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.library_music_outlined),
            title: Text('Rescan disk'),
            onTap: () {
              print('Dialog (Confirmation)');
            },
          ),
          ListTile(
            leading: Icon(Icons.audiotrack_outlined),
            title: Text('Clear cached artwork'),
            onTap: () {
              print('Dialog (Confirmation)');
            },
          ),
          ListTile(
            leading: Icon(Icons.audiotrack_outlined),
            title: Text('Choose scan directories'),
            onTap: () {
              print('New Page');
            },
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
            child: Text(
              'Playback',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.volume_up_outlined),
            title: Text('Continue from last played track'),
            onTap: () {
              print('Playback Controls tapped!');
            },
          ),
          ListTile(
            leading: Icon(Icons.volume_up_outlined),
            title: Text('Auto-play next track'),
            onTap: () {
              print('Playback Controls tapped!');
            },
          ),


          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
            child: Text(
              'App Info',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('About MuseHub'),
            onTap: () {
              print('Dialog Box');
            },
          ),
          ListTile(
            leading: Icon(Icons.audiotrack_outlined),
            title: Text('Developer Link'),
            onTap: () {
              print('External Link');
            },
          ),
          ListTile(
            leading: Icon(Icons.audiotrack_outlined),
            title: Text('App Version : v0.1.0 (alpha)'),
          ),
        ],
      ),
    );
  }
}
