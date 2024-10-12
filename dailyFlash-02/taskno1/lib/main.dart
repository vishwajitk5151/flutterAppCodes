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
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 219, 144, 139),
                    border: Border.all(color: Colors.red, width: 10)),
                child: Center(
                  child: Text("Center",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Colors.black45,
                      )),
                )),
          )),
    );
  }
}
