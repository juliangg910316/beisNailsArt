// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'speciality.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Speciality {
  int get id;
  String get name;
  String get icon;

  /// Create a copy of Speciality
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SpecialityCopyWith<Speciality> get copyWith =>
      _$SpecialityCopyWithImpl<Speciality>(this as Speciality, _$identity);

  /// Serializes this Speciality to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Speciality &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, icon);

  @override
  String toString() {
    return 'Speciality(id: $id, name: $name, icon: $icon)';
  }
}

/// @nodoc
abstract mixin class $SpecialityCopyWith<$Res> {
  factory $SpecialityCopyWith(
          Speciality value, $Res Function(Speciality) _then) =
      _$SpecialityCopyWithImpl;
  @useResult
  $Res call({int id, String name, String icon});
}

/// @nodoc
class _$SpecialityCopyWithImpl<$Res> implements $SpecialityCopyWith<$Res> {
  _$SpecialityCopyWithImpl(this._self, this._then);

  final Speciality _self;
  final $Res Function(Speciality) _then;

  /// Create a copy of Speciality
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Speciality implements Speciality {
  const _Speciality({required this.id, required this.name, this.icon = ''});
  factory _Speciality.fromJson(Map<String, dynamic> json) =>
      _$SpecialityFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey()
  final String icon;

  /// Create a copy of Speciality
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SpecialityCopyWith<_Speciality> get copyWith =>
      __$SpecialityCopyWithImpl<_Speciality>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SpecialityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Speciality &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, icon);

  @override
  String toString() {
    return 'Speciality(id: $id, name: $name, icon: $icon)';
  }
}

/// @nodoc
abstract mixin class _$SpecialityCopyWith<$Res>
    implements $SpecialityCopyWith<$Res> {
  factory _$SpecialityCopyWith(
          _Speciality value, $Res Function(_Speciality) _then) =
      __$SpecialityCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String name, String icon});
}

/// @nodoc
class __$SpecialityCopyWithImpl<$Res> implements _$SpecialityCopyWith<$Res> {
  __$SpecialityCopyWithImpl(this._self, this._then);

  final _Speciality _self;
  final $Res Function(_Speciality) _then;

  /// Create a copy of Speciality
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = null,
  }) {
    return _then(_Speciality(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
