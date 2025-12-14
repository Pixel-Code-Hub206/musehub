import 'package:flutter/material.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

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
      body: Text('The Library Page'),
    );
  }
}
