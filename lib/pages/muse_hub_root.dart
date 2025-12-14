//The first page to land in after the splash screen
import 'package:flutter/material.dart';
import 'package:musehub/pages/favorites_page.dart';
import 'package:musehub/pages/library_page.dart';
import 'package:musehub/pages/now_playing_page.dart';
import 'package:musehub/pages/playlists_page.dart';
import 'package:musehub/pages/settings_page.dart';

class MuseHubRoot extends StatefulWidget {
  const MuseHubRoot({super.key});

  @override
  State<MuseHubRoot> createState() => _MuseHubRootState();
}

class _MuseHubRootState extends State<MuseHubRoot> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    LibraryPage(),
    FavoritesPage(),
    PlaylistsPage(),
    SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,

        selectedItemColor: Colors.greenAccent,
        unselectedItemColor: Colors.grey,

        backgroundColor: Colors.black,

        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.playlist_play),
            label: 'Playlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

