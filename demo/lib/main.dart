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
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(100),
            child:Container(
               
              child: AppBar(
            title: const Text("Title"),
            backgroundColor: Colors.red,
        ),
            )
          
        ),
        
      ),
      
    );
  }
}
