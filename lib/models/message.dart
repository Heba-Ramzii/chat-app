import '../constants.dart';

class Message {
  String? message;
  String? id;
  Message(this.message, this.id);

  factory Message.fromJson(jsonData) {
     print(jsonData[kMessage]);
    print(jsonData['id']);
    return Message(jsonData[kMessage], jsonData['id']);
  }
}
