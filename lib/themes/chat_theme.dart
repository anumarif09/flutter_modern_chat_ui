import 'package:flutter/material.dart';

class ChatTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,

    scaffoldBackgroundColor: Colors.grey.shade100,

    primaryColor: Colors.blue,

    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      centerTitle: false,
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,

      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide.none,
      ),
    ),

    textTheme: const TextTheme(
      bodyMedium: TextStyle(fontSize: 16, color: Colors.black),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,

    scaffoldBackgroundColor: const Color(0xff121212),

    primaryColor: Colors.blue,

    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: Color(0xff1E1E1E),
      foregroundColor: Colors.white,
      centerTitle: false,
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xff2A2A2A),

      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide.none,
      ),
    ),

    textTheme: const TextTheme(
      bodyMedium: TextStyle(fontSize: 16, color: Colors.white),
    ),
  );
}
