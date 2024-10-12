import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    print("DeviceWidth:${MediaQuery.of(context).size.width}");
    print("Deviceheight:${MediaQuery.of(context).size.height}");
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Center(child: Text("Static Listview")),
            backgroundColor: const Color.fromARGB(255, 230, 192, 192),
          ),
          body: ListView(
            children: [
              Image.network(
                  "https://i.pinimg.com/736x/dc/9e/f4/dc9ef4a49c8342d6f5d22c2f0fe5b33e.jpg"),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ],
              ),
              const Text(
                "Like",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Image.network(
                  "https://i.pinimg.com/736x/dc/9e/f4/dc9ef4a49c8342d6f5d22c2f0fe5b33e.jpg"),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ],
              ),
              const Text(
                "Like",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Image.network(
                  "https://i.pinimg.com/736x/dc/9e/f4/dc9ef4a49c8342d6f5d22c2f0fe5b33e.jpg"),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ],
              ),
              const Text(
                "Like",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("Button pressed");
                },
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                  child: Text("Press Me"),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              )
            ],
          )),
    );
  }
}
