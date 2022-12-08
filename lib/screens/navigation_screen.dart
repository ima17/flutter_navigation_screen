import 'package:flutter/material.dart';
import 'package:flutter_navigation_screen/screens/home_screen.dart';
import 'package:flutter_navigation_screen/screens/screen_1.dart';
import 'package:flutter_navigation_screen/screens/screen_2.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    if (widget.index != currentPageIndex) {
      setState(() {
        currentPageIndex = widget.index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.commute),
            label: 'Screen 01',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.bookmark),
            icon: Icon(Icons.bookmark_border),
            label: 'Screen 02',
          ),
        ],
      ),
      body: <Widget>[
        const HomeScreen(),
        const Screen1(),
        const Screen2(),
      ][currentPageIndex],
    );
  }
}
