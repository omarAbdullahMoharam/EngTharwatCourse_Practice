import 'package:chat_app/models/message.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class ChatBuble extends StatelessWidget {
  const ChatBuble({
    super.key,
    required this.message,
  });
  final Message message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.only(
          left: 32.0,
          top: 16.0,
          right: 32.0,
          bottom: 16.0,
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 8,
        ),
        decoration: const BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(45),
            topRight: Radius.circular(45),
            bottomRight: Radius.circular(45),
          ),
        ),
        child: Text(
          message.message.toString(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 3,
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}
