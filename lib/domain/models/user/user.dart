// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:freezed_annotation/freezed_annotation.dart';

import '../roles/role.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    @Default('0') String id,
    @Default(null) String? name,
    @Default(null) String? picture,
    @Default(null) String? address,
    @Default(null) DateTime? birthDate,
    @Default(Role.client) Role role,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
