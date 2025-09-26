import 'package:flutter/material.dart';

class MessageTypingBox extends StatelessWidget {
  const MessageTypingBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Row(
        children: [
          Icon(
            Icons.add,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(hintText: "Type your message here.."),
            ),
          ),
          Icon(Icons.send),
        ],
      ),
    );
  }
}
