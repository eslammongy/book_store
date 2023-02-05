import 'package:book_store/features/home/presentation/views/home_screen.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/views/splash_screen.dart';

abstract class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/homeScreen',
      builder: (context, state) => const HomeScreen(),
    )
  ]);
}
