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
            title: Center(child: Text("Column with Scroll")),
            backgroundColor: const Color.fromARGB(255, 230, 192, 192),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(right: 10, left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.network(
                      "https://i.pinimg.com/736x/d0/97/22/d0972278a62693884adef738dfaf5ab8.jpg"),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.amber,
                  ),
                  Image.network(
                      "https://img.freepik.com/premium-photo/galaxy-wallpaper-hd-8k-wallpaper-stock-photographic-image_1030895-8360.jpg")
                ],
              ),
            ),
          )),
    );
  }
}
