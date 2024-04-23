import 'package:crm/features/auth/screens/login_screen.dart';
import 'package:crm/features/splashScreen/screens/splash_screen.dart';
import 'package:go_router/go_router.dart';

final routers = GoRouter(initialLocation: '/', routes: [
  GoRoute(
      path: "/",
      builder: (context, state) => const SplashScreen(),
      routes: [
        GoRoute(
            path: "login",
            name: "login",
            builder: (context, state) => const LoginScreen())
      ]),
]);
