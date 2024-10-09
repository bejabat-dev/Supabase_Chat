// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_chats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModelChatsImpl _$$ModelChatsImplFromJson(Map<String, dynamic> json) =>
    _$ModelChatsImpl(
      id: (json['id'] as num?)?.toInt(),
      message: json['message'] as String,
      room_id: json['room_id'] as String,
      sender: json['sender'] as String,
      created: json['created'] as String,
    );

Map<String, dynamic> _$$ModelChatsImplToJson(_$ModelChatsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'room_id': instance.room_id,
      'sender': instance.sender,
      'created': instance.created,
    };
