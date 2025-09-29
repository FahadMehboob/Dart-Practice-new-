import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        itemExtent: 90,
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (context, index) {
          return const Column(
            children: [
              CircleAvatar(
                radius: 40,
                foregroundImage: NetworkImage(
                  "https://cyber.comolho.com/static/img/avatar.png",
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 7.0),
                child: Text(
                  "Fahad",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
