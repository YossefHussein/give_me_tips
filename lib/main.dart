import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var tips0 = 'Cilck on bottom button ';
  var tips1 =
      'Find Inner Serenity by Making it Easier to Find Your Keys. For most people, getting control of clutter brings a greater sense of calm and decreased frustration.';
  var tips2 =
      'Surround Yourself With Progress. When you complete a list of action steps, your instinct might be to throw the list away. After all, the work is completed! However, some creative professional teams take a different approach; they relish their progress. Some go so far as surrounding themselves with it.';
  var tips3 =
      'Empty Your Inbox in 30 Seconds. Is your inbox filled with thousands and thousands of unread messages? Before you give up hope, there’s an instant way to clear your inbox of old emails in less than 30 seconds.';
  var tips4 =
      'Instantly Build Self Confidence. These tips will get you riding high in no time.';
  static var tips5 =
      'Reduce Your Trash To Almost Zero. Follow the No Impact Man experiment to reduce our trash as close as we can to zero.';
  var tips6 =
      'Feel like a million bucks for cheap. Feel healthier and more energized right away without spending a fortune.';
 
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
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(
              () {
                tips0 = tips1;
                tips1 = tips2;
                tips2 = tips3;
                tips3 = tips4;
                tips4 = tips5;
                tips5 = tips1;
                for (var i = 0; i > 10; i++) {
                  setState(() {
                    tips5 = tips1;
                  });
                }
              },
            );
          },
          child: Icon(
            Icons.favorite,
            color: Colors.pink,
            size: 24.0,
            semanticLabel: 'Cilck me',
          ),
        ),
      ),
    );
  }
}
