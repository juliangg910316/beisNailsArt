import 'package:flutter/material.dart';

import 'card_item.dart';
import 'profile_title_container.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Perfil'),
        elevation: 0,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(150.0),
          child: ProfileTitleContainer(),
        ),
      ),
      body: Container(
        color: Colors.grey[100],
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CardItem(
                icon: Icons.security_outlined,
                title: 'Seguridad',
                onTap: () {},
              ),
              const SizedBox(height: 16),
              CardItem(
                icon: Icons.logout_outlined,
                title: 'Cerrar sesión',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
