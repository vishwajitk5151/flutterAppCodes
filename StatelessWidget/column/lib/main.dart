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
          child:Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Container(
                color:Colors.orange,
                height:80,
                width:300,
              ),
              Container(
                color:Colors.white,
                height:80,
                width:300,
              ),
              Container(
                color:Colors.green,
                height:80,
                width:300,
              ),
            ],
            )
        ),
      ),
    );
  }
}
