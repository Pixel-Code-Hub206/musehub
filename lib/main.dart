import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview_plus/device_preview_plus.dart';
import 'package:musehub/pages/muse_hub_root.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,   //If AVD's fail to work smoothly
        builder: (context) => MaterialApp(
          useInheritedMediaQuery: true,
          builder: DevicePreview.appBuilder, 
          home: MuseHubRoot(),
        ),
    ),
  );
}