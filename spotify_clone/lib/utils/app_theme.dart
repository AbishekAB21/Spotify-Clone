

import 'package:flutter/material.dart';

AppTheme apptheme = AppDefaultTheme();

abstract class AppTheme{
  final Color primaryColor;
  final Color secondaryColor;
  final Color BottomNavIconsColor;
  final Color UnselectedColor;

  final TextStyle BottomNavBarText;


  AppTheme({
   
   required this.primaryColor,
   required this.secondaryColor,
   required this.BottomNavIconsColor,
   required this.UnselectedColor,

   required this.BottomNavBarText,
  });
}

class AppDefaultTheme extends AppTheme{

  AppDefaultTheme()
  :super(
    primaryColor: Colors.black,
    secondaryColor: Colors.white10,
    BottomNavIconsColor: Colors.green.shade800,
    UnselectedColor: Colors.white54,
    BottomNavBarText: TextStyle(fontSize: 12),
    );
}
