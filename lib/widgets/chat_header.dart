import 'package:flutter/material.dart';

class ChatHeader extends StatelessWidget {
  const ChatHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Color(0xFFE0E0E0))),
      ),

      child: Row(
        children: [
          // PROFILE IMAGE
          const CircleAvatar(
            radius: 24,
            backgroundColor: Color(0xFFD8C8F0),
            child: Icon(Icons.person, color: Colors.white),
          ),

          const SizedBox(width: 15),

          // NAME + STATUS
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Project Team",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              SizedBox(height: 5),

              Text(
                "Online",
                style: TextStyle(fontSize: 14, color: Colors.green),
              ),
            ],
          ),

          const Spacer(),

          // ACTION BUTTONS
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.call, color: Colors.grey),
              ),

              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.videocam, color: Colors.grey),
              ),

              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
