import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> listData = [];
  TextEditingController textEditingController =
      TextEditingController(text: "Hello");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: textEditingController,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    listData.add(textEditingController.text);
                    textEditingController.clear();
                  });
                },
                child: const Text("Add Data"),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: listData.length,
              itemBuilder: (itemContext, index) =>
                  Text("${index + 1}. ${listData[index]}"),
            ),
          ),
        ],
      ),
    );
  }
}
