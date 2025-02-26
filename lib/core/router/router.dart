import '../../features/auth/auth.dart';
import '../../features/messenger/messenger.dart';
import '../../features/reg/reg.dart';

final router = {
  '/': (context) => AuthScreen(),
  '/register': (context) => RegScreen(),
  '/messenger': (context) => MessengerScreen(),
};
