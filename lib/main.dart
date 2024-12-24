import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'routing/app_router.dart';
import 'ui/core/themes/theme.dart';

void main() async {
  await Supabase.initialize(
    url: 'https://stamltzltufiqcsibynw.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InN0YW1sdHpsdHVmaXFjc2lieW53Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzIzNzMzOTMsImV4cCI6MjA0Nzk0OTM5M30.YhfztIyj_QxQVssXj2Ypq10T7Z1L89NQCPS_CD0DP2U',
  );

  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);
    return MaterialApp.router(
      routerConfig: appRouter,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
    );
  }
}
