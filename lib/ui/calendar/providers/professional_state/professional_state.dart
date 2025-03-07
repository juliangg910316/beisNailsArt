import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/proffesionals/proffesionals.dart';

part 'professional_state.freezed.dart';
part 'professional_state.g.dart';

@freezed
abstract class ProfessionalState with _$ProfessionalState {
  const factory ProfessionalState({
    @Default([]) List<Proffesional> professionals,
    @Default(false) bool isLoading,
    String? error,
  }) = _ProfessionalState;

  factory ProfessionalState.fromJson(Map<String, dynamic> json) =>
      _$ProfessionalStateFromJson(json);
}
