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
          title: const Text(
            "Tap to Change Container",
            style: TextStyle(
                fontWeight: FontWeight.w700, fontSize: 24, color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: const Center(
          child: ColorChangeContainer(),
        ),
      ),
    );
  }
}

class ColorChangeContainer extends StatefulWidget {
  const ColorChangeContainer({super.key});

  @override
  _ColorChangeContainerState createState() => _ColorChangeContainerState();
}

class _ColorChangeContainerState extends State<ColorChangeContainer> {
  Color _containerColor = Colors.red;
  String _displayText = "Click me!";

  void _changeContainer() {
    setState(() {
      _containerColor = Colors.blue;
      _displayText = "Container Tapped";
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeContainer,
      child: Container(
        width: 200,
        height: 200,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: _containerColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          _displayText,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
