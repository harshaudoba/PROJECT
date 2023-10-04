import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project/pages/HomePage.dart';

void main() {
  runApp(MyApp());
}

// 1. Stateless Widget
// 2. Stateful Widget
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TO HIDE STATUS BAR AND BELOW BUTTONS
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF0F111D),
      ),
      routes: {
        "/": (context) => HomePage(),
      },
    );
  }
}
