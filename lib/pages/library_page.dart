//The first page to land in after the splash screen
import 'package:flutter/material.dart';
import 'package:musehub/main.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('MuseHub Library Page')),
    );
  }
}

