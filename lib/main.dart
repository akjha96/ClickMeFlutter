import 'package:flutter/material.dart';

import 'textBody.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _bodyText = 'Hi 🙋‍♂️ from Earth 🌏!';
  bool alternateText = true;

  void handleTextChange() {
    setState(() {
      alternateText = !alternateText;
    });
    if (alternateText) {
      _bodyText = 'Hi 🙋‍♂️ from Earth 🌏!';
    } else {
      _bodyText = 'Hi 🙋‍♀️ from Mars 🛸!';
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Assignment 1'),
        ),
        body: Container(
          width: double.infinity,
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextBody(
                bodyText: _bodyText,
              ),
              ElevatedButton(
                onPressed: handleTextChange,
                child: const Text('Click Me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
