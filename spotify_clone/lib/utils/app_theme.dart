

import 'package:flutter/material.dart';

AppTheme apptheme = AppDefaultTheme();

abstract class AppTheme{
  final Color primaryColor;
  final Color secondaryColor;


  AppTheme({
   
   required this.primaryColor,
   required this.secondaryColor,
  });
}

class AppDefaultTheme extends AppTheme{

  AppDefaultTheme()
  :super(
    primaryColor: Colors.black,
    secondaryColor: Colors.white,
    );
}
