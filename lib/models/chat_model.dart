class ChatModel {
  final String name;
  final String lastMessage;
  final String time;
  final String image;
  final int unreadCount;

  ChatModel({
    required this.name,
    required this.lastMessage,
    required this.time,
    required this.image,
    this.unreadCount = 0,
  });
}
