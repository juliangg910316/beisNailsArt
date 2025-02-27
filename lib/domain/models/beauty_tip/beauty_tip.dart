import 'package:freezed_annotation/freezed_annotation.dart';

part 'beauty_tip.freezed.dart';
part 'beauty_tip.g.dart';

@freezed
class BeautyTip with _$BeautyTip {
  const factory BeautyTip({
    required String title,
    required String description,
  }) = _BeautyTip;

  factory BeautyTip.fromJson(Map<String, dynamic> json) =>
      _$BeautyTipFromJson(json);
}
