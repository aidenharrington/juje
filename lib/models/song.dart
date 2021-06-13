import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';

class Song {
  final String id;
  final String songName;
  final String artistName;
  final String albumName;
  final String artistImageUrl;

  const Song({
    required this.id,
    required this.songName,
    required this.artistName,
    this.albumName = '',
    this.artistImageUrl = '',
  });
}
