import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<HomeScreen> {
  String message = 'Hello World';
  Color bgColor = Colors.white;
  bool isCOlorRed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isCOlorRed ? Colors.red : bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              message,
              style: const TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  message = "Update Hogya Message";
                  isCOlorRed = !isCOlorRed;
                });
              },
              child: const Text("Click Me"),
            ),
          ],
        ),
      ),
    );
  }
}
