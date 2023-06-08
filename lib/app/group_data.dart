import 'package:flutter/material.dart';
import 'package:virt_mnc/app/message_data.dart';
import 'package:virt_mnc/app/sender_entity.dart';

class GroupData {
  String name;
  ImageProvider image;
  List<Message> messages;
  Set<Sender>? members;
  Set<Sender>? admins;

  GroupData({
    this.name = "Name is empty",
    this.image = const AssetImage("assets/images/group.png"),
    this.messages = const [],
    this.members,
    this.admins,
  });
}
