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
      body: items.isEmpty
          ? const Center(
              child: Text(
                "No Task Today",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            )
          : ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Card(
                  color: const Color(0xFF4A3780),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: ListTile(
                    title: Text(
                      'Task ${index + 1}: ${items[index].title}',
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
                    trailing: GestureDetector(
                      onTap: () => onDelete(context, index),
                      child: const Icon(
                        Icons.delete,
                        size: 30,
                        color: Colors.red,
                      ),
                    ),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: const Color(0xFF4A3780),
        onPressed: () => onPress(context),
        child: const Icon(
          Icons.add,
          color: Colors.white,
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

  onDelete(BuildContext context, index) {
    setState(() {
      items.removeAt(index);
    });
  }
}
