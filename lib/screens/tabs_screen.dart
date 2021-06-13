import 'package:flutter/material.dart';

import './home_screen.dart';
import './play_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  //late List<Map<String, Object>> _pages;
  late List<Widget> _pages;

  int _selectedPageIndex = 0;

  @override
  void initState() {
    // _pages = [
    //   {
    //     'page': HomeScreen(),
    //     'title': 'Home',
    //   },
    //   {
    //     'page': PlayScreen(),
    //     'title': 'Play',
    //   },
    // ];
    _pages = [
      HomeScreen(),
      PlayScreen(),
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'juje',
          style: Theme.of(context).textTheme.headline6,
        ),
        backgroundColor: Theme.of(context).backgroundColor,
      ),
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).backgroundColor,
        unselectedItemColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow),
            label: 'Play',
          ),
        ],
      ),
    );
  }
}
