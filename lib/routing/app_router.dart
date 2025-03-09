import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../ui/auth/login/widgets/login_page.dart';
import '../ui/auth/register/widgets/register_page.dart';
import '../ui/calendar/widgets/appointment_form_view.dart';
import '../ui/home/widgets/home_page.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(Ref ref) {
  return GoRouter(
    initialLocation: '/login',
    // refreshListenable: goRouterNotifier,
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
      GoRoute(
        path: '/register',
        builder: (context, state) => const RegisterPage(),
      ),

      ///* Product Routes
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/add_appoinment',
        builder: (context, state) => AppointmentFormView(),
      ),

      // GoRoute(
      //   path: '/product/:id',
      //   builder: (context, state) => ProductScreen(
      //     productId: state.params['id'] ?? 'no-id',
      //   ),
      // ),
    ],
    // redirect: (context, state) {
    //   final isGointTo = state.name;
    //   final authStatus = goRouterNotifier.authStatus;
    //
    //   if (authStatus == AuthStatus.notAuth) {
    //     if (isGointTo == '/login' || isGointTo == '/register') return null;
    //     return '/login';
    //   }
    //   if (authStatus == AuthStatus.auth) {
    //     if (isGointTo == '/login' ||
    //         isGointTo == '/register' ||
    //         isGointTo == '/check_auth_status') return '/';
    //   }
    //   return null;
    // },
  );
}
