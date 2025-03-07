import 'package:flutter/material.dart';

import '../domain/models/beauty_tip/beauty_tip.dart';
import '../domain/models/proffesionals/proffesionals.dart';
import '../domain/models/roles/role.dart';
import '../domain/models/speciality/speciality.dart';
import '../domain/models/user/user.dart';

class Constants {
  Constants._();

// SharedPreferences key
  static const String themeModeKey = 'theme_mode_key';
  static const String profileKey = 'profile_key';
  static const String isLoginKey = 'is_login_key';
  static const String isExistAccountKey = 'is_exist_account_key';

  static const beautyTips = [
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

  static const specialities = [
    Speciality(
      id: 0,
      name: 'Manicure',
      icon: 'assets/icons/manicurista.svg',
    ),
    Speciality(
      name: 'Cabeleira',
      id: 1,
      icon: 'assets/icons/hair_dryer.svg',
    ),
    Speciality(
      name: 'Sobrensela',
      id: 2,
      icon: 'assets/icons/cejas.svg',
    ),
    Speciality(
      name: 'Peinado',
      id: 3,
      icon: 'assets/icons/peinado.svg',
    ),
  ];

  static const specialitiesColors = [
    Colors.pink,
    Colors.purple,
    Colors.blue,
    Colors.teal,
  ];

  static const proffesionals = [
    Proffesional(
      user: User(name: 'Beidis Viera', id: '1', role: Role.proffesional),
      speciality: Speciality(id: 1, name: 'Manicuria'),
      links: {},
      photoUrl: 'assets/images/bei.jpeg', // Replace with actual photo URL
      rating: 5,
      reviewCount: 128,
    ),
    Proffesional(
      user: User(name: 'Sonia Rodriguez', id: '2', role: Role.proffesional),
      speciality: Speciality(id: 2, name: 'Cabeleireira'),
      links: {},
      photoUrl: 'assets/images/bei.jpeg', // Replace with actual photo URL
      rating: 4,
      reviewCount: 95,
    ),
    Proffesional(
      user: User(name: 'Paola Gonzalez', id: '3', role: Role.proffesional),
      speciality: Speciality(id: 3, name: 'Masajista'),
      links: {},
      photoUrl: 'assets/images/bei.jpeg', // Replace with actual photo URL
      rating: 4.5,
      reviewCount: 156,
    ),
  ];
}
