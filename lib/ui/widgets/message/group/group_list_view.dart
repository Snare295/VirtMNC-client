import 'package:flutter/material.dart';
import 'package:virt_mnc/app/sender_entity.dart';
import 'package:virt_mnc/app/user_data.dart';
import 'package:virt_mnc/ui/widgets/message/group/group_message_tile.dart';

class GroupMessageListView extends StatefulWidget {
  const GroupMessageListView({super.key});

  @override
  State<GroupMessageListView> createState() => _GroupMessageListViewState();
}

class _GroupMessageListViewState extends State<GroupMessageListView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      reverse: true,
      children: [
        GroupMessageTile(
          sender: Sender(id: 2, name: UserData().name),
          isMe: true,
          messageStr: "This it string of mine",
        ),
        GroupMessageTile(
          sender: Sender(id: 3, name: "Githuber"),
          isMe: false,
          messageStr: "This is test string of someone",
        )
      ],
    );
  }
}
