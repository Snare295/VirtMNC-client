import 'package:virt_mnc/app/message_data.dart';
import 'package:virt_mnc/app/sender_entity.dart';

class GroupData {
  List<Message>? messages;
  Set<Sender>? groupUsers;
  Set<Sender>? admins;

  GroupData({
    this.messages,
    this.groupUsers,
    this.admins,
  });
}
