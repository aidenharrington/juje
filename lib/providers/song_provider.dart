import 'package:flutter/foundation.dart';

import '../dummy_data/dummy_songs.dart';
import '../models/Exceptions/queue_empty_exception.dart';
import '../models/song.dart';

class SongProvider with ChangeNotifier {
  // Use placeholder data until backend setup
  List<Song> _songs = DUMMY_SONGS;

  List<Song> get songs {
    return [..._songs];
  }

  Song get nextSong {
    if (_songs.length > 0) {
      return _songs.removeAt(0);
    } else {
      throw QueueEmptyException('End of queue.');
    }
  }
}
