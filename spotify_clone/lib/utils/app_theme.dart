

import 'package:flutter/material.dart';

AppTheme apptheme = AppDefaultTheme();

abstract class AppTheme{
  final Color primaryColor;
  final Color secondaryColor;
  final Color terinaryColor;
  final Color GradientColor1;
  final Color GradientColor2;
  final Color GradientColor3;
  final Color BottomNavIconsColor;
  final Color UnselectedColor;

  final TextStyle BottomNavBarText;


  AppTheme({
   
   required this.primaryColor,
   required this.secondaryColor,
   required this.terinaryColor,
   required this.GradientColor1,
   required this.GradientColor2,
   required this.GradientColor3,
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
    terinaryColor: Colors.white,
    GradientColor1: Colors.white.withOpacity(0.2),
    GradientColor2: Colors.white.withOpacity(0),
    GradientColor3: Colors.black.withOpacity(0),
    BottomNavIconsColor: Colors.green.shade800,
    UnselectedColor: Colors.white54,
    BottomNavBarText: TextStyle(fontSize: 12),
    );
}
