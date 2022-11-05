import 'package:AidSavers/call.dart';
import 'package:AidSavers/main.dart';
import 'package:AidSavers/screens/m.dart';
import 'package:AidSavers/screens/map.dart';
import 'package:AidSavers/screens/screen.dart';
import 'package:AidSavers/widgets/emgcall.dart';
import 'package:flutter/material.dart';
import 'package:AidSavers/screens/stats_screen.dart';

import 'stats_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({Key key}) : super(key: key);

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  final List _screens = [
    HomeScreen(),
    Call(),
    Maa(),
    StatsScreen(),
    Scaffold(),
  ];

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => setState(() => _currentIndex = index),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        elevation: 0.0,
        currentIndex: _currentIndex,
        items: [Icons.home, Icons.call, Icons.add_location_alt_rounded, Icons.menu_book]
            .asMap()
            .map(
                (key, value) => MapEntry(
                    key,
                    BottomNavigationBarItem(
                      // label: Text(''),
                      icon: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 6.0,
                          horizontal: 16.0,
                        ),
                        decoration: BoxDecoration(color: _currentIndex == key ? Color(0xff7595bf) : Colors.transparent,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Icon(value),
                      ),
                    ),
                  ))
                    .values
                    .toList(),
        ),
      );
  }
}
