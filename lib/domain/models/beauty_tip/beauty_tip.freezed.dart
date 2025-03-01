// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beauty_tip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BeautyTip {
  String get title;
  String get description;

  /// Create a copy of BeautyTip
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BeautyTipCopyWith<BeautyTip> get copyWith =>
      _$BeautyTipCopyWithImpl<BeautyTip>(this as BeautyTip, _$identity);

  /// Serializes this BeautyTip to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BeautyTip &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @override
  String toString() {
    return 'BeautyTip(title: $title, description: $description)';
  }
}

/// @nodoc
abstract mixin class $BeautyTipCopyWith<$Res> {
  factory $BeautyTipCopyWith(BeautyTip value, $Res Function(BeautyTip) _then) =
      _$BeautyTipCopyWithImpl;
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class _$BeautyTipCopyWithImpl<$Res> implements $BeautyTipCopyWith<$Res> {
  _$BeautyTipCopyWithImpl(this._self, this._then);

  final BeautyTip _self;
  final $Res Function(BeautyTip) _then;

  /// Create a copy of BeautyTip
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_self.copyWith(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _BeautyTip implements BeautyTip {
  const _BeautyTip({required this.title, required this.description});
  factory _BeautyTip.fromJson(Map<String, dynamic> json) =>
      _$BeautyTipFromJson(json);

  @override
  final String title;
  @override
  final String description;

  /// Create a copy of BeautyTip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BeautyTipCopyWith<_BeautyTip> get copyWith =>
      __$BeautyTipCopyWithImpl<_BeautyTip>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BeautyTipToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BeautyTip &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @override
  String toString() {
    return 'BeautyTip(title: $title, description: $description)';
  }
}

/// @nodoc
abstract mixin class _$BeautyTipCopyWith<$Res>
    implements $BeautyTipCopyWith<$Res> {
  factory _$BeautyTipCopyWith(
          _BeautyTip value, $Res Function(_BeautyTip) _then) =
      __$BeautyTipCopyWithImpl;
  @override
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class __$BeautyTipCopyWithImpl<$Res> implements _$BeautyTipCopyWith<$Res> {
  __$BeautyTipCopyWithImpl(this._self, this._then);

  final _BeautyTip _self;
  final $Res Function(_BeautyTip) _then;

  /// Create a copy of BeautyTip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_BeautyTip(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
