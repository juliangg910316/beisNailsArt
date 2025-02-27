// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'speciality.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Speciality _$SpecialityFromJson(Map<String, dynamic> json) {
  return _Speciality.fromJson(json);
}

/// @nodoc
mixin _$Speciality {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  /// Serializes this Speciality to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Speciality
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpecialityCopyWith<Speciality> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialityCopyWith<$Res> {
  factory $SpecialityCopyWith(
          Speciality value, $Res Function(Speciality) then) =
      _$SpecialityCopyWithImpl<$Res, Speciality>;
  @useResult
  $Res call({int id, String name, String icon});
}

/// @nodoc
class _$SpecialityCopyWithImpl<$Res, $Val extends Speciality>
    implements $SpecialityCopyWith<$Res> {
  _$SpecialityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Speciality
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpecialityImplCopyWith<$Res>
    implements $SpecialityCopyWith<$Res> {
  factory _$$SpecialityImplCopyWith(
          _$SpecialityImpl value, $Res Function(_$SpecialityImpl) then) =
      __$$SpecialityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String icon});
}

/// @nodoc
class __$$SpecialityImplCopyWithImpl<$Res>
    extends _$SpecialityCopyWithImpl<$Res, _$SpecialityImpl>
    implements _$$SpecialityImplCopyWith<$Res> {
  __$$SpecialityImplCopyWithImpl(
      _$SpecialityImpl _value, $Res Function(_$SpecialityImpl) _then)
      : super(_value, _then);

  /// Create a copy of Speciality
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = null,
  }) {
    return _then(_$SpecialityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpecialityImpl implements _Speciality {
  const _$SpecialityImpl(
      {required this.id, required this.name, this.icon = ''});

  factory _$SpecialityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecialityImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey()
  final String icon;

  @override
  String toString() {
    return 'Speciality(id: $id, name: $name, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecialityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, icon);

  /// Create a copy of Speciality
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecialityImplCopyWith<_$SpecialityImpl> get copyWith =>
      __$$SpecialityImplCopyWithImpl<_$SpecialityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecialityImplToJson(
      this,
    );
  }
}

abstract class _Speciality implements Speciality {
  const factory _Speciality(
      {required final int id,
      required final String name,
      final String icon}) = _$SpecialityImpl;

  factory _Speciality.fromJson(Map<String, dynamic> json) =
      _$SpecialityImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get icon;

  /// Create a copy of Speciality
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpecialityImplCopyWith<_$SpecialityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
