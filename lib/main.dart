import 'package:flutter/material.dart';

void main() {
  runApp(const CountApp());
}

class CountApp extends StatefulWidget {
  const CountApp({super.key});

  @override
  State<CountApp> createState() => _CountAppState();
}

class _CountAppState extends State<CountApp> {
  customShowDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Congratulation!'),
          content: Text('You\'ve bought 5 products'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Counter App')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Count:', style: TextStyle(fontSize: 20)),
              Text('0', style: TextStyle(fontSize: 50)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      child: Text('+', style: TextStyle(fontSize: 30))),
                  SizedBox(width: 20),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text('-', style: TextStyle(fontSize: 30))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
