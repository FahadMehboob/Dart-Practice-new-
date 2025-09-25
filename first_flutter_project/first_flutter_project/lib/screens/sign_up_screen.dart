import 'package:first_flutter_project/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';

import '../app_button.dart';
import '../app_textfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
              "Let's sign you up",
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
            const AppTextField(placeHolder: "Enter your full name"),
            const AppTextField(placeHolder: "Enter your email address"),
            const AppTextField(placeHolder: "Enter your password"),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => SignInScreen()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(fontSize: 15, color: Color(0xFF8F8F9E)),
                  ),
                  Text(
                    "Sign In",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
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
