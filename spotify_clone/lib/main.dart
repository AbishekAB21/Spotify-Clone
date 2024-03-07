import 'package:flutter/material.dart';
import 'package:spotify_clone/navigations/tabbar.dart';
import 'package:spotify_clone/utils/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // removes DEBUG banner from top right
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        scaffoldBackgroundColor: apptheme.primaryColor,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: apptheme.secondaryColor,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: apptheme.BottomNavBarText,
          unselectedLabelStyle: apptheme.BottomNavBarText,
          selectedItemColor: apptheme.BottomNavIconsColor,
          unselectedItemColor: apptheme.UnselectedColor,
        )
      ),
      home: Tabbar(),
    );
  }
}
