import 'package:erato/screens/home/cityList.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:erato/services/database.dart';
import 'package:erato/models/city.dart';
import 'package:erato/screens/home/favorite.dart';
import 'package:erato/screens/home/settings/settings.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = [
    Citys(),
    SettingsPage(),
  ];
  void _onItemTep(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<City>>.value(
      initialData: List(),
      value: DatabaseService().city,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: IndexedStack(
          children: [
            Center(
              child: _widgetOptions.elementAt(_selectedIndex),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: 'Settings',
            ),
          ],
          currentIndex: _selectedIndex,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTep,
        ),
      ),
    );
  }
}
