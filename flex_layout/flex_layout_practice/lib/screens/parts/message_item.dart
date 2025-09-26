import 'package:flutter/material.dart';

class MessageItem extends StatelessWidget {
  const MessageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Fri 18 jan 2025"),
          Container(
            width: 350,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey),
            ),
            child: Text(
                "asgasfsagashsajsasakaskskasaashashsgaghasghsaghasghsaghsaghghas"),
          ),
        ],
      ),
    );
  }
}
