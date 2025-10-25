import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview_plus/device_preview_plus.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: kDebugMode,
        builder: (context) => MaterialApp(
          useInheritedMediaQuery: true,
          builder: DevicePreview.appBuilder, 
          home: Home(),
        ),
    ),
  );
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('MuseHub Home Page')),
    );
  }
}

