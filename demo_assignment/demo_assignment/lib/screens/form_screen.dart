import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Screen"),
      ),
      body: Column(
        children: [
          const TextField(
            decoration: InputDecoration(hintText: "Title"),
          ),
          Spacer(),
          ElevatedButton(onPressed: onSave, child: Text("Submit"))
        ],
      ),
    );
  }

  void onSave() {}
}
