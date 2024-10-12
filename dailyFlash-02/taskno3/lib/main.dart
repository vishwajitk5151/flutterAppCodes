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
                  color: Colors.black87),
            ),
            centerTitle: true,
            actions: const [
              Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(Icons.search))
            ],
          ),
          body: Center(
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 219, 157, 234),
                  border: Border.all(color: Colors.purple),
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(20))),
              child: Center(
                child: Text(
                  "Center",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w800),
                ),
              ),
            ),
          )),
    );
  }
}
