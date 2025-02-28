// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AuthScreen]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute({List<PageRouteInfo>? children})
    : super(AuthRoute.name, initialChildren: children);

  static const String name = 'AuthRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AuthScreen();
    },
  );
}

/// generated route for
/// [MessengerScreen]
class MessengerRoute extends PageRouteInfo<void> {
  const MessengerRoute({List<PageRouteInfo>? children})
    : super(MessengerRoute.name, initialChildren: children);

  static const String name = 'MessengerRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MessengerScreen();
    },
  );
}

/// generated route for
/// [RegScreen]
class RegRoute extends PageRouteInfo<void> {
  const RegRoute({List<PageRouteInfo>? children})
    : super(RegRoute.name, initialChildren: children);

  static const String name = 'RegRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RegScreen();
    },
  );
}
