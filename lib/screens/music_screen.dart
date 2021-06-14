import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/song_provider.dart';

class MusicScreen extends StatefulWidget {
  @override
  _MusicScreenState createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  bool _songPlaying = false;

  void _togglePlayStatus() {
    setState(() {
      _songPlaying = !_songPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    final songProvider = Provider.of<SongProvider>(context);
    return Container(
      color: Theme.of(context).backgroundColor,
      height: double.maxFinite,
      child: Stack(
        children: [
          Positioned(
            child: Align(
              alignment: FractionalOffset.center,
              child: Transform.rotate(
                angle: -math.pi / 4,
                child: Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  child: Transform.rotate(
                    angle: math.pi / 4,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'j',
                            style: TextStyle(fontSize: 100),
                          ),
                          Text(
                            'j',
                            style: TextStyle(fontSize: 100),
                          ),
                          // SizedBox(width: 15),
                          // Transform(
                          //   transform: Matrix4.rotationY(math.pi),
                          //   child: Text(
                          //     'j',
                          //     style: TextStyle(fontSize: 100),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: TextButton(
                        onPressed: () {},
                        child: Text('Skip Song'),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: IconButton(
                          onPressed: _togglePlayStatus,
                          icon: _songPlaying
                              ? Icon(
                                  Icons.pause,
                                  color: Theme.of(context).accentColor,
                                  size: 50,
                                )
                              : Icon(
                                  Icons.play_arrow,
                                  color: Theme.of(context).accentColor,
                                  size: 50,
                                ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.report,
                          color: Theme.of(context).errorColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
