import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 10,
      backgroundColor: Colors.transparent,
      title: const Text(
        "Messages",
        style: TextStyle(fontSize: 28, color: Colors.white),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(
            CupertinoIcons.search,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
