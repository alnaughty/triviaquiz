import 'package:flutter/material.dart';
import 'package:highq/pages/InitPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'High-Q',
      theme: ThemeData(
        fontFamily: "Kidd",
        primarySwatch: Colors.blue,
      ),
      home: InitialPage(),
    );
  }
}
