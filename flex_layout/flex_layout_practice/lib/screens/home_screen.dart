import 'package:flex_layout_practice/screens/parts/message_typing_box.dart';
import 'package:flex_layout_practice/screens/parts/scrolling_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: const Text("Home Screen"),
          centerTitle: true,
          actions: [Icon(Icons.logout_outlined)],
        ),
        body: Column(
          children: [
            Expanded(
              child: ScrollingView(),
            ),
            MessageTypingBox(),
          ],
        ));
  }
}
