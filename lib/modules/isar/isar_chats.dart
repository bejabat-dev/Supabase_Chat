// ignore_for_file: non_constant_identifier_names

import 'package:isar/isar.dart';

part 'isar_chats.g.dart';

@collection
class IsarChats {
  Id id = Isar.autoIncrement;
  late String message;
  late String room_id;
  late String sender;
  late String created;
}