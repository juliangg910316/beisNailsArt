import 'package:freezed_annotation/freezed_annotation.dart';

import '../speciality/speciality.dart';
import '../user/user.dart';

part 'proffesionals.freezed.dart';
part 'proffesionals.g.dart';

@freezed
abstract class Proffesional with _$Proffesional {
  const factory Proffesional({
    // required String id,
    required User user,
    required Speciality speciality,
    required Map<String, String> links,
    @Default('assets/images/bei.jpeg') String photoUrl,
    @Default(5) double rating,
    @Default(100) int reviewCount,
  }) = _Proffesional;

  factory Proffesional.fromJson(Map<String, dynamic> json) =>
      _$ProffesionalFromJson(json);
}
