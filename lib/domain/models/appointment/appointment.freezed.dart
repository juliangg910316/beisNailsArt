// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Appointment _$AppointmentFromJson(Map<String, dynamic> json) {
  return _Appointment.fromJson(json);
}

/// @nodoc
mixin _$Appointment {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_id')
  String get clientId => throw _privateConstructorUsedError;
  @JsonKey(name: 'create_at')
  DateTime get createAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'proffesional_id')
  String get proffesionalId => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_id')
  String get serviceId => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'note_adicional')
  String? get noteAdicional => throw _privateConstructorUsedError;

  /// Serializes this Appointment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppointmentCopyWith<Appointment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentCopyWith<$Res> {
  factory $AppointmentCopyWith(
          Appointment value, $Res Function(Appointment) then) =
      _$AppointmentCopyWithImpl<$Res, Appointment>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'client_id') String clientId,
      @JsonKey(name: 'create_at') DateTime createAt,
      @JsonKey(name: 'proffesional_id') String proffesionalId,
      @JsonKey(name: 'service_id') String serviceId,
      DateTime date,
      String status,
      @JsonKey(name: 'note_adicional') String? noteAdicional});
}

/// @nodoc
class _$AppointmentCopyWithImpl<$Res, $Val extends Appointment>
    implements $AppointmentCopyWith<$Res> {
  _$AppointmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clientId = null,
    Object? createAt = null,
    Object? proffesionalId = null,
    Object? serviceId = null,
    Object? date = null,
    Object? status = null,
    Object? noteAdicional = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      proffesionalId: null == proffesionalId
          ? _value.proffesionalId
          : proffesionalId // ignore: cast_nullable_to_non_nullable
              as String,
      serviceId: null == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      noteAdicional: freezed == noteAdicional
          ? _value.noteAdicional
          : noteAdicional // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppointmentImplCopyWith<$Res>
    implements $AppointmentCopyWith<$Res> {
  factory _$$AppointmentImplCopyWith(
          _$AppointmentImpl value, $Res Function(_$AppointmentImpl) then) =
      __$$AppointmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'client_id') String clientId,
      @JsonKey(name: 'create_at') DateTime createAt,
      @JsonKey(name: 'proffesional_id') String proffesionalId,
      @JsonKey(name: 'service_id') String serviceId,
      DateTime date,
      String status,
      @JsonKey(name: 'note_adicional') String? noteAdicional});
}

/// @nodoc
class __$$AppointmentImplCopyWithImpl<$Res>
    extends _$AppointmentCopyWithImpl<$Res, _$AppointmentImpl>
    implements _$$AppointmentImplCopyWith<$Res> {
  __$$AppointmentImplCopyWithImpl(
      _$AppointmentImpl _value, $Res Function(_$AppointmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clientId = null,
    Object? createAt = null,
    Object? proffesionalId = null,
    Object? serviceId = null,
    Object? date = null,
    Object? status = null,
    Object? noteAdicional = freezed,
  }) {
    return _then(_$AppointmentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      proffesionalId: null == proffesionalId
          ? _value.proffesionalId
          : proffesionalId // ignore: cast_nullable_to_non_nullable
              as String,
      serviceId: null == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      noteAdicional: freezed == noteAdicional
          ? _value.noteAdicional
          : noteAdicional // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppointmentImpl implements _Appointment {
  const _$AppointmentImpl(
      {required this.id,
      @JsonKey(name: 'client_id') required this.clientId,
      @JsonKey(name: 'create_at') required this.createAt,
      @JsonKey(name: 'proffesional_id') required this.proffesionalId,
      @JsonKey(name: 'service_id') required this.serviceId,
      required this.date,
      required this.status,
      @JsonKey(name: 'note_adicional') required this.noteAdicional});

  factory _$AppointmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppointmentImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'client_id')
  final String clientId;
  @override
  @JsonKey(name: 'create_at')
  final DateTime createAt;
  @override
  @JsonKey(name: 'proffesional_id')
  final String proffesionalId;
  @override
  @JsonKey(name: 'service_id')
  final String serviceId;
  @override
  final DateTime date;
  @override
  final String status;
  @override
  @JsonKey(name: 'note_adicional')
  final String? noteAdicional;

  @override
  String toString() {
    return 'Appointment(id: $id, clientId: $clientId, createAt: $createAt, proffesionalId: $proffesionalId, serviceId: $serviceId, date: $date, status: $status, noteAdicional: $noteAdicional)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.proffesionalId, proffesionalId) ||
                other.proffesionalId == proffesionalId) &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.noteAdicional, noteAdicional) ||
                other.noteAdicional == noteAdicional));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, clientId, createAt,
      proffesionalId, serviceId, date, status, noteAdicional);

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentImplCopyWith<_$AppointmentImpl> get copyWith =>
      __$$AppointmentImplCopyWithImpl<_$AppointmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentImplToJson(
      this,
    );
  }
}

abstract class _Appointment implements Appointment {
  const factory _Appointment(
      {required final int id,
      @JsonKey(name: 'client_id') required final String clientId,
      @JsonKey(name: 'create_at') required final DateTime createAt,
      @JsonKey(name: 'proffesional_id') required final String proffesionalId,
      @JsonKey(name: 'service_id') required final String serviceId,
      required final DateTime date,
      required final String status,
      @JsonKey(name: 'note_adicional')
      required final String? noteAdicional}) = _$AppointmentImpl;

  factory _Appointment.fromJson(Map<String, dynamic> json) =
      _$AppointmentImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'client_id')
  String get clientId;
  @override
  @JsonKey(name: 'create_at')
  DateTime get createAt;
  @override
  @JsonKey(name: 'proffesional_id')
  String get proffesionalId;
  @override
  @JsonKey(name: 'service_id')
  String get serviceId;
  @override
  DateTime get date;
  @override
  String get status;
  @override
  @JsonKey(name: 'note_adicional')
  String? get noteAdicional;

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppointmentImplCopyWith<_$AppointmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
