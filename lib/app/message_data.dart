import 'package:virt_mnc/app/sender_entity.dart';

class Message {
  int id;
  String messageBody;
  Sender sendWho;
  Message(this.id, this.messageBody, this.sendWho);
}
