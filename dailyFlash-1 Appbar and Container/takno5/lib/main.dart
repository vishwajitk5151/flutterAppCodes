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
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRX85rcAp8PuwE8xRCgVpuDn9AksfRGxlwJRA&s",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-0mgJ7AqXRnaT0nRU_iSLxiumdkoCet3YGA&s",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                child: Image.network(
                  "https://t3.ftcdn.net/jpg/06/50/89/34/360_F_650893467_s4vMfhFd8LAA2Gh5ZVVF5w1gKP6TZS82.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          )),
    );
  }
}
