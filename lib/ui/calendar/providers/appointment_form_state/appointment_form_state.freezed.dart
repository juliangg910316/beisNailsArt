// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppointmentFormState {
  DateTime? get selectedDate;
  String? get selectedService;
  String? get selectedProfessionalId;
  String? get note;
  bool get isLoading;
  String? get error;

  /// Create a copy of AppointmentFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppointmentFormStateCopyWith<AppointmentFormState> get copyWith =>
      _$AppointmentFormStateCopyWithImpl<AppointmentFormState>(
          this as AppointmentFormState, _$identity);

  /// Serializes this AppointmentFormState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppointmentFormState &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.selectedService, selectedService) ||
                other.selectedService == selectedService) &&
            (identical(other.selectedProfessionalId, selectedProfessionalId) ||
                other.selectedProfessionalId == selectedProfessionalId) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, selectedDate, selectedService,
      selectedProfessionalId, note, isLoading, error);

  @override
  String toString() {
    return 'AppointmentFormState(selectedDate: $selectedDate, selectedService: $selectedService, selectedProfessionalId: $selectedProfessionalId, note: $note, isLoading: $isLoading, error: $error)';
  }
}

/// @nodoc
abstract mixin class $AppointmentFormStateCopyWith<$Res> {
  factory $AppointmentFormStateCopyWith(AppointmentFormState value,
          $Res Function(AppointmentFormState) _then) =
      _$AppointmentFormStateCopyWithImpl;
  @useResult
  $Res call(
      {DateTime? selectedDate,
      String? selectedService,
      String? selectedProfessionalId,
      String? note,
      bool isLoading,
      String? error});
}

/// @nodoc
class _$AppointmentFormStateCopyWithImpl<$Res>
    implements $AppointmentFormStateCopyWith<$Res> {
  _$AppointmentFormStateCopyWithImpl(this._self, this._then);

  final AppointmentFormState _self;
  final $Res Function(AppointmentFormState) _then;

  /// Create a copy of AppointmentFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = freezed,
    Object? selectedService = freezed,
    Object? selectedProfessionalId = freezed,
    Object? note = freezed,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_self.copyWith(
      selectedDate: freezed == selectedDate
          ? _self.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedService: freezed == selectedService
          ? _self.selectedService
          : selectedService // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedProfessionalId: freezed == selectedProfessionalId
          ? _self.selectedProfessionalId
          : selectedProfessionalId // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AppointmentFormState implements AppointmentFormState {
  const _AppointmentFormState(
      {this.selectedDate,
      this.selectedService,
      this.selectedProfessionalId,
      this.note,
      this.isLoading = false,
      this.error});
  factory _AppointmentFormState.fromJson(Map<String, dynamic> json) =>
      _$AppointmentFormStateFromJson(json);

  @override
  final DateTime? selectedDate;
  @override
  final String? selectedService;
  @override
  final String? selectedProfessionalId;
  @override
  final String? note;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;

  /// Create a copy of AppointmentFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppointmentFormStateCopyWith<_AppointmentFormState> get copyWith =>
      __$AppointmentFormStateCopyWithImpl<_AppointmentFormState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AppointmentFormStateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppointmentFormState &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.selectedService, selectedService) ||
                other.selectedService == selectedService) &&
            (identical(other.selectedProfessionalId, selectedProfessionalId) ||
                other.selectedProfessionalId == selectedProfessionalId) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, selectedDate, selectedService,
      selectedProfessionalId, note, isLoading, error);

  @override
  String toString() {
    return 'AppointmentFormState(selectedDate: $selectedDate, selectedService: $selectedService, selectedProfessionalId: $selectedProfessionalId, note: $note, isLoading: $isLoading, error: $error)';
  }
}

/// @nodoc
abstract mixin class _$AppointmentFormStateCopyWith<$Res>
    implements $AppointmentFormStateCopyWith<$Res> {
  factory _$AppointmentFormStateCopyWith(_AppointmentFormState value,
          $Res Function(_AppointmentFormState) _then) =
      __$AppointmentFormStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {DateTime? selectedDate,
      String? selectedService,
      String? selectedProfessionalId,
      String? note,
      bool isLoading,
      String? error});
}

/// @nodoc
class __$AppointmentFormStateCopyWithImpl<$Res>
    implements _$AppointmentFormStateCopyWith<$Res> {
  __$AppointmentFormStateCopyWithImpl(this._self, this._then);

  final _AppointmentFormState _self;
  final $Res Function(_AppointmentFormState) _then;

  /// Create a copy of AppointmentFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? selectedDate = freezed,
    Object? selectedService = freezed,
    Object? selectedProfessionalId = freezed,
    Object? note = freezed,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_AppointmentFormState(
      selectedDate: freezed == selectedDate
          ? _self.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedService: freezed == selectedService
          ? _self.selectedService
          : selectedService // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedProfessionalId: freezed == selectedProfessionalId
          ? _self.selectedProfessionalId
          : selectedProfessionalId // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
