import 'package:chat_screen_ui/screen/parts/app_bar.dart';
import 'package:chat_screen_ui/screen/parts/chats.dart';
import 'package:chat_screen_ui/screen/parts/stories.dart';
import 'package:flutter/material.dart';

class ChatScreenUi extends StatelessWidget {
  const ChatScreenUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B202D),
      appBar: const FAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Text(
                "R E C E N T",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.white60,
                ),
              ),
            ),
            const Stories(),
            Expanded(
              flex: 2,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFF292F3F),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: const SingleChildScrollView(
                  child: Column(
                    children: [
                      Chats(),
                      Chats(),
                      Chats(),
                      Chats(),
                      Chats(),
                      Chats(),
                      Chats(),
                      Chats(),
                      Chats(),
                      Chats(),
                      Chats(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
