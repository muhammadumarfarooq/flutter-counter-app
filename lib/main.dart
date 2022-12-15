import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Counter App"),
        ),
        body: SafeArea(
          child: Center(
              child: Text(
            count.toString(),
            style: const TextStyle(fontSize: 50),
          )),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            count++;
            setState(() {});
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
