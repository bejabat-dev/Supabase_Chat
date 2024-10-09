// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_chats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ModelChats _$ModelChatsFromJson(Map<String, dynamic> json) {
  return _ModelChats.fromJson(json);
}

/// @nodoc
mixin _$ModelChats {
  int? get id => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get room_id => throw _privateConstructorUsedError;
  String get sender => throw _privateConstructorUsedError;
  String get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelChatsCopyWith<ModelChats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelChatsCopyWith<$Res> {
  factory $ModelChatsCopyWith(
          ModelChats value, $Res Function(ModelChats) then) =
      _$ModelChatsCopyWithImpl<$Res, ModelChats>;
  @useResult
  $Res call(
      {int? id, String message, String room_id, String sender, String created});
}

/// @nodoc
class _$ModelChatsCopyWithImpl<$Res, $Val extends ModelChats>
    implements $ModelChatsCopyWith<$Res> {
  _$ModelChatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? message = null,
    Object? room_id = null,
    Object? sender = null,
    Object? created = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      room_id: null == room_id
          ? _value.room_id
          : room_id // ignore: cast_nullable_to_non_nullable
              as String,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModelChatsImplCopyWith<$Res>
    implements $ModelChatsCopyWith<$Res> {
  factory _$$ModelChatsImplCopyWith(
          _$ModelChatsImpl value, $Res Function(_$ModelChatsImpl) then) =
      __$$ModelChatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id, String message, String room_id, String sender, String created});
}

/// @nodoc
class __$$ModelChatsImplCopyWithImpl<$Res>
    extends _$ModelChatsCopyWithImpl<$Res, _$ModelChatsImpl>
    implements _$$ModelChatsImplCopyWith<$Res> {
  __$$ModelChatsImplCopyWithImpl(
      _$ModelChatsImpl _value, $Res Function(_$ModelChatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? message = null,
    Object? room_id = null,
    Object? sender = null,
    Object? created = null,
  }) {
    return _then(_$ModelChatsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      room_id: null == room_id
          ? _value.room_id
          : room_id // ignore: cast_nullable_to_non_nullable
              as String,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelChatsImpl implements _ModelChats {
  const _$ModelChatsImpl(
      {this.id,
      required this.message,
      required this.room_id,
      required this.sender,
      required this.created});

  factory _$ModelChatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelChatsImplFromJson(json);

  @override
  final int? id;
  @override
  final String message;
  @override
  final String room_id;
  @override
  final String sender;
  @override
  final String created;

  @override
  String toString() {
    return 'ModelChats(id: $id, message: $message, room_id: $room_id, sender: $sender, created: $created)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelChatsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.room_id, room_id) || other.room_id == room_id) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.created, created) || other.created == created));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, message, room_id, sender, created);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelChatsImplCopyWith<_$ModelChatsImpl> get copyWith =>
      __$$ModelChatsImplCopyWithImpl<_$ModelChatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelChatsImplToJson(
      this,
    );
  }
}

abstract class _ModelChats implements ModelChats {
  const factory _ModelChats(
      {final int? id,
      required final String message,
      required final String room_id,
      required final String sender,
      required final String created}) = _$ModelChatsImpl;

  factory _ModelChats.fromJson(Map<String, dynamic> json) =
      _$ModelChatsImpl.fromJson;

  @override
  int? get id;
  @override
  String get message;
  @override
  String get room_id;
  @override
  String get sender;
  @override
  String get created;
  @override
  @JsonKey(ignore: true)
  _$$ModelChatsImplCopyWith<_$ModelChatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
