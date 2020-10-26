import 'package:flutter/material.dart';
import 'package:widgets/screens/AwesomeQuotes/awesome_quotes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AwesomeQuates(),
    );
  }
}
