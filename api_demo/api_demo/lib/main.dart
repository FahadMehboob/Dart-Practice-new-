import 'dart:convert';

import 'package:api_demo/screens/user_card.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: UserCard(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String apiUrl = "https://api.github.com/users/ishaquehassan";

  String? nameFromApi;

  callApi() async {
    var uri = Uri.parse(apiUrl);

    setState(() {
      nameFromApi = null;
    });

    try {
      var res = await http.get(uri);
      var responseString = res.body;
      Map<String, dynamic> parsedJson = jsonDecode(responseString);
      print(parsedJson['bio']);

      setState(() {
        nameFromApi = parsedJson['name'];
      });
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Api Sample'),
      ),
      // body: ListView.builder(
      //   itemCount: 10,
      //   itemBuilder: (context, index) {
      //     return Text("Hello $index");
      //   },
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (nameFromApi != null) Text(nameFromApi!),
            if (nameFromApi == null) const CircularProgressIndicator(),
            ElevatedButton(
              onPressed: () {
                callApi();
              },
              child: const Text("Api Call Karado"),
            )
          ],
        ),
      ),
    );
  }
}
