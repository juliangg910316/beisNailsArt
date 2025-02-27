import 'package:beis_nails_art/config/constants.dart';
import 'package:beis_nails_art/ui/user/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logging/logging.dart';

import '../../core/core.dart';

class InfoPage extends ConsumerWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(profileViewModelProvider).value;
    final logger = Logger('InfoPage');

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Custom AppBar with greeting
          SliverAppBar(
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
                    ((constraints.maxHeight - kToolbarHeight) /
                            (80 - kToolbarHeight))
                        .clamp(0.0, 1.0);
                return FlexibleSpaceBar(
                  centerTitle: false,
                  titlePadding: const EdgeInsets.only(left: 32, top: 40),
                  title: AnimatedOpacity(
                    duration: const Duration(milliseconds: 200),
                    opacity: expandRatio,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Text(
                        //   'Hello ${profile?.profile?.name ?? 'Guest'}! 👋',
                        //   style: const TextStyle(color: Colors.white),
                        // ),
                        const Text(
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
          ),

          // Beauty Care Tips Section
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
              child: SizedBox(
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Constants.beautyTips.length,
                  itemBuilder: (context, index) {
                    final tip = Constants.beautyTips[index];
                    return Container(
                      width: 280,
                      margin: const EdgeInsets.only(right: 16),
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                tip.title,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                tip.description,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black87,
                                ),
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),

          // Services Grid Section
          SliverPadding(
            padding: const EdgeInsets.all(16.0),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Nuestros Servicios',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      childAspectRatio: 0.9,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 16,
                    ),
                    itemCount: Constants.specialities.length,
                    itemBuilder: (context, index) {
                      final specialities = Constants.specialities[index];
                      return Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            gradient: LinearGradient(
                              colors: [
                                Constants.specialitiesColors[index]
                                    .withOpacity(0.2),
                                Colors.white
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 16.0, horizontal: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  specialities.icon,
                                  height: 40,
                                  width: 40,
                                  // colorFilter: ColorFilter.mode(
                                  //   service.color,
                                  //   BlendMode.srcIn,
                                  // ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  specialities.name,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                // const SizedBox(height: 4),
                                // Text(
                                //   '\$${service.price.toStringAsFixed(2)}',
                                //   style: const TextStyle(
                                //     fontSize: 16,
                                //     color: Colors.white,
                                //     fontWeight: FontWeight.w500,
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),

          // Staff Section
          SliverPadding(
            padding: const EdgeInsets.all(16.0),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Nuestros Equipo',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 280, // Adjust height as needed
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: staffMembers.length,
                      itemBuilder: (context, index) {
                        final staff = staffMembers[index];
                        return Container(
                          width: 180, // Adjust width as needed
                          margin: const EdgeInsets.only(right: 16),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.vertical(
                                    top: Radius.circular(12),
                                  ),
                                  child: Image.asset(
                                    staff.photoUrl,
                                    height: 150,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        staff.name,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        staff.role,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey[600],
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      const SizedBox(height: 8),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          ...List.generate(
                                            5,
                                            (index) => Icon(
                                              index < staff.rating
                                                  ? ((staff.rating - index >
                                                              0) &&
                                                          (staff.rating -
                                                                  index <
                                                              1))
                                                      ? Icons.star_half
                                                      : Icons.star
                                                  : Icons.star_border,
                                              color: Colors.amber,
                                              size: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        '(${staff.reviewCount} reviews)',
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class StaffMember {
  final String name;
  final String role;
  final String photoUrl;
  final double rating;
  final int reviewCount;

  StaffMember({
    required this.name,
    required this.role,
    required this.photoUrl,
    required this.rating,
    required this.reviewCount,
  });
}

// Sample data
final staffMembers = [
  StaffMember(
    name: 'Beidis Viera',
    role: 'Manicurista',
    photoUrl: 'assets/images/bei.jpeg', // Replace with actual photo URL
    rating: 5,
    reviewCount: 128,
  ),
  StaffMember(
    name: 'Sonia Rodriguez',
    role: 'Peluquera',
    photoUrl: 'assets/images/bei.jpeg', // Replace with actual photo URL
    rating: 4,
    reviewCount: 95,
  ),
  StaffMember(
    name: 'Peinadora',
    role: 'Manicurist',
    photoUrl: 'assets/images/bei.jpeg', // Replace with actual photo URL
    rating: 4.5,
    reviewCount: 156,
  ),
];
