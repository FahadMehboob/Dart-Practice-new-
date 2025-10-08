import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:todos/todo.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Todo> todos = [];
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    getTodos();
  }

  getTodos() async {
    setState(() {
      isLoading = true;
    });

    try {
      var response = await http.get(
          Uri.parse("https://6087dddba6f4a30017425143.mockapi.io/api/todos"));
      print(response.body);
      setState(() {
        todos = Todo.fromJsonList(
          jsonDecode(response.body) as List<dynamic>,
        );
      });
    } catch (e) {
      print("Error fetching todos: $e");
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: !isLoading
          ? ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(todos[index].title ?? "No title"),
                  subtitle: Text(todos[index].description ?? " No description"),
                );
              },
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
