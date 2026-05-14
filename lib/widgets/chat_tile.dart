import 'package:flutter/material.dart';

import '../models/chat_model.dart';

class ChatTile extends StatelessWidget {
  final ChatModel chat;

  const ChatTile({super.key, required this.chat});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),

      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),

        hoverColor: Colors.grey.shade100,

        leading: CircleAvatar(
          radius: 28,
          backgroundImage: NetworkImage(chat.image),
        ),

        title: Text(
          chat.name,

          maxLines: 1,

          overflow: TextOverflow.ellipsis,

          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),

        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4),

          child: Text(
            chat.lastMessage,

            maxLines: 1,

            overflow: TextOverflow.ellipsis,

            style: TextStyle(color: Colors.grey.shade700),
          ),
        ),

        trailing: SizedBox(
          width: 70,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            crossAxisAlignment: CrossAxisAlignment.end,

            children: [
              Text(
                chat.time,

                overflow: TextOverflow.ellipsis,

                style: const TextStyle(fontSize: 11),
              ),

              const SizedBox(height: 6),

              if (chat.unreadCount > 0)
                Container(
                  height: 22,
                  width: 22,

                  alignment: Alignment.center,

                  decoration: const BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),

                  child: Text(
                    chat.unreadCount.toString(),

                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
