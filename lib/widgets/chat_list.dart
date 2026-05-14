// import 'package:flutter/material.dart';

// import '../models/chat_model.dart';
// import 'chat_tile.dart';

// class ChatList extends StatelessWidget {
//   final List<ChatModel> chats;

//   const ChatList({super.key, required this.chats});

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: chats.length,

//       itemBuilder: (context, index) {
//         return ChatTile(chat: chats[index]);
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  final List chats;

  const ChatList({
    super.key,
    required this.chats,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        final chat = chats[index];

        return ListTile(
          leading: CircleAvatar(
            child: Text(chat["name"][0]),
          ),
          title: Text(chat["name"]),
          subtitle: Text(chat["lastMessage"]),
        );
      },
    );
  }
}
