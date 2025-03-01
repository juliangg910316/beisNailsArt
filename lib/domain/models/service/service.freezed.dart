// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Service {
  int get id;
  Speciality get speciality;
  double get price;
  DateTime get duration;
  String get name;
  String get description;

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ServiceCopyWith<Service> get copyWith =>
      _$ServiceCopyWithImpl<Service>(this as Service, _$identity);

  /// Serializes this Service to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Service &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.speciality, speciality) ||
                other.speciality == speciality) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, speciality, price, duration, name, description);

  @override
  String toString() {
    return 'Service(id: $id, speciality: $speciality, price: $price, duration: $duration, name: $name, description: $description)';
  }
}

/// @nodoc
abstract mixin class $ServiceCopyWith<$Res> {
  factory $ServiceCopyWith(Service value, $Res Function(Service) _then) =
      _$ServiceCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      Speciality speciality,
      double price,
      DateTime duration,
      String name,
      String description});

  $SpecialityCopyWith<$Res> get speciality;
}

/// @nodoc
class _$ServiceCopyWithImpl<$Res> implements $ServiceCopyWith<$Res> {
  _$ServiceCopyWithImpl(this._self, this._then);

  final Service _self;
  final $Res Function(Service) _then;

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? speciality = null,
    Object? price = null,
    Object? duration = null,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      speciality: null == speciality
          ? _self.speciality
          : speciality // ignore: cast_nullable_to_non_nullable
              as Speciality,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      duration: null == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpecialityCopyWith<$Res> get speciality {
    return $SpecialityCopyWith<$Res>(_self.speciality, (value) {
      return _then(_self.copyWith(speciality: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Service implements Service {
  const _Service(
      {required this.id,
      required this.speciality,
      required this.price,
      required this.duration,
      required this.name,
      required this.description});
  factory _Service.fromJson(Map<String, dynamic> json) =>
      _$ServiceFromJson(json);

  @override
  final int id;
  @override
  final Speciality speciality;
  @override
  final double price;
  @override
  final DateTime duration;
  @override
  final String name;
  @override
  final String description;

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ServiceCopyWith<_Service> get copyWith =>
      __$ServiceCopyWithImpl<_Service>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ServiceToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Service &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.speciality, speciality) ||
                other.speciality == speciality) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, speciality, price, duration, name, description);

  @override
  String toString() {
    return 'Service(id: $id, speciality: $speciality, price: $price, duration: $duration, name: $name, description: $description)';
  }
}

/// @nodoc
abstract mixin class _$ServiceCopyWith<$Res> implements $ServiceCopyWith<$Res> {
  factory _$ServiceCopyWith(_Service value, $Res Function(_Service) _then) =
      __$ServiceCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      Speciality speciality,
      double price,
      DateTime duration,
      String name,
      String description});

  @override
  $SpecialityCopyWith<$Res> get speciality;
}

/// @nodoc
class __$ServiceCopyWithImpl<$Res> implements _$ServiceCopyWith<$Res> {
  __$ServiceCopyWithImpl(this._self, this._then);

  final _Service _self;
  final $Res Function(_Service) _then;

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? speciality = null,
    Object? price = null,
    Object? duration = null,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_Service(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      speciality: null == speciality
          ? _self.speciality
          : speciality // ignore: cast_nullable_to_non_nullable
              as Speciality,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      duration: null == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpecialityCopyWith<$Res> get speciality {
    return $SpecialityCopyWith<$Res>(_self.speciality, (value) {
      return _then(_self.copyWith(speciality: value));
    });
  }
}

// dart format on
