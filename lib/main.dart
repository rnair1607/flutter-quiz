import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  bool buttonAction(bool prevVal) {
    return !prevVal;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: InkWell(
          child: Container(
            width: 50,
            height: 50,
            color: Colors.blue,
          ),
          onTap: () {
            print('trapped!');
          },
        )),
      ),
    );
  }
}

// Widget materialApp() {
//   return const MaterialApp(
//     home: Scaffold(
//       body: MyFirstWidget(color: Colors.blue),
//     ),
//   );
// }

// Widget cupertinoApp() {
//   return const CupertinoApp();
// }

class MyFirstWidget extends StatefulWidget {
  final Color color;
  const MyFirstWidget({this.color = Colors.red, Key? key}) : super(key: key);

  @override
  State<MyFirstWidget> createState() => _MyFirstWidgetState();
}

class _MyFirstWidgetState extends State<MyFirstWidget> {
  int count = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Text(
          '$count',
        ),
        onPressed: () {
          setState(() {
            count++;
          });
        },
      ),
    );
  }
}
