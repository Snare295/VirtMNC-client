import 'package:virt_mnc/app/message_data.dart';
import 'package:virt_mnc/app/sender_entity.dart';

class GroupData {
  GroupData({
    this.messages,
    this.groupUsers,
    this.admins,
  });

  List<Message>? messages;
  Set<Sender>? groupUsers;
  Set<Sender>? admins;
}
