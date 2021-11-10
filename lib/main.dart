import 'dart:math';

import 'package:flutter/material.dart';
import 'package:give_me_tips/data/data.dart';
import 'design/assets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.cyan[600],
        body: Center(
          child: Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  '${DataClass.tips0}',
                  textAlign: TextAlign.center,
                  style: textStyle,
                ),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              // random chose code
              DataClass.tips0 = DataClass.AllText[_random.nextInt(DataClass.AllText.length)];
            });
          },
          child: Icon(
            Icons.favorite,
            color: Colors.pinkAccent,
            size: 24.0,
            semanticLabel: 'Click me',
          ),
        ),
      ),
    );
  }
}
