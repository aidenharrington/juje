import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  static const routeName = '/settings';

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: Theme.of(context).textTheme.headline5,
        ),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Theme.of(context).backgroundColor,
      ),
      body: Center(
        child: Text('Settings Screen'),
      ),
    );
  }
}
