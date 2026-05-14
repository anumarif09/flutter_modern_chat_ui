class MessageModel {
  final String text;
  final bool isMe;
  final DateTime time;
  final bool isSeen;
  final String? imageUrl;

  MessageModel({
    required this.text,
    required this.isMe,
    required this.time,
    this.isSeen = false,
    this.imageUrl,
  });
}
