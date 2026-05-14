// import 'package:flutter/material.dart';
// import 'package:flutter_mordern_chat_ui/screens/home_screen.dart';

// void main() {
//   runApp(const DemoApp());
// }

// class DemoApp extends StatelessWidget {
//   const DemoApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: const HomeScreen(),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: const ChatUI());
  }
}

class ChatUI extends StatefulWidget {
  const ChatUI({super.key});

  @override
  State<ChatUI> createState() => _ChatUIState();
}

class _ChatUIState extends State<ChatUI> {
  final TextEditingController controller = TextEditingController();

  List<Map<String, dynamic>> messages = [
    {"text": "Nice message 👀", "isMe": false},
    {"text": "Thank youuu", "isMe": true},
  ];

  void sendMessage() {
    if (controller.text.trim().isEmpty) return;

    setState(() {
      messages.add({"text": controller.text, "isMe": true});
    });

    controller.clear();
  }

  Widget sideIcon(IconData icon, bool active) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 18),
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: active ? Colors.blue : Colors.transparent,
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: active ? Colors.white : Colors.grey, size: 34),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Column(
        children: [
          // TOP HEADER
          Container(
            height: 70,
            width: double.infinity,
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 25),
            alignment: Alignment.centerLeft,
            child: const Text(
              "Modern Chat UI",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),

          Expanded(
            child: Row(
              children: [
                // SIDEBAR
                Container(
                  width: 100,
                  color: Colors.white,
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      sideIcon(Icons.person, true),
                      sideIcon(Icons.message, false),
                      sideIcon(Icons.group, false),
                      sideIcon(Icons.call, false),
                      sideIcon(Icons.settings, false),
                      const Spacer(),
                      sideIcon(Icons.logout, false),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),

                // CHAT LIST
                Container(
                  width: 400,
                  color: const Color(0xFFF7F7F7),
                  child: ListView(
                    children: [
                      buildChatTile(
                        "Project Team",
                        "Meeting moved to 5 PM",
                        "7:30 PM",
                        "2",
                      ),
                      buildChatTile(
                        "Alice Johnson",
                        "UI package looks amazing",
                        "6:15 PM",
                        "1",
                      ),
                      buildChatTile(
                        "Flutter Community",
                        "Package published successfully",
                        "Yesterday",
                        "3",
                      ),
                      buildChatTile(
                        "Design Review",
                        "Need responsive layout update",
                        "Monday",
                        "0",
                      ),
                    ],
                  ),
                ),

                // CHAT AREA
                Expanded(
                  child: Column(
                    children: [
                      // CHAT HEADER
                      Container(
                        height: 80,
                        color: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 24,
                              backgroundColor: Color(0xFFD8C8F0),
                              child: Icon(Icons.person, color: Colors.white),
                            ),

                            const SizedBox(width: 15),

                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Project Team",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  "Online",
                                  style: TextStyle(color: Colors.green),
                                ),
                              ],
                            ),

                            const Spacer(),

                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.call),
                            ),

                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.videocam),
                            ),

                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_vert),
                            ),
                          ],
                        ),
                      ),

                      // MESSAGES
                      Expanded(
                        child: ListView.builder(
                          padding: const EdgeInsets.all(20),
                          itemCount: messages.length,
                          itemBuilder: (context, index) {
                            final message = messages[index];
                            final bool isMe = message["isMe"];

                            return Align(
                              alignment: isMe
                                  ? Alignment.centerRight
                                  : Alignment.centerLeft,
                              child: Container(
                                margin: const EdgeInsets.only(bottom: 20),
                                padding: const EdgeInsets.all(14),
                                constraints: const BoxConstraints(
                                  maxWidth: 300,
                                ),
                                decoration: BoxDecoration(
                                  color: isMe ? Colors.blue : Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  message["text"],
                                  style: TextStyle(
                                    color: isMe ? Colors.white : Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),

                      // INPUT
                      Container(
                        padding: const EdgeInsets.all(16),
                        color: Colors.white,
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                controller: controller,
                                onSubmitted: (_) => sendMessage(),
                                decoration: InputDecoration(
                                  hintText: "Type message...",
                                  filled: true,
                                  fillColor: const Color(0xFFF2F2F2),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide.none,
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 16,
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(width: 10),

                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                onPressed: sendMessage,
                                icon: const Icon(
                                  Icons.send,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildChatTile(
    String name,
    String message,
    String time,
    String unread,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      child: Row(
        children: [
          const CircleAvatar(radius: 32, backgroundColor: Color(0xFFD8C8F0)),

          const SizedBox(width: 18),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 6),

                Text(
                  message,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ],
            ),
          ),

          Column(
            children: [
              Text(time, style: const TextStyle(color: Colors.black54)),

              const SizedBox(height: 10),

              if (unread != "0")
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    unread,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
