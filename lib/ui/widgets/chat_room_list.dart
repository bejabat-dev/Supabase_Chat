import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_chat/modules/riverpod/chats.dart';

class ChatRoomList extends ConsumerWidget {
  const ChatRoomList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chatRooms = ref.watch(chatRoomListProviderProvider);
    return Scaffold(
      body: chatRooms.when(data: (value) {
        return ListView.builder(
            itemCount: value.length,
            itemBuilder: (context, i) {
              final chatRoom = value[i];
              return ListTile(
                title: Text(chatRoom.user1),
                onTap: () {},
              );
            });
      }, error: (e, s) {
        return Text("Error: $e");
      }, loading: () {
        return Center(child: CupertinoActivityIndicator());
      }),
    );
  }
}
