import 'package:virt_mnc/app/sender_entity.dart';

class Message {
  Message(this.id, this.messageBody, this.sendWho);
  int id;
  String messageBody;
  Sender sendWho;
}
