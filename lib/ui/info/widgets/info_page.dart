import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'custom_sliver_app_bar.dart';
import 'services_grid_section.dart';
import 'staff_section.dart';
import 'tips_list_section.dart';

class InfoPage extends ConsumerWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const CustomSliverAppBar(),
          // Beauty Care Tips Section
          SliverToBoxAdapter(child: const TipsListSection()),

          // Services Grid Section
          SliverPadding(
            padding: const EdgeInsets.all(16.0),
            sliver: SliverToBoxAdapter(
              child: const ServicesGridSection(),
            ),
          ),

          // Staff Section
          SliverPadding(
            padding: const EdgeInsets.all(16.0),
            sliver: SliverToBoxAdapter(
              child: const StaffSection(),
            ),
          ),
        ],
      ),
    );
  }
}
