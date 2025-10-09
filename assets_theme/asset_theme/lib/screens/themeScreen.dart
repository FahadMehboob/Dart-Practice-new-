import 'package:flutter/material.dart';

class Themescreen extends StatelessWidget {
  const Themescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Text("Click Karo",
              style: Theme.of(context).textTheme.headlineLarge),
        ),
      ),
    );
  }
}
