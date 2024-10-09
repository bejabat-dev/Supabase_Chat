// ignore_for_file: non_constant_identifier_names

import 'package:isar/isar.dart';

part 'isar_chat_rooms.g.dart';

@collection
class IsarChatRooms {
  Id id = Isar.autoIncrement;
  late String room_id;
  late String user1;
  late String user2;
  late String created;
}
