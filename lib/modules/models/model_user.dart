// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_user.freezed.dart';
part 'model_user.g.dart';

@freezed
class ModelUser with _$ModelUser {
  const factory ModelUser({
    int? id,
    required String name,
    String? phone,
    @JsonKey(name: 'createdAt') required DateTime createdAt,
  }) = _ModelUser;

  factory ModelUser.fromJson(Map<String, dynamic> json) =>
      _$ModelUserFromJson(json);
}