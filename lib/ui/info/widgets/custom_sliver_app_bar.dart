import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/themes/colors.dart';
import '../../user/providers/user_provider.dart';

class CustomSliverAppBar extends ConsumerWidget {
  const CustomSliverAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(profileViewModelProvider).value;

    return SliverAppBar(
      expandedHeight: 150,
      pinned: true,
      centerTitle: false,
      title: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Hola ${profile?.profile?.name ?? 'Cliente'}! 👋',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
      flexibleSpace: LayoutBuilder(
        builder: (context, constraints) {
          final double expandRatio =
              ((constraints.maxHeight - kToolbarHeight) / (80 - kToolbarHeight))
                  .clamp(0.0, 1.0);
          return FlexibleSpaceBar(
            centerTitle: false,
            titlePadding: const EdgeInsets.only(left: 32, top: 40),
            title: AnimatedOpacity(
              duration: const Duration(milliseconds: 200),
              opacity: expandRatio,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bienvenido al Salon de Bei',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
            background: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [AppColors.main, Colors.white],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
