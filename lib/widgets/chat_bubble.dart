import 'package:flutter/material.dart';
import '../models/message_model.dart';

class ChatBubble extends StatelessWidget {
  final MessageModel message;

  const ChatBubble({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 6,
      ),
      child: Row(
        mainAxisAlignment:
            message.isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (!message.isMe)
            const CircleAvatar(
              radius: 16,
              backgroundImage: NetworkImage(
                'https://i.pravatar.cc/150?img=3',
              ),
            ),
          const SizedBox(width: 8),
          Flexible(
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: message.isMe ? Colors.blue : Colors.grey.shade300,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(18),
                  topRight: const Radius.circular(18),
                  bottomLeft: Radius.circular(
                    message.isMe ? 18 : 0,
                  ),
                  bottomRight: Radius.circular(
                    message.isMe ? 0 : 18,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  if (message.imageUrl != null)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        message.imageUrl!,
                        height: 180,
                        width: 220,
                        fit: BoxFit.cover,
                      ),
                    ),
                  if (message.imageUrl != null) const SizedBox(height: 8),
                  Text(
                    message.text,
                    style: TextStyle(
                      color: message.isMe ? Colors.white : Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '${message.time.hour}:${message.time.minute.toString().padLeft(2, '0')}',
                        style: TextStyle(
                          fontSize: 11,
                          color: message.isMe ? Colors.white70 : Colors.black54,
                        ),
                      ),
                      if (message.isMe)
                        Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: Icon(
                            message.isSeen ? Icons.done_all : Icons.done,
                            size: 16,
                            color: message.isSeen
                                ? Colors.lightBlueAccent
                                : Colors.white70,
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
