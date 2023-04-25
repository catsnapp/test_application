import 'package:flutter/material.dart';

final themeapp = ThemeData(
  scaffoldBackgroundColor: Color.fromARGB(255, 255, 253, 253),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    toolbarHeight: 80,
    elevation: 0,
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 30.0,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(
      color: Colors.black,
      size: 40.0,
    ),
  ),
);
