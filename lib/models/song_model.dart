import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:musehub/pages/library_page.dart';

 class Song {
   final String path;
   final String songName;
   // final String artistName;
   // final String artworkUri;     //Album art path

   Song({required this.path, required this.songName}); //required this.artistName, required this.artworkUri});

 }