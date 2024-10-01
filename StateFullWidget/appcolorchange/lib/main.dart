import 'package:flutter/material.dart';
import 'dart:math'; 

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ColorChangerApp(),
    );
  }
}

class ColorChangerApp extends StatefulWidget {
  const ColorChangerApp({super.key});

  @override
  State<ColorChangerApp> createState() => _ColorChangerAppState();
}

class _ColorChangerAppState extends State<ColorChangerApp> {
  Color _backgroundColor = Colors.white;

  void _changeBackgroundColor() {
    setState(() {
      _backgroundColor = Color.fromARGB(
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
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        title: const Text('Change App Color'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.color_lens),
            onPressed: _changeBackgroundColor,
            tooltip: 'Change Color',
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'press icon in appBar',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
