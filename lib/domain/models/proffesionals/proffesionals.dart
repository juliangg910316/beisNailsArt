import 'package:freezed_annotation/freezed_annotation.dart';

import '../speciality/speciality.dart';

part 'proffesionals.freezed.dart';
part 'proffesionals.g.dart';

@freezed
abstract class Proffesional with _$Proffesional {
  const factory Proffesional({
    required String id,
    required String name,
    required Speciality speciality,
    required Map<String, String> links,
    @Default('') String photoUrl,
    @Default(0) double rating,
    @Default(0) int reviewCount,
  }) = _Proffesional;

  factory Proffesional.fromJson(Map<String, dynamic> json) =>
      _$ProffesionalFromJson(json);
}
