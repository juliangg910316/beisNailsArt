import 'package:freezed_annotation/freezed_annotation.dart';

import '../speciality/speciality.dart';

part 'service.freezed.dart';
part 'service.g.dart';

@freezed
class Service with _$Service {
  const factory Service({
    required int id,
    required Speciality speciality,
    required double price,
    required DateTime duration,
    required String name,
    required String description,
  }) = _Service;

  factory Service.fromJson(Map<String, dynamic> json) =>
      _$ServiceFromJson(json);
}
