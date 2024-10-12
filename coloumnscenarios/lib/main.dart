import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    print("device Width:${MediaQuery.of(context).size.width}");
    print("Device height:${MediaQuery.of(context).size.height}");
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.blue,
              title: Text(
                "Column Demo",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 25,
                ),
              )),
          body: Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.amber,
                  )
                ],
              ),
            ),
          )),
    );
  }
}
