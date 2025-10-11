import 'dart:convert';

import 'package:complex_json/model/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
  BookModel? bookModel;
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
    _getBooks();
  }

  _getBooks() async {
    setState(() {
      isLoading = true;
    });
    try {
      var url =
          Uri.parse("https://www.googleapis.com/books/v1/volumes?q=flutter");
      var response = await http.get(url);
      var responseString = response.body;
      var decodedJson = jsonDecode(responseString) as Map<String, dynamic>;

      setState(() {
        bookModel = BookModel.fromJson(decodedJson);
      });
    } catch (e) {
      print(e);
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Complex Json"),
      ),
      body: ListView.builder(
        itemCount: bookModel?.items?.length ?? 0,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(
              (bookModel?.items?[index].volumeInfo?.imageLinks?.thumbnail
                          ?.isNotEmpty ??
                      false)
                  ? bookModel!.items![index].volumeInfo!.imageLinks!.thumbnail!
                  : "https://via.placeholder.com/150",
              width: 100,
              height: 150,
              fit: BoxFit.cover,
            ),
            title:
                Text(bookModel?.items![index].volumeInfo!.title ?? "No title"),
            subtitle: Text(
                bookModel?.items?[index].volumeInfo?.authors?.first ??
                    "No Author Name"),
          );
        },
      ),
    );
  }
}
