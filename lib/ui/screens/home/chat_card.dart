import 'package:cloud_chat/common/utils/consts.dart';
import 'package:cloud_chat/domain/entities/chat/chat.dart';
import 'package:flutter/material.dart';

class ChatCard extends StatelessWidget {
  final void Function(Chat chat) onClick;
  final Chat chat;

  const ChatCard({
    Key? key,
    required this.chat,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          onTap: () => onClick(chat),
          leading: const CircleAvatar(
            backgroundImage: NetworkImage(Consts.globalImageUrl),
          ),
          title: Text(
            chat.name,
            style: const TextStyle(fontWeight: FontWeight.w800),
          ),
          subtitle: Text(
            chat.lastMessage,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          trailing: Text(chat.lastMessageTime),
        ),
      ],
    );
  }
}
