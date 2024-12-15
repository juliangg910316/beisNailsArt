import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../ui/auth/login/providers/auth_provider.dart';
import '../ui/auth/login/widgets/login_page.dart';
import 'app_router_notifier.dart';

final goRouterProvider = Provider((ref) {
  final goRouterNotifier = ref.read(goRouterNotifierProvider);
  return GoRouter(
      initialLocation: '/check_auth_status',
      refreshListenable: goRouterNotifier,
      routes: [
        ///* Primera pantalla
        // GoRoute(
        //     path: '/check_auth_status',
        //     builder: (_, __) => const CheckAuthStatusScreen()),

        ///* Auth Routes
        GoRoute(
          path: '/login',
          builder: (context, state) => const LoginPage(),
        ),
        // GoRoute(
        //   path: '/register',
        //   builder: (context, state) => const RegisterScreen(),
        // ),

        ///* Product Routes
        // GoRoute(
        //   path: '/',
        //   builder: (context, state) => const ProductsScreen(),
        // ),

        // GoRoute(
        //   path: '/product/:id',
        //   builder: (context, state) => ProductScreen(
        //     productId: state.params['id'] ?? 'no-id',
        //   ),
        // ),
      ],
      redirect: (context, state) {
        final isGointTo = state.name;
        final authStatus = goRouterNotifier.authStatus;

        if (authStatus == AuthStatus.notAuth) {
          if (isGointTo == '/login' || isGointTo == '/register') return null;
          return '/login';
        }
        if (authStatus == AuthStatus.auth) {
          if (isGointTo == '/login' ||
              isGointTo == '/register' ||
              isGointTo == '/check_auth_status') return '/';
        }
        return null;
      });
});
