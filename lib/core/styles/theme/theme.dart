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
    seedColor: const Color.fromARGB(255, 0, 0, 0),
    brightness: Brightness.light,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.blue,
    iconTheme: IconThemeData(color: Colors.white),
  ),
  scaffoldBackgroundColor: const Color.fromRGBO(255, 255, 255, 0.702),
  textTheme: _textTheme,
  dividerColor: Colors.white24,
);

final _textTheme = TextTheme(
  labelSmall: TextStyle(color: Colors.blue, fontSize: 13),
);
