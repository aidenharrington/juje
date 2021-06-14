import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './helpers/fade_custom_route.dart';
import './providers/song_provider.dart';
import './screens/profile_screen.dart';
import './screens/settings_screen.dart';
import './screens/tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => SongProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.grey,
          accentColor: Colors.white,
          backgroundColor: Colors.black,
          textTheme: ThemeData.dark().textTheme.copyWith(
                headline6: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
                headline5: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
          pageTransitionsTheme: PageTransitionsTheme(
            builders: {
              TargetPlatform.android: CustomPageTransitionBuilder(),
              TargetPlatform.iOS: CustomPageTransitionBuilder(),
            },
          ),
        ),
        home: TabsScreen(),
        routes: {
          ProfileScreen.routeName: (ctx) => ProfileScreen(),
          SettingsScreen.routeName: (ctx) => SettingsScreen(),
        },
      ),
    );
  }
}
