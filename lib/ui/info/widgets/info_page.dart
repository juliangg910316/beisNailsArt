import 'package:beis_nails_art/ui/user/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

import '../../core/core.dart';

class InfoPage extends ConsumerStatefulWidget {
  const InfoPage({super.key});

  @override
  ConsumerState<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends ConsumerState<InfoPage> {
  final logger = Logger('InfoPage');
  late ScrollController _scrollController;
  late double expandRatio;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    expandRatio = 0.0;
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final profile = ref.watch(profileViewModelProvider).value;

    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          // Custom AppBar with greeting
          SliverAppBar(
            expandedHeight: 150,
            pinned: true,
            centerTitle: false,
            title: LayoutBuilder(builder: (context, constraints) {
              logger.info('expandRatio: $expandRatio');
              return AnimatedOpacity(
                duration: const Duration(milliseconds: 100),
                opacity: 1.0 - expandRatio,
                child: Text(
                  'Hello ${profile?.profile?.name ?? 'Guest'}! 👋',
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              );
            }),
            flexibleSpace: LayoutBuilder(
              builder: (context, constraints) {
                setState(() {
                  expandRatio = ((constraints.maxHeight - kToolbarHeight) /
                          (150 - kToolbarHeight))
                      .clamp(0.0, 1.0);
                });
                return FlexibleSpaceBar(
                  centerTitle: false,
                  titlePadding: const EdgeInsets.only(left: 32, bottom: 16),
                  title: AnimatedOpacity(
                    duration: const Duration(milliseconds: 100),
                    opacity: expandRatio,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello ${profile?.profile?.name ?? 'Guest'}! 👋',
                          style: const TextStyle(color: Colors.white),
                        ),
                        const Text(
                          'Welcome to Bei Salon',
                          style: TextStyle(color: Colors.white, fontSize: 12),
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
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Bei Salon',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 180,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: beautyTips.length,
                      itemBuilder: (context, index) {
                        final tip = beautyTips[index];
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
                ],
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
                    'Our Services',
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
                      crossAxisCount: 2,
                      childAspectRatio: 1.5,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                    ),
                    itemCount: services.length,
                    itemBuilder: (context, index) {
                      final service = services[index];
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
                                service.color.withOpacity(0.2),
                                Colors.white
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  service.name,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  '\$${service.price}',
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.green,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
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
                  const Text(
                    'Our Team',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: staffMembers.length,
                    itemBuilder: (context, index) {
                      final staff = staffMembers[index];
                      return Card(
                        margin: const EdgeInsets.only(bottom: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundImage: NetworkImage(staff.photoUrl),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      staff.name,
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      staff.role,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Row(
                                      children: [
                                        ...List.generate(
                                          5,
                                          (index) => Icon(
                                            index < staff.rating
                                                ? Icons.star
                                                : Icons.star_border,
                                            color: Colors.amber,
                                            size: 20,
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        Text(
                                          '(${staff.reviewCount} reviews)',
                                          style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Models and sample data
class BeautyTip {
  final String title;
  final String description;

  BeautyTip({required this.title, required this.description});
}

class Service {
  final String name;
  final double price;
  final Color color;

  Service({required this.name, required this.price, required this.color});
}

class StaffMember {
  final String name;
  final String role;
  final String photoUrl;
  final int rating;
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
final beautyTips = [
  BeautyTip(
    title: 'Nail Care Basics',
    description:
        'Keep your nails healthy by moisturizing your cuticles daily and using a glass nail file for shaping.',
  ),
  BeautyTip(
    title: 'Long-lasting Manicure',
    description:
        'Apply a base coat, two thin layers of polish, and a top coat. Let each layer dry completely.',
  ),
  BeautyTip(
    title: 'Natural Nail Strengthening',
    description:
        'Mix olive oil and lemon juice for a natural nail strengthening treatment.',
  ),
];

final services = [
  Service(name: 'Classic Manicure', price: 25.0, color: Colors.pink),
  Service(name: 'Gel Manicure', price: 35.0, color: Colors.purple),
  Service(name: 'Nail Art Design', price: 45.0, color: Colors.blue),
  Service(name: 'Pedicure Deluxe', price: 40.0, color: Colors.teal),
];

final staffMembers = [
  StaffMember(
    name: 'Emma Johnson',
    role: 'Senior Nail Artist',
    photoUrl: 'https://example.com/emma.jpg', // Replace with actual photo URL
    rating: 5,
    reviewCount: 128,
  ),
  StaffMember(
    name: 'Sophie Chen',
    role: 'Nail Art Specialist',
    photoUrl: 'https://example.com/sophie.jpg', // Replace with actual photo URL
    rating: 4,
    reviewCount: 95,
  ),
  StaffMember(
    name: 'Maria Garcia',
    role: 'Manicurist',
    photoUrl: 'https://example.com/maria.jpg', // Replace with actual photo URL
    rating: 5,
    reviewCount: 156,
  ),
];
