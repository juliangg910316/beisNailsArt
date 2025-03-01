// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Appointment {
  String get id;
  @JsonKey(name: 'client_id')
  String get clientId;
  @JsonKey(name: 'create_at')
  DateTime get createAt;
  @JsonKey(name: 'proffesional_id')
  String get proffesionalId;
  @JsonKey(name: 'service_id')
  String get serviceId;
  DateTime get date;
  String get status;
  @JsonKey(name: 'note_adicional')
  String? get noteAdicional;

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppointmentCopyWith<Appointment> get copyWith =>
      _$AppointmentCopyWithImpl<Appointment>(this as Appointment, _$identity);

  /// Serializes this Appointment to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Appointment &&
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

  @override
  String toString() {
    return 'Appointment(id: $id, clientId: $clientId, createAt: $createAt, proffesionalId: $proffesionalId, serviceId: $serviceId, date: $date, status: $status, noteAdicional: $noteAdicional)';
  }
}

/// @nodoc
abstract mixin class $AppointmentCopyWith<$Res> {
  factory $AppointmentCopyWith(
          Appointment value, $Res Function(Appointment) _then) =
      _$AppointmentCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'client_id') String clientId,
      @JsonKey(name: 'create_at') DateTime createAt,
      @JsonKey(name: 'proffesional_id') String proffesionalId,
      @JsonKey(name: 'service_id') String serviceId,
      DateTime date,
      String status,
      @JsonKey(name: 'note_adicional') String? noteAdicional});
}

/// @nodoc
class _$AppointmentCopyWithImpl<$Res> implements $AppointmentCopyWith<$Res> {
  _$AppointmentCopyWithImpl(this._self, this._then);

  final Appointment _self;
  final $Res Function(Appointment) _then;

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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: null == clientId
          ? _self.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: null == createAt
          ? _self.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      proffesionalId: null == proffesionalId
          ? _self.proffesionalId
          : proffesionalId // ignore: cast_nullable_to_non_nullable
              as String,
      serviceId: null == serviceId
          ? _self.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      noteAdicional: freezed == noteAdicional
          ? _self.noteAdicional
          : noteAdicional // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Appointment implements Appointment {
  const _Appointment(
      {required this.id,
      @JsonKey(name: 'client_id') required this.clientId,
      @JsonKey(name: 'create_at') required this.createAt,
      @JsonKey(name: 'proffesional_id') required this.proffesionalId,
      @JsonKey(name: 'service_id') required this.serviceId,
      required this.date,
      required this.status,
      @JsonKey(name: 'note_adicional') required this.noteAdicional});
  factory _Appointment.fromJson(Map<String, dynamic> json) =>
      _$AppointmentFromJson(json);

  @override
  final String id;
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

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppointmentCopyWith<_Appointment> get copyWith =>
      __$AppointmentCopyWithImpl<_Appointment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AppointmentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Appointment &&
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

  @override
  String toString() {
    return 'Appointment(id: $id, clientId: $clientId, createAt: $createAt, proffesionalId: $proffesionalId, serviceId: $serviceId, date: $date, status: $status, noteAdicional: $noteAdicional)';
  }
}

/// @nodoc
abstract mixin class _$AppointmentCopyWith<$Res>
    implements $AppointmentCopyWith<$Res> {
  factory _$AppointmentCopyWith(
          _Appointment value, $Res Function(_Appointment) _then) =
      __$AppointmentCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'client_id') String clientId,
      @JsonKey(name: 'create_at') DateTime createAt,
      @JsonKey(name: 'proffesional_id') String proffesionalId,
      @JsonKey(name: 'service_id') String serviceId,
      DateTime date,
      String status,
      @JsonKey(name: 'note_adicional') String? noteAdicional});
}

/// @nodoc
class __$AppointmentCopyWithImpl<$Res> implements _$AppointmentCopyWith<$Res> {
  __$AppointmentCopyWithImpl(this._self, this._then);

  final _Appointment _self;
  final $Res Function(_Appointment) _then;

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_Appointment(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: null == clientId
          ? _self.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: null == createAt
          ? _self.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      proffesionalId: null == proffesionalId
          ? _self.proffesionalId
          : proffesionalId // ignore: cast_nullable_to_non_nullable
              as String,
      serviceId: null == serviceId
          ? _self.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      noteAdicional: freezed == noteAdicional
          ? _self.noteAdicional
          : noteAdicional // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
