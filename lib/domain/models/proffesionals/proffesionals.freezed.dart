// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'proffesionals.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Proffesional {
// required String id,
  User get user;
  Speciality get speciality;
  Map<String, String> get links;
  String get photoUrl;
  double get rating;
  int get reviewCount;

  /// Create a copy of Proffesional
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProffesionalCopyWith<Proffesional> get copyWith =>
      _$ProffesionalCopyWithImpl<Proffesional>(
          this as Proffesional, _$identity);

  /// Serializes this Proffesional to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Proffesional &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.speciality, speciality) ||
                other.speciality == speciality) &&
            const DeepCollectionEquality().equals(other.links, links) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      speciality,
      const DeepCollectionEquality().hash(links),
      photoUrl,
      rating,
      reviewCount);

  @override
  String toString() {
    return 'Proffesional(user: $user, speciality: $speciality, links: $links, photoUrl: $photoUrl, rating: $rating, reviewCount: $reviewCount)';
  }
}

/// @nodoc
abstract mixin class $ProffesionalCopyWith<$Res> {
  factory $ProffesionalCopyWith(
          Proffesional value, $Res Function(Proffesional) _then) =
      _$ProffesionalCopyWithImpl;
  @useResult
  $Res call(
      {User user,
      Speciality speciality,
      Map<String, String> links,
      String photoUrl,
      double rating,
      int reviewCount});

  $UserCopyWith<$Res> get user;
  $SpecialityCopyWith<$Res> get speciality;
}

/// @nodoc
class _$ProffesionalCopyWithImpl<$Res> implements $ProffesionalCopyWith<$Res> {
  _$ProffesionalCopyWithImpl(this._self, this._then);

  final Proffesional _self;
  final $Res Function(Proffesional) _then;

  /// Create a copy of Proffesional
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? speciality = null,
    Object? links = null,
    Object? photoUrl = null,
    Object? rating = null,
    Object? reviewCount = null,
  }) {
    return _then(_self.copyWith(
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      speciality: null == speciality
          ? _self.speciality
          : speciality // ignore: cast_nullable_to_non_nullable
              as Speciality,
      links: null == links
          ? _self.links
          : links // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      photoUrl: null == photoUrl
          ? _self.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      reviewCount: null == reviewCount
          ? _self.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of Proffesional
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }

  /// Create a copy of Proffesional
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
class _Proffesional implements Proffesional {
  const _Proffesional(
      {required this.user,
      required this.speciality,
      required final Map<String, String> links,
      this.photoUrl = 'assets/images/bei.jpeg',
      this.rating = 5,
      this.reviewCount = 100})
      : _links = links;
  factory _Proffesional.fromJson(Map<String, dynamic> json) =>
      _$ProffesionalFromJson(json);

// required String id,
  @override
  final User user;
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
  @JsonKey()
  final String photoUrl;
  @override
  @JsonKey()
  final double rating;
  @override
  @JsonKey()
  final int reviewCount;

  /// Create a copy of Proffesional
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProffesionalCopyWith<_Proffesional> get copyWith =>
      __$ProffesionalCopyWithImpl<_Proffesional>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProffesionalToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Proffesional &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.speciality, speciality) ||
                other.speciality == speciality) &&
            const DeepCollectionEquality().equals(other._links, _links) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      speciality,
      const DeepCollectionEquality().hash(_links),
      photoUrl,
      rating,
      reviewCount);

  @override
  String toString() {
    return 'Proffesional(user: $user, speciality: $speciality, links: $links, photoUrl: $photoUrl, rating: $rating, reviewCount: $reviewCount)';
  }
}

/// @nodoc
abstract mixin class _$ProffesionalCopyWith<$Res>
    implements $ProffesionalCopyWith<$Res> {
  factory _$ProffesionalCopyWith(
          _Proffesional value, $Res Function(_Proffesional) _then) =
      __$ProffesionalCopyWithImpl;
  @override
  @useResult
  $Res call(
      {User user,
      Speciality speciality,
      Map<String, String> links,
      String photoUrl,
      double rating,
      int reviewCount});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $SpecialityCopyWith<$Res> get speciality;
}

/// @nodoc
class __$ProffesionalCopyWithImpl<$Res>
    implements _$ProffesionalCopyWith<$Res> {
  __$ProffesionalCopyWithImpl(this._self, this._then);

  final _Proffesional _self;
  final $Res Function(_Proffesional) _then;

  /// Create a copy of Proffesional
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = null,
    Object? speciality = null,
    Object? links = null,
    Object? photoUrl = null,
    Object? rating = null,
    Object? reviewCount = null,
  }) {
    return _then(_Proffesional(
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      speciality: null == speciality
          ? _self.speciality
          : speciality // ignore: cast_nullable_to_non_nullable
              as Speciality,
      links: null == links
          ? _self._links
          : links // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      photoUrl: null == photoUrl
          ? _self.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      reviewCount: null == reviewCount
          ? _self.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of Proffesional
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }

  /// Create a copy of Proffesional
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
