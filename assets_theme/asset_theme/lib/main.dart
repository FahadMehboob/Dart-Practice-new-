import 'package:asset_theme/app_theme.dart';
import 'package:asset_theme/screens/themeScreen.dart';
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
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.dark,
      home: const Themescreen(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Asset & Theme"),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.amber, borderRadius: BorderRadius.circular(30)),
          height: 500,
          width: 400,
          child: Image.asset(
            "my_images/flutter_image.png",
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
