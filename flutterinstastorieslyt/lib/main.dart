import 'package:flutter/material.dart';
// import 'dart:convert';
// import 'dart:typed_data';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 21, 20, 20),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(75.0),
          child: Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: AppBar(
              backgroundColor: const Color.fromARGB(255, 171, 16, 143),
              title: const Padding(
                padding: EdgeInsets.only(top: 5), // Adds bottom padding
                child: Text(
                  "Instagram",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Color.fromARGB(255, 234, 222, 231),
                  ),
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color.fromARGB(255, 244, 54, 165),
                            width: 3.0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color.fromARGB(255, 244, 54, 165),
                            width: 3.0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color.fromARGB(255, 244, 54, 165),
                            width: 3.0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color.fromARGB(255, 244, 54, 165),
                            width: 3.0,
                          ),
                        ),
                      ),
                    ),
                    // Add more containers as needed
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color.fromARGB(255, 244, 54, 165),
                            width: 3.0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color.fromARGB(255, 244, 54, 165),
                            width: 3.0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color.fromARGB(255, 244, 54, 165),
                            width: 3.0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color.fromARGB(255, 244, 54, 165),
                            width: 3.0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color.fromARGB(255, 244, 54, 165),
                            width: 3.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(20), // Adjust for more curve
                  color: const Color.fromARGB(255, 45, 44, 44),
                ),
                width: 810,
                height: 2000,
                child: Column(
                  children: [
                    Container(
                      child: Column(children: [
                        Container(
                          padding: const EdgeInsets.only(top: 10),
                          height: 100,
                          width: 800,
                          child: Container(
                              padding: const EdgeInsets.only(top: 10, left: 10),
                              child: const Text("Posts",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                        ),
                        SizedBox(
                          width: 800,
                          height: 1000,
                          child: Image.network('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.threads.net%2F%40shivam__2608k%2Fpost%2FC_5AzFNSFqV&psig=AOvVaw2vWSf8aoy2MenMManweD6v&ust=1727277307977000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCIDez_zx24gDFQAAAAAdAAAAABAQ',fit: BoxFit.cover, 
                          ),
                        )
                      ]),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
