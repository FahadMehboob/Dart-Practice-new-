import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xFF4A3780),
          title: const Text(
            "25 October 2025",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        Container(
          height: 150,
          width: double.infinity,
          color: const Color(0xFF4A3780),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "My Todo List",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
