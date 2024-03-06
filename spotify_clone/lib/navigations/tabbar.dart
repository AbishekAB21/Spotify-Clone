import 'package:flutter/material.dart';
import 'package:spotify_clone/views/home.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {

  int _selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) {
          setState(() {
            this._selectedTab=index;
          });
        },
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined,), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search_outlined), label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.library_music), label: "Library"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      ]),
      body: HomeView(),
    );
  }
}
