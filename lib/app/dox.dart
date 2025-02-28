import 'package:dox/core/routing/app_router.dart';
import 'package:flutter/material.dart';

import '../core/styles/theme/theme.dart';

class Dox extends StatelessWidget {
  final appRouter = AppRouter();

  Dox({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Dox Messenger',
      theme: lightTheme,
      routerConfig: appRouter.config(),
    );
  }
}
