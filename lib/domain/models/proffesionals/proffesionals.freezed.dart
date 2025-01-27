// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'proffesionals.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Proffesional _$ProffesionalFromJson(Map<String, dynamic> json) {
  return _Proffesional.fromJson(json);
}

/// @nodoc
mixin _$Proffesional {
  String get id => throw _privateConstructorUsedError;
  Speciality get speciality => throw _privateConstructorUsedError;
  Map<String, String> get links => throw _privateConstructorUsedError;

  /// Serializes this Proffesional to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Proffesional
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProffesionalCopyWith<Proffesional> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProffesionalCopyWith<$Res> {
  factory $ProffesionalCopyWith(
          Proffesional value, $Res Function(Proffesional) then) =
      _$ProffesionalCopyWithImpl<$Res, Proffesional>;
  @useResult
  $Res call({String id, Speciality speciality, Map<String, String> links});

  $SpecialityCopyWith<$Res> get speciality;
}

/// @nodoc
class _$ProffesionalCopyWithImpl<$Res, $Val extends Proffesional>
    implements $ProffesionalCopyWith<$Res> {
  _$ProffesionalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Proffesional
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? speciality = null,
    Object? links = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      speciality: null == speciality
          ? _value.speciality
          : speciality // ignore: cast_nullable_to_non_nullable
              as Speciality,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }

  /// Create a copy of Proffesional
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpecialityCopyWith<$Res> get speciality {
    return $SpecialityCopyWith<$Res>(_value.speciality, (value) {
      return _then(_value.copyWith(speciality: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProffesionalImplCopyWith<$Res>
    implements $ProffesionalCopyWith<$Res> {
  factory _$$ProffesionalImplCopyWith(
          _$ProffesionalImpl value, $Res Function(_$ProffesionalImpl) then) =
      __$$ProffesionalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, Speciality speciality, Map<String, String> links});

  @override
  $SpecialityCopyWith<$Res> get speciality;
}

/// @nodoc
class __$$ProffesionalImplCopyWithImpl<$Res>
    extends _$ProffesionalCopyWithImpl<$Res, _$ProffesionalImpl>
    implements _$$ProffesionalImplCopyWith<$Res> {
  __$$ProffesionalImplCopyWithImpl(
      _$ProffesionalImpl _value, $Res Function(_$ProffesionalImpl) _then)
      : super(_value, _then);

  /// Create a copy of Proffesional
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? speciality = null,
    Object? links = null,
  }) {
    return _then(_$ProffesionalImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      speciality: null == speciality
          ? _value.speciality
          : speciality // ignore: cast_nullable_to_non_nullable
              as Speciality,
      links: null == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProffesionalImpl implements _Proffesional {
  const _$ProffesionalImpl(
      {required this.id,
      required this.speciality,
      required final Map<String, String> links})
      : _links = links;

  factory _$ProffesionalImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProffesionalImplFromJson(json);

  @override
  final String id;
  @override
  final Speciality speciality;
  final Map<String, String> _links;
  @override
  Map<String, String> get links {
    if (_links is EqualUnmodifiableMapView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_links);
  }

  @override
  String toString() {
    return 'Proffesional(id: $id, speciality: $speciality, links: $links)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProffesionalImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.speciality, speciality) ||
                other.speciality == speciality) &&
            const DeepCollectionEquality().equals(other._links, _links));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, speciality, const DeepCollectionEquality().hash(_links));

  /// Create a copy of Proffesional
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProffesionalImplCopyWith<_$ProffesionalImpl> get copyWith =>
      __$$ProffesionalImplCopyWithImpl<_$ProffesionalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProffesionalImplToJson(
      this,
    );
  }
}

abstract class _Proffesional implements Proffesional {
  const factory _Proffesional(
      {required final String id,
      required final Speciality speciality,
      required final Map<String, String> links}) = _$ProffesionalImpl;

  factory _Proffesional.fromJson(Map<String, dynamic> json) =
      _$ProffesionalImpl.fromJson;

  @override
  String get id;
  @override
  Speciality get speciality;
  @override
  Map<String, String> get links;

  /// Create a copy of Proffesional
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProffesionalImplCopyWith<_$ProffesionalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
