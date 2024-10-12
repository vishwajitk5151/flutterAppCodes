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
          title: const Center(
            child: Text(
              "AppBarICON",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 24,
              ),
            ),
          ),
          leading: const Icon(
            Icons.search,
            color: Colors.red,
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 10),
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Icon(Icons.menu),
            )
          ],
        ),
        body: const Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
