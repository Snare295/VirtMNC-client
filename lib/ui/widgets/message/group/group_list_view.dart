import 'package:flutter/material.dart';
import 'package:virt_mnc/app/message_data.dart';
import 'package:virt_mnc/app/user_data.dart';
import 'package:virt_mnc/ui/widgets/message/group/group_message_tile.dart';

class GroupMessageListView extends StatefulWidget {
  final List<Message> messageList;

  const GroupMessageListView({
    super.key,
    required this.messageList,
  });

  @override
  State<GroupMessageListView> createState() => _GroupMessageListViewState();
}

class _GroupMessageListViewState extends State<GroupMessageListView> {
  late List<Message> messageList = widget.messageList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      reverse: true,
      itemCount: messageList.length,
      itemBuilder: (context, index) {
        Message thisMessage = messageList[index];
        bool isMe = false;
        if (thisMessage.sendWho.name == UserData().name) {
          isMe = true;
        }
        return GroupMessageTile(
            messageStr: thisMessage.messageBody,
            sender: thisMessage.sendWho,
            isMe: isMe);
      },
    );
  }
}
