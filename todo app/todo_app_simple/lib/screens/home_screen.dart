import 'package:flutter/material.dart';
import 'package:todo_app_simple/screens/parts/custom_appbar.dart';

import '../model/form_class.dart';
import 'add_task_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<FormData> items = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDBDBDB),
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 250),
        child: CustomAppBar(),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            color: const Color(0xFF4A3780),
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ListTile(
              title: Text(
                'Task: ${items[index].title}',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                items[index].description,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: Colors.white,
        onPressed: () => onPress(context),
        child: const Icon(
          Icons.add,
          color: Color(0xFF4A3780),
        ),
      ),
    );
  }

  onPress(BuildContext context) {
    Navigator.push<FormData>(context, MaterialPageRoute(builder: (context) {
      return AddTaskScreen();
    })).then((formData) {
      if (formData != null) {
        setState(() {
          items.add(formData);
        });
      }
    });
  }
}
