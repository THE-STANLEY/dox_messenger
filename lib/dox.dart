import 'package:flutter/material.dart';

import 'core/theme/theme.dart';
import 'features/auth/auth_screen.dart';

class Dox extends StatelessWidget {
  const Dox({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dox Messenger',
      theme: lightTheme,
      home: AuthScreen(),
    );
  }
}
