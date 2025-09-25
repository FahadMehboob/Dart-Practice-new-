import 'package:flutter/material.dart';

import '../app_button.dart';
import '../app_textfield.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191720),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 110, left: 27, bottom: 59, right: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Let's sign In",
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 14,
            ),
            const Text(
              "Welcome\nJoin the Coummunity",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            const SizedBox(
              height: 47,
            ),
            const AppTextField(placeHolder: "Enter your email address"),
            const AppTextField(placeHolder: "Enter your password"),
            const Spacer(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: TextStyle(fontSize: 15, color: Color(0xFF8F8F9E)),
                ),
                Text(
                  "Sign up",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(
              height: 11,
            ),
            AppButton(
              label: "Sign Up",
              onPress: onSignPress,
            )
          ],
        ),
      ),
    );
  }

  void onSignPress() {}
}
