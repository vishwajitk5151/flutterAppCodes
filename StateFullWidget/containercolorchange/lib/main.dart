import 'package:flutter/material.dart';
import 'dart:math'; // For generating random colors

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ColorChangeApp(),
    );
  }
}

class ColorChangeApp extends StatefulWidget {
  const ColorChangeApp({super.key});

  @override
  _ColorChangeAppState createState() => _ColorChangeAppState();
}

class _ColorChangeAppState extends State<ColorChangeApp> {
  Color _containerColor = Colors.blue;

  void _changeColor() {
    setState(() {
      _containerColor = Color.fromARGB(
        255,
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Color Changer'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: _containerColor,
          child: const Center(
            child: Text(
              'Tapfloatbutton',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeColor,
        tooltip: 'Change Color',
        child: const Icon(Icons.color_lens),
      ),
    );
  }
}
