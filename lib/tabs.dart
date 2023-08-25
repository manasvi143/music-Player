import 'package:flutter/material.dart';
import 'package:music_player/screens/home_screen.dart';
import 'package:music_player/screens/liberary_screen.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() {
    return _TabsState();
  }
}

class _TabsState extends State<Tabs> {
  int indexVal = 0;

  void screenChanger(int index) {
    setState(() {
      indexVal = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activeScreen = const HomeScreen();

    if (indexVal == 2) {
      activeScreen = const LibraryScreen();
    }
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: const IconThemeData(size: 22),
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(179, 96, 125, 139),
        iconSize: 32,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        elevation: 16,
        currentIndex: indexVal,
        onTap: screenChanger,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.my_library_music), label: 'Library'),
        ],
      ),
      body: activeScreen,
    );
  }
}
