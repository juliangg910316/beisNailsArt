// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'professional_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfessionalState {
  List<Proffesional> get professionals;
  bool get isLoading;
  String? get error;

  /// Create a copy of ProfessionalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProfessionalStateCopyWith<ProfessionalState> get copyWith =>
      _$ProfessionalStateCopyWithImpl<ProfessionalState>(
          this as ProfessionalState, _$identity);

  /// Serializes this ProfessionalState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProfessionalState &&
            const DeepCollectionEquality()
                .equals(other.professionals, professionals) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(professionals), isLoading, error);

  @override
  String toString() {
    return 'ProfessionalState(professionals: $professionals, isLoading: $isLoading, error: $error)';
  }
}

/// @nodoc
abstract mixin class $ProfessionalStateCopyWith<$Res> {
  factory $ProfessionalStateCopyWith(
          ProfessionalState value, $Res Function(ProfessionalState) _then) =
      _$ProfessionalStateCopyWithImpl;
  @useResult
  $Res call({List<Proffesional> professionals, bool isLoading, String? error});
}

/// @nodoc
class _$ProfessionalStateCopyWithImpl<$Res>
    implements $ProfessionalStateCopyWith<$Res> {
  _$ProfessionalStateCopyWithImpl(this._self, this._then);

  final ProfessionalState _self;
  final $Res Function(ProfessionalState) _then;

  /// Create a copy of ProfessionalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? professionals = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_self.copyWith(
      professionals: null == professionals
          ? _self.professionals
          : professionals // ignore: cast_nullable_to_non_nullable
              as List<Proffesional>,
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
class _ProfessionalState implements ProfessionalState {
  const _ProfessionalState(
      {final List<Proffesional> professionals = const [],
      this.isLoading = false,
      this.error})
      : _professionals = professionals;
  factory _ProfessionalState.fromJson(Map<String, dynamic> json) =>
      _$ProfessionalStateFromJson(json);

  final List<Proffesional> _professionals;
  @override
  @JsonKey()
  List<Proffesional> get professionals {
    if (_professionals is EqualUnmodifiableListView) return _professionals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_professionals);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;

  /// Create a copy of ProfessionalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProfessionalStateCopyWith<_ProfessionalState> get copyWith =>
      __$ProfessionalStateCopyWithImpl<_ProfessionalState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProfessionalStateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfessionalState &&
            const DeepCollectionEquality()
                .equals(other._professionals, _professionals) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_professionals), isLoading, error);

  @override
  String toString() {
    return 'ProfessionalState(professionals: $professionals, isLoading: $isLoading, error: $error)';
  }
}

/// @nodoc
abstract mixin class _$ProfessionalStateCopyWith<$Res>
    implements $ProfessionalStateCopyWith<$Res> {
  factory _$ProfessionalStateCopyWith(
          _ProfessionalState value, $Res Function(_ProfessionalState) _then) =
      __$ProfessionalStateCopyWithImpl;
  @override
  @useResult
  $Res call({List<Proffesional> professionals, bool isLoading, String? error});
}

/// @nodoc
class __$ProfessionalStateCopyWithImpl<$Res>
    implements _$ProfessionalStateCopyWith<$Res> {
  __$ProfessionalStateCopyWithImpl(this._self, this._then);

  final _ProfessionalState _self;
  final $Res Function(_ProfessionalState) _then;

  /// Create a copy of ProfessionalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? professionals = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_ProfessionalState(
      professionals: null == professionals
          ? _self._professionals
          : professionals // ignore: cast_nullable_to_non_nullable
              as List<Proffesional>,
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
