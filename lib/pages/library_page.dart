//The first page to land in after the splash screen
import 'package:flutter/material.dart';
import 'package:musehub/main.dart';
import 'package:musehub/pages/favorites_page.dart';
import 'package:musehub/pages/now_playing_page.dart';
import 'package:musehub/pages/playlists_page.dart';
import 'package:musehub/pages/settings_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    Home(),
    FavoritesPage(),
    PlaylistsPage(),
    NowPlayingPage(),
    SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Library',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: Center(child: Text('MuseHub Library Page')),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _currentIndex,
      //     items: []
      // ),
    );
  }
}

