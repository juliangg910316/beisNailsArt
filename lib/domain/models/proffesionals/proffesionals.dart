import 'package:freezed_annotation/freezed_annotation.dart';

import '../speciality/speciality.dart';

part 'proffesionals.freezed.dart';
part 'proffesionals.g.dart';

@freezed
class Proffesional with _$Proffesional {
  const factory Proffesional({
    required String id,
    required Speciality speciality,
    required Map<String, String> links,
  }) = _Proffesional;

  factory Proffesional.fromJson(Map<String, dynamic> json) =>
      _$ProffesionalFromJson(json);
}
