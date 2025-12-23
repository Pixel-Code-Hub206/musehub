import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:musehub/pages/library_page.dart';

 class Song {
   final int id;
   final String songName;
   final String artistName;
   final String artworkUri;     //Album art path

   Song({required this.id , required this.songName, required this.artistName, required this.artworkUri});

 }