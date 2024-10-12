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
          title: Text(
            "AppBar",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 24,
                color: const Color.fromARGB(255, 73, 0, 86)),
          ),
          centerTitle: true,
          actions: const [
            Padding(
                padding: EdgeInsets.only(right: 10), child: Icon(Icons.search))
          ],
        ),
        body: Center(
            child: Container(
          height: 360,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        )),
      ),
    );
  }
}
