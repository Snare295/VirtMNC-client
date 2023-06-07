import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:virt_mnc/app/sender_entity.dart';
import 'package:virt_mnc/app/user_data.dart';

class GroupMessageTile extends StatefulWidget {
  GroupMessageTile({
    super.key,
    this.id,
    this.messageStr = "Uninitialised messageStr",
    required this.sender,
    required this.isMe,
  }) {
    if (isMe == true) {
      if (sender.name != UserData().name) {
        print(sender.name);
        print(UserData().name);
        throw ArgumentError(
            "$this have constructed with isMe = $isMe, but $sender isn't user");
      }
    }
  }

  int? id;
  String messageStr;
  Sender sender;
  bool isMe;

  @override
  State<GroupMessageTile> createState() => _GroupMessageTileState();
}

class _GroupMessageTileState extends State<GroupMessageTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: widget.isMe
          ? Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                texts(widget.sender.name, widget.messageStr),
                CircleAvatar(
                  backgroundImage: UserData().userProfilePicture,
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: widget.sender.profilePictue,
                ),
                texts(widget.sender.name, widget.messageStr),
              ],
            ),
    );
  }

  Column texts(String name, String text) {
    return Column(children: [
      AutoSizeText(name, style: TextStyle(fontWeight: FontWeight.bold)),
      AutoSizeText(
        text,
      ),
    ]);
  }
}
