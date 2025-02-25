import 'package:flutter/material.dart';

// final darkTheme = ThemeData(
//   useMaterial3: true,
//   colorScheme: ColorScheme.fromSeed(
//     seedColor: Colors.white,
//     brightness: Brightness.dark,
//   ),
//   appBarTheme: AppBarTheme(
//     backgroundColor: const Color.fromARGB(19, 158, 158, 158),
//   ),
//   scaffoldBackgroundColor: const Color.fromARGB(19, 158, 158, 158),
//   bottomNavigationBarTheme: const BottomNavigationBarThemeData(
//     selectedItemColor: Colors.orange,
//     unselectedItemColor: Color.fromARGB(255, 219, 217, 217),
//     backgroundColor: Color.fromARGB(19, 158, 158, 158),
//   ),
//   textTheme: _textTheme,
//   dividerColor: Colors.white24,
// );

final lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.black,
    brightness: Brightness.light,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.blue,
  ),
  scaffoldBackgroundColor: const Color.fromRGBO(255, 255, 255, 0.702),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: Colors.blue,
    unselectedItemColor: Colors.grey,
    backgroundColor: Colors.white,
  ),
  textTheme: _textTheme,
  dividerColor: Colors.white24,
);

final _textTheme = TextTheme(
);

