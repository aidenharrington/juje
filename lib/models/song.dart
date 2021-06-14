import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';

class Song {
  final String songId;
  final String songName;
  final String artistId;
  final String artistName;
  final String albumName;
  final String artistImageUrl;

  const Song({
    required this.songId,
    required this.songName,
    required this.artistId,
    required this.artistName,
    this.albumName = '',
    this.artistImageUrl = '',
  });
}
