// // import 'package:flutter/material.dart';

// // class ChatScreen extends StatelessWidget {
// //   const ChatScreen({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: const Color(0xFFF5F5F5),

// //       // TOP HEADER
// //       appBar: AppBar(
// //         elevation: 1,
// //         backgroundColor: Colors.white,
// //         title: Row(
// //           children: [
// //             const CircleAvatar(
// //               radius: 18,
// //               backgroundColor: Color(0xFFD8C8F0),
// //               child: Icon(Icons.person, color: Colors.white),
// //             ),

// //             const SizedBox(width: 12),

// //             Column(
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               children: const [
// //                 Text(
// //                   "Project Team",
// //                   style: TextStyle(
// //                     color: Colors.black,
// //                     fontSize: 18,
// //                     fontWeight: FontWeight.bold,
// //                   ),
// //                 ),

// //                 SizedBox(height: 2),

// //                 Text(
// //                   "Online",
// //                   style: TextStyle(color: Colors.green, fontSize: 12),
// //                 ),
// //               ],
// //             ),
// //           ],
// //         ),

// //         actions: const [
// //           Padding(
// //             padding: EdgeInsets.only(right: 16),
// //             child: Icon(Icons.more_vert, color: Colors.black),
// //           ),
// //         ],
// //       ),

// //       // BODY
// //       body: Column(
// //         children: [
// //           // CHAT AREA
// //           Expanded(
// //             child: ListView(
// //               padding: const EdgeInsets.all(16),
// //               children: [
// //                 // RECEIVED MESSAGE
// //                 Row(
// //                   crossAxisAlignment: CrossAxisAlignment.end,
// //                   children: [
// //                     const CircleAvatar(
// //                       radius: 14,
// //                       backgroundColor: Color(0xFFD8C8F0),
// //                     ),

// //                     const SizedBox(width: 8),

// //                     Container(
// //                       padding: const EdgeInsets.all(14),
// //                       constraints: const BoxConstraints(maxWidth: 250),
// //                       decoration: BoxDecoration(
// //                         color: Colors.white,
// //                         borderRadius: BorderRadius.circular(20),
// //                       ),
// //                       child: const Column(
// //                         crossAxisAlignment: CrossAxisAlignment.start,
// //                         children: [
// //                           Text(
// //                             "Nice message 👀",
// //                             style: TextStyle(fontSize: 16),
// //                           ),

// //                           SizedBox(height: 5),

// //                           Align(
// //                             alignment: Alignment.bottomRight,
// //                             child: Text(
// //                               "1:34",
// //                               style: TextStyle(
// //                                 fontSize: 11,
// //                                 color: Colors.grey,
// //                               ),
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                   ],
// //                 ),

// //                 const SizedBox(height: 20),

// //                 // SENT MESSAGE
// //                 Align(
// //                   alignment: Alignment.centerRight,
// //                   child: Container(
// //                     padding: const EdgeInsets.all(14),
// //                     constraints: const BoxConstraints(maxWidth: 270),
// //                     decoration: BoxDecoration(
// //                       color: Colors.blue,
// //                       borderRadius: BorderRadius.circular(20),
// //                     ),
// //                     child: const Column(
// //                       crossAxisAlignment: CrossAxisAlignment.end,
// //                       children: [
// //                         Text(
// //                           "Thank youuu",
// //                           style: TextStyle(color: Colors.white, fontSize: 16),
// //                         ),

// //                         SizedBox(height: 5),

// //                         Text(
// //                           "1:34 ✓✓",
// //                           style: TextStyle(fontSize: 11, color: Colors.white70),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 ),

// //                 const SizedBox(height: 20),

// //                 // IMAGE MESSAGE
// //                 Align(
// //                   alignment: Alignment.centerRight,
// //                   child: Container(
// //                     width: 300,
// //                     padding: const EdgeInsets.all(10),
// //                     decoration: BoxDecoration(
// //                       color: Colors.blue,
// //                       borderRadius: BorderRadius.circular(20),
// //                     ),
// //                     child: Column(
// //                       children: [
// //                         ClipRRect(
// //                           borderRadius: BorderRadius.circular(16),
// //                           child: Image.network(
// //                             "https://images.unsplash.com/photo-1506744038136-46273834b3fb",
// //                             height: 180,
// //                             width: double.infinity,
// //                             fit: BoxFit.cover,
// //                           ),
// //                         ),

// //                         const SizedBox(height: 10),

// //                         const Align(
// //                           alignment: Alignment.centerRight,
// //                           child: Text(
// //                             "Check this image",
// //                             style: TextStyle(color: Colors.white, fontSize: 16),
// //                           ),
// //                         ),

// //                         const SizedBox(height: 5),

// //                         const Align(
// //                           alignment: Alignment.centerRight,
// //                           child: Text(
// //                             "1:34 ✓✓",
// //                             style: TextStyle(
// //                               fontSize: 11,
// //                               color: Colors.white70,
// //                             ),
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 ),

// //                 const SizedBox(height: 20),

// //                 // SMALL MESSAGE
// //                 Align(
// //                   alignment: Alignment.centerRight,
// //                   child: Container(
// //                     padding: const EdgeInsets.all(14),
// //                     decoration: BoxDecoration(
// //                       color: Colors.blue,
// //                       borderRadius: BorderRadius.circular(20),
// //                     ),
// //                     child: const Column(
// //                       crossAxisAlignment: CrossAxisAlignment.end,
// //                       children: [
// //                         Text(
// //                           "hi",
// //                           style: TextStyle(color: Colors.white, fontSize: 16),
// //                         ),

// //                         SizedBox(height: 5),

// //                         Text(
// //                           "1:34 ✓",
// //                           style: TextStyle(fontSize: 11, color: Colors.white70),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),

// //           // MESSAGE INPUT
// //           Container(
// //             padding: const EdgeInsets.all(14),
// //             color: Colors.white,
// //             child: Row(
// //               children: [
// //                 Expanded(
// //                   child: TextField(
// //                     decoration: InputDecoration(
// //                       hintText: "Type message...",
// //                       filled: true,
// //                       fillColor: const Color(0xFFF2F2F2),
// //                       contentPadding: const EdgeInsets.symmetric(
// //                         horizontal: 20,
// //                         vertical: 14,
// //                       ),
// //                       border: OutlineInputBorder(
// //                         borderRadius: BorderRadius.circular(30),
// //                         borderSide: BorderSide.none,
// //                       ),
// //                     ),
// //                   ),
// //                 ),

// //                 const SizedBox(width: 10),

// //                 Container(
// //                   decoration: const BoxDecoration(
// //                     color: Colors.blue,
// //                     shape: BoxShape.circle,
// //                   ),
// //                   child: IconButton(
// //                     onPressed: () {},
// //                     icon: const Icon(Icons.send, color: Colors.white),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import '../models/message_model.dart';
// import '../widgets/chat_bubble.dart';

// class ChatScreen extends StatelessWidget {
//   const ChatScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final List<MessageModel> messages = [
//       MessageModel(text: "Nice message 👀", isMe: false, time: DateTime.now()),

//       MessageModel(
//         text: "Thank youuu",
//         isMe: true,
//         time: DateTime.now(),
//         isSeen: true,
//       ),

//       MessageModel(
//         text: "Check this image",
//         isMe: true,
//         time: DateTime.now(),
//         isSeen: true,
//         imageUrl:
//             "https://images.unsplash.com/photo-1506744038136-46273834b3fb",
//       ),

//       MessageModel(text: "hi", isMe: true, time: DateTime.now()),
//     ];

//     return Scaffold(
//       backgroundColor: const Color(0xFFF5F5F5),

//       // APP BAR
//       appBar: AppBar(
//         elevation: 1,
//         backgroundColor: Colors.white,

//         title: Row(
//           children: [
//             const CircleAvatar(
//               radius: 18,
//               backgroundColor: Color(0xFFD8C8F0),
//               child: Icon(Icons.person, color: Colors.white),
//             ),

//             const SizedBox(width: 12),

//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: const [
//                 Text(
//                   "Project Team",
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),

//                 SizedBox(height: 2),

//                 Text(
//                   "Online",
//                   style: TextStyle(color: Colors.green, fontSize: 12),
//                 ),
//               ],
//             ),
//           ],
//         ),

//         actions: const [
//           Padding(
//             padding: EdgeInsets.only(right: 16),
//             child: Icon(Icons.more_vert, color: Colors.black),
//           ),
//         ],
//       ),

//       // BODY
//       body: Column(
//         children: [
//           // CHAT LIST
//           Expanded(
//             child: ListView.builder(
//               padding: const EdgeInsets.symmetric(vertical: 12),
//               itemCount: messages.length,
//               itemBuilder: (context, index) {
//                 return ChatBubble(message: messages[index]);
//               },
//             ),
//           ),

//           // MESSAGE INPUT
//           Container(
//             padding: const EdgeInsets.all(14),
//             color: Colors.white,
//             child: Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     decoration: InputDecoration(
//                       hintText: "Type message...",
//                       filled: true,
//                       fillColor: const Color(0xFFF2F2F2),

//                       contentPadding: const EdgeInsets.symmetric(
//                         horizontal: 20,
//                         vertical: 14,
//                       ),

//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30),
//                         borderSide: BorderSide.none,
//                       ),
//                     ),
//                   ),
//                 ),

//                 const SizedBox(width: 10),

//                 Container(
//                   decoration: const BoxDecoration(
//                     color: Colors.blue,
//                     shape: BoxShape.circle,
//                   ),
//                   child: IconButton(
//                     onPressed: () {},
//                     icon: const Icon(Icons.send, color: Colors.white),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final String chatName;

  const ChatScreen({super.key, required this.chatName});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController controller = TextEditingController();

  List<String> messages = [
    "Nice message 👀",
    "Thank youuu",
    "Check this image",
    "hi",
  ];

  void sendMessage() {
    if (controller.text.trim().isEmpty) return;

    setState(() {
      messages.add(controller.text);
    });

    controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // HEADER
        Container(
          height: 80,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(bottom: BorderSide(color: Color(0xFFE0E0E0))),
          ),

          child: Row(
            children: [
              const CircleAvatar(
                radius: 24,
                backgroundColor: Color(0xFFD8C8F0),
                child: Icon(Icons.person, color: Colors.white),
              ),

              const SizedBox(width: 15),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.chatName,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 5),

                  const Text("Online", style: TextStyle(color: Colors.green)),
                ],
              ),

              const Spacer(),

              IconButton(onPressed: () {}, icon: const Icon(Icons.call)),

              IconButton(onPressed: () {}, icon: const Icon(Icons.videocam)),

              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
            ],
          ),
        ),

        // CHAT AREA
        Expanded(
          child: Container(
            color: const Color(0xFFF5F5F5),

            child: ListView.builder(
              padding: const EdgeInsets.all(20),
              itemCount: messages.length,

              itemBuilder: (context, index) {
                final msg = messages[index];

                return Align(
                  alignment: Alignment.centerRight,

                  child: Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    padding: const EdgeInsets.all(16),

                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),

                    child: Text(
                      msg,
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                );
              },
            ),
          ),
        ),

        // INPUT
        Container(
          padding: const EdgeInsets.all(14),
          color: Colors.white,

          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: controller,

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
                      vertical: 14,
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

                  icon: const Icon(Icons.send, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
