import 'dart:math' as math;

import 'package:flutter/material.dart';

class PlayScreen extends StatefulWidget {
  @override
  _PlayScreenState createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Transform.rotate(
            angle: -math.pi / 4,
            child: Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(),
        ],
      ),
    );
  }
}
