import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Space Scenario"),
          backgroundColor: const Color.fromARGB(255, 230, 192, 192),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(color: Colors.blue),
            ),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(color: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}
