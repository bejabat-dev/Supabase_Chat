// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_chats.freezed.dart';
part 'model_chats.g.dart';

@freezed
class ModelChats with _$ModelChats {
  const factory ModelChats({
    int? id,
    required String message,
    required String room_id,
    required String sender,
    required String created,
  }) = _ModelChats;

  factory ModelChats.fromJson(Map<String, dynamic> json) =>
      _$ModelChatsFromJson(json);
}
