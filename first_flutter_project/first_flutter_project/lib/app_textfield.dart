import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String placeHolder;
  const AppTextField({super.key, required this.placeHolder});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: const Color(0xFF1E1C24),
          border: Border.all(color: const Color(0xFF5D5D67), width: 1),
          borderRadius: BorderRadius.circular(20)),
      child: TextField(
        style: const TextStyle(color: Colors.white, fontSize: 15),
        decoration: InputDecoration(
            hintText: placeHolder,
            hintStyle: const TextStyle(color: Color(0xFF8F8F9E), fontSize: 15),
            border: InputBorder.none),
      ),
    );
  }
}
