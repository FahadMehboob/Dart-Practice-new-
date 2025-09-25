import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final label;
  final GestureTapCallback onPress;
  const AppButton({super.key, required this.label, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: const Color(0xFF5D5D67), width: 1),
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                label,
                style: TextStyle(
                  color: Color(0xFF191720),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
