import 'package:demo_assignment/screens/form_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  List<String> items = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: items.isNotEmpty
          ? ListView.builder(
              itemCount: items.length,
              itemBuilder: item,
            )
          : const Center(
              child: Card(
                child: Text(
                  "List is empty",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push<String>(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const FormScreen();
              },
            ),
          ).then((value) {
            setState(() {
              items.add(value ?? "No title");
            });
          });
          // setState(() {
          //   items.add("Hello World");
          // });
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget item(BuildContext context, int index) => Card(
        color: Colors.lightBlueAccent,
        margin: const EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  items[index],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    items.removeAt(index);
                  });
                },
                child: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      );
}
