import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color:Colors.orange,
                height:300,
                width:80,
              ),
              Container(
                color:const Color.fromARGB(255, 243, 240, 236),
                height:300,
                width:80,
              ),
              Container(
                color:const Color.fromARGB(255, 0, 255, 38),
                height:300,
                width:80,
              ),
            ],
          )
        ),
      ),
    );
  }
}
