import 'package:flutter/material.dart';

import 'core/router/router.dart';
import 'core/theme/theme.dart';

class Dox extends StatelessWidget {
  const Dox({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dox Messenger',
      theme: lightTheme,
      initialRoute: '/',
      routes: router,
    );
  }
}
