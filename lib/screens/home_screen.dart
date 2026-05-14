import 'package:flutter/material.dart';
import '../widgets/side_bar.dart';
import '../widgets/chat_list.dart';
import 'chat_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedChat = 0;

  final List<Map<String, dynamic>> chats = [
    {
      "name": "Project Team",
      "lastMessage": "Meeting moved to 5 PM",
      "time": "7:30 PM",
      "unreadCount": 2,
      "image": "",
    },
    {
      "name": "Alice Johnson",
      "lastMessage": "UI package looks amazing",
      "time": "6:15 PM",
      "unreadCount": 1,
      "image": "",
    },
    {
      "name": "Flutter Community",
      "lastMessage": "Package published successfully",
      "time": "Yesterday",
      "unreadCount": 3,
      "image": "",
    },
    {
      "name": "Design Review",
      "lastMessage": "Need responsive layout update",
      "time": "Monday",
      "unreadCount": 0,
      "image": "",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // SIDEBAR
          const Sidebar(),

          // CHAT LIST
          Container(
            width: 350,
            color: const Color(0xFFF5F5F5),
            child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      selectedChat = index;
                    });
                  },
                  child: Container(
                    color: selectedChat == index
                        ? Colors.white
                        : Colors.transparent,
                    child: ChatList(chats: chats),
                  ),
                );
              },
            ),
          ),

          // CHAT SCREEN
          Expanded(child: ChatScreen(chatName: chats[selectedChat]["name"])),
        ],
      ),
    );
  }
}
