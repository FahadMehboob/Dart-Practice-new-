import 'package:flutter/material.dart';

void main() {
  meraDairWalaKaam();
  asyncTask();
  runApp(const MyApp());
}

meraDairWalaKaam() {
  asyncTask();
  print("Hello Mera Dair Wala Kaam");
}

asyncTask() async {
  var futureObj = Future.delayed(
      const Duration(seconds: 2), () => "Hello Future 2 seconds");

  try {
    var responseFromFuture = await futureObj;
    print(responseFromFuture);
  } catch (e) {
    print("Error: $e");
  }
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
        initialRoute: '/',
        onGenerateRoute: (setting) {
          Map<String, Widget> pages = {
            '/': const HomeScreen(),
            '/about': const About(),
          };
          var pageToShow = pages[setting.name] ?? const HomeScreen();
          if (setting.arguments != null &&
              setting.arguments is Map<String, String> &&
              setting.name == '/about') {
            pageToShow = About(
                title:
                    (setting.arguments as Map<String, String>)['title'] ?? '');
          }
          return MaterialPageRoute<String>(
            builder: (context) => pageToShow,
            settings: setting,
          );
        },
        home: const HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String dataFromAboutScreen = "No Data";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed<String>(
                  context,
                  '/about',
                  arguments: {'title': 'About Title from Home'},
                ).then((value) {
                  setState(() {
                    dataFromAboutScreen = value ?? "No Data";
                  });
                });
              },
              child: const Text(
                'Welcome to the Home Screen!',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
          Text(dataFromAboutScreen),
        ],
      ),
    );
  }
}

class About extends StatelessWidget {
  final String title;
  const About({super.key, this.title = 'About Screen'});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop<String>(
                context, "Data from About Screen to Home Screen");
          },
          child: const Text(
            'Welcome to the About Screen!',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
