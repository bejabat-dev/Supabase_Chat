import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_chat/main.dart';
import 'package:supabase_chat/modules/isar/isar_chat_rooms.dart';

part 'chats.g.dart';

@riverpod
class ChatRoomListProvider extends _$ChatRoomListProvider {
  @override
  Future<List<IsarChatRooms>> build() async {
    final rooms = await isar.isarChatRooms.where().findAll();
    if (rooms.isEmpty) {
      debugPrint('Empty');
    }
    return rooms;
  }

  Future<void> createChatRoom(String user1, String user2) async {
    await isar.writeTxn(() async {
      await isar.clear();
      await isar.isarChatRooms.put(IsarChatRooms()
        ..user1 = user1
        ..user2 = user2
        ..room_id = user1 + user2
        ..created = DateTime.now().toIso8601String());
    });
    debugPrint('Chat added');

    state = AsyncData(await isar.isarChatRooms.where().findAll());
  }
}
