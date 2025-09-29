import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: CircleAvatar(
        radius: 25,
        foregroundImage: NetworkImage(
          "https://static.vecteezy.com/ti/vetor-gratis/p1/50887493-fofa-desenho-animado-menina-piscando-com-uma-grande-sorrir-em-uma-brilhante-amarelo-fundo-gratis-vetor.jpg",
        ),
      ),
      title: Text(
        "Jane William",
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      subtitle: Text(
        "Will do, super, thank you 😀",
        style: TextStyle(
          fontSize: 14,
          color: Color(0xFFB3B9C9),
        ),
      ),
      trailing: Text(
        "08:43",
        style: TextStyle(
          fontSize: 14,
          color: Color(0xFFB3B9C9),
        ),
      ),
    );
  }
}
