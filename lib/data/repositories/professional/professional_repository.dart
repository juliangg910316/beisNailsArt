import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../config/constants.dart';
import '../../../domain/models/proffesionals/proffesionals.dart';
import '../../error/failure.dart';

part 'professional_repository.g.dart';

@Riverpod(keepAlive: true)
ProfessionalRepository professionalRepository(Ref ref) {
  return ProfessionalRepository();
}

class ProfessionalRepository {
  final SupabaseClient supabaseClient = Supabase.instance.client;

  Future<Either<Failure, List<Proffesional>>> getProfessionals() async {
    try {
      // First try to get from Supabase
      final response = await supabaseClient
          .from('professionals')
          .select('*, speciality:specialities(id, name)')
          .order('name');

      if (response.isNotEmpty) {
        final professionals = (response as List)
            .map((json) => Proffesional.fromJson(json))
            .toList();

        return Right(professionals);
      } else {
        // Fallback to constants if no data in Supabase
        return const Right(Constants.proffesionals);
      }
    } catch (e) {
      // Fallback to constants on error
      return const Right(Constants.proffesionals);
    }
  }

  Future<Either<Failure, List<Proffesional>>> getProfessionalsBySpeciality(
      int specialityId) async {
    try {
      final response = await supabaseClient
          .from('professionals')
          .select('*, speciality:specialities(id, name)')
          .eq('speciality_id', specialityId)
          .order('name');

      if (response.isNotEmpty) {
        final professionals = (response as List)
            .map((json) => Proffesional.fromJson(json))
            .toList();

        return Right(professionals);
      } else {
        // Filter from constants
        final filtered = Constants.proffesionals
            .where((p) => p.speciality.id == specialityId)
            .toList();
        return Right(filtered);
      }
    } catch (e) {
      // Filter from constants on error
      final filtered = Constants.proffesionals
          .where((p) => p.speciality.id == specialityId)
          .toList();
      return Right(filtered);
    }
  }

  Future<Either<Failure, Proffesional>> getProfessionalById(String id) async {
    try {
      final response = await supabaseClient
          .from('professionals')
          .select('*, speciality:specialities(id, name)')
          .eq('id', id)
          .single();

      if (response.isNotEmpty) {
        return Right(Proffesional.fromJson(response));
      } else {
        // Find in constants
        final professional = Constants.proffesionals.firstWhere(
          (p) => p.id == id,
          orElse: () => throw Exception('Professional not found'),
        );
        return Right(professional);
      }
    } catch (e) {
      // Try to find in constants on error
      try {
        final professional = Constants.proffesionals.firstWhere(
          (p) => p.id == id,
        );
        return Right(professional);
      } catch (_) {
        return Left(Failure(message: 'Professional not found'));
      }
    }
  }
}
