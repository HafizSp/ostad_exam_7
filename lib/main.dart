import 'package:flutter/material.dart';

void main() {
  runApp(const CountApp());
}

class CountApp extends StatelessWidget {
  const CountApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  customShowDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Button pressed 5 times'),
          // content: Text('You\'ve bought 5 products'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            )
          ],
        );
      },
    );
  }

  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Count:', style: TextStyle(fontSize: 20)),
            Text('$count', style: TextStyle(fontSize: 50)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      count++;
                      setState(() {});
                      if (count == 5) {
                        customShowDialog(context);
                      }
                    },
                    child: Text('+', style: TextStyle(fontSize: 30))),
                SizedBox(width: 20),
                ElevatedButton(
                    onPressed: () {
                      if (count != 0) {
                        count--;
                        setState(() {});
                      }
                    },
                    child: Text('-', style: TextStyle(fontSize: 30))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
