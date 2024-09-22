import 'dart:developer';

import 'package:chat_app/constants.dart';

class Message {
  final String message;
  final String senderID;
  Message({required this.senderID, required this.message});
  factory Message.fromJson(jsonData) {
    log(jsonData.toString());
    return Message(
      message: jsonData[kMessage],
      senderID: jsonData[kSenderID],
    );
  }
}
