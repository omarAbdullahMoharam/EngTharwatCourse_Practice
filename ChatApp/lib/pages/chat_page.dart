import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';

import '../components/chat_buble.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});
  static String id = 'ChatPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              kLogoImage,
              height: 50,
            ),
            const Text(
              'Chat',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ],
        ),
        backgroundColor: kPrimaryColor,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return const ChatBuble(message: 'Hello i\'m a new user here ');
              },
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 5, bottom: 5),
            child: TextField(
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.emoji_emotions_outlined,
                    color: kPrimaryColor,
                    size: 30,
                  ),
                ),
                suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                      color: kPrimaryColor,
                      size: 30,
                    )),
                hintText: 'Send Message',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 2.0,
                    color: kPrimaryColor,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2.0,
                      color: kPrimaryColor,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2.0,
                      color: kPrimaryColor,
                    ),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//🚨🔻🔻 You can make The same UI Using LisTile as follows 🚨🔻🔻
class CustomTextInput extends StatelessWidget {
  const CustomTextInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: TextField(
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: 'Message',
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 2.0,
                color: kPrimaryColor,
              ),
              borderRadius: BorderRadius.circular(10)),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 2.0,
                color: kPrimaryColor,
              ),
              borderRadius: BorderRadius.circular(10) // Regular border
              ),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 2.0,
                color: kPrimaryColor,
              ),
              borderRadius: BorderRadius.circular(10) // Regular border
              ),
        ),
      ),
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.emoji_emotions),
      ),
      trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.send,
            color: kPrimaryColor,
            size: 30,
          )),
    );
  }
}
