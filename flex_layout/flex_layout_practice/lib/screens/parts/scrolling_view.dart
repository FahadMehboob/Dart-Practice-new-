import 'package:flex_layout_practice/screens/parts/message_item.dart';
import 'package:flutter/material.dart';

class ScrollingView extends StatelessWidget {
  const ScrollingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MessageItem(),
          MessageItem(),
          MessageItem(),
          MessageItem(),
          MessageItem(),
          MessageItem(),
          MessageItem(),
          MessageItem(),
          MessageItem(),
          MessageItem(),
          MessageItem(),
          MessageItem(),
          MessageItem(),
          MessageItem(),
          MessageItem(),
        ],
      ),
    );
  }
}
