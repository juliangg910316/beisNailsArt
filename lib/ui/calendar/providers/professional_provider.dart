import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/repositories/professional/professional_repository.dart';
import '../../../ui/calendar/providers/professional_state/professional_state.dart';

part 'professional_provider.g.dart';

@riverpod
class ProfessionalProvider extends _$ProfessionalProvider {
  @override
  FutureOr<ProfessionalState> build() async {
    return _loadProfessionals();
  }

  Future<ProfessionalState> _loadProfessionals() async {
    state = const AsyncValue.loading();

    final result =
        await ref.read(professionalRepositoryProvider).getProfessionals();

    return result.fold(
      (failure) => ProfessionalState(error: failure.message),
      (professionals) => ProfessionalState(professionals: professionals),
    );
  }

  Future<void> loadProfessionalsBySpeciality(int specialityId) async {
    state = const AsyncValue.loading();

    final result = await ref
        .read(professionalRepositoryProvider)
        .getProfessionalsBySpeciality(specialityId);

    result.fold(
      (failure) => state = AsyncError(failure.message, StackTrace.current),
      (professionals) {
        state = AsyncData(ProfessionalState(professionals: professionals));
      },
    );
  }
}
