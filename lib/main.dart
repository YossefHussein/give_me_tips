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
  static String tips0 = 'Cilck on bottom button ';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: Scaffold(
        backgroundColor: Colors.cyan,
        body: Center(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                '$tips0',
                textAlign: TextAlign.center,
                style: textStyle,
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(
              () {
                tips0 = DataClass.tips1;
                DataClass.tips1 = DataClass.tips2;
                DataClass.tips2 = DataClass.tips3;
                DataClass.tips3 = DataClass.tips4;
                DataClass.tips4 = DataClass.tips5;
                DataClass.tips5 = DataClass.tips1;
              },
            );
          },
          child: Icon(
            Icons.favorite,
            color: Colors.pinkAccent,
            size: 24.0,
            semanticLabel: 'Cilck me',
          ),
        ),
      ),
    );
  }
}
