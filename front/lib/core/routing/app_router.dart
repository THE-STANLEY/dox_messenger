import 'package:auto_route/auto_route.dart';

import '../../features/auth/auth.dart';
import '../../features/messenger/messenger.dart';
import '../../features/reg/reg.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: AuthRoute.page, path: '/'),
    AutoRoute(page: RegRoute.page),
    AutoRoute(page: MessengerRoute.page),
  ];
}
