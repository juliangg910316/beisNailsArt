import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../domain/models/appointment/appointment.dart';
import '../../error/failure.dart';

part 'appointment_repository.g.dart';

@Riverpod(keepAlive: true)
AppointmentRepository appointmentRepository(Ref ref) {
  return AppointmentRepository();
}

class AppointmentRepository {
  final SupabaseClient supabaseClient = Supabase.instance.client;

  Future<Either<Failure, List<Appointment>>> getAppointments() async {
    try {
      final response =
          await supabaseClient.from('appointments').select().order('dateTime');

      final appointments =
          (response as List).map((json) => Appointment.fromJson(json)).toList();

      return Right(appointments);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  Future<Either<Failure, Appointment>> createAppointment(
      Appointment appointment) async {
    try {
      final response = await supabaseClient
          .from('appointments')
          .insert(appointment.toJson())
          .select()
          .single();

      return Right(Appointment.fromJson(response));
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  Future<Either<Failure, Appointment>> updateAppointment(
      Appointment appointment) async {
    try {
      final response = await supabaseClient
          .from('appointments')
          .update(appointment.toJson())
          .eq('id', appointment.id)
          .select()
          .single();

      return Right(Appointment.fromJson(response));
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  Future<Either<Failure, void>> deleteAppointment(String id) async {
    try {
      await supabaseClient.from('appointments').delete().eq('id', id);

      return const Right(null);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
