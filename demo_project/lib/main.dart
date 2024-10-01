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
                      BorderRadius.circular(20), 
                  color: const Color.fromARGB(255, 45, 44, 44),
                ),
                width: 810,
                height: 3000,
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
                          height: 500,
                          child: Image.asset("assets/57.webp"),
                          ),
                        
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
                          height: 500,
                          child: Image.asset("assets/images.jpeg"),
                          ),
                        
                        
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
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: const Color.fromARGB(255, 21, 20, 20),
//         appBar: PreferredSize(
//           preferredSize: const Size.fromHeight(75.0),
//           child: Container(
//             margin: const EdgeInsets.only(bottom: 10),
//             child: AppBar(
//               backgroundColor: const Color.fromARGB(255, 171, 16, 143),
//               title: const Padding(
//                 padding: EdgeInsets.only(top: 5),
//                 child: Text(
//                   "Instagram",
//                   style: TextStyle(
//                     fontSize: 30,
//                     fontWeight: FontWeight.bold,
//                     fontStyle: FontStyle.italic,
//                     color: Color.fromARGB(255, 234, 222, 231),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//         body: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     for (var color in [
//                       Colors.blue,
//                       Colors.green,
//                       Colors.red,
//                       Colors.orange,
//                       Colors.purple,
//                     ])
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                         child: Container(
//                           width: 80,
//                           height: 80,
//                           decoration: BoxDecoration(
//                             color: color,
//                             shape: BoxShape.circle,
//                             border: Border.all(
//                               color: const Color.fromARGB(255, 244, 54, 165),
//                               width: 3.0,
//                             ),
//                           ),
//                         ),
//                       ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Container(
//                 margin: const EdgeInsets.symmetric(horizontal: 10),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   color: const Color.fromARGB(255, 45, 44, 44),
//                 ),
//                 width: double.infinity, // Responsive width
//                 child: Column(
//                   children: [
//                     Container(
//                       padding: const EdgeInsets.only(top: 10),
//                       height: 100,
//                       width: double.infinity,
//                       child: const Padding(
//                         padding: EdgeInsets.only(left: 10),
//                         child: Text(
//                           "Posts",
//                           style: TextStyle(
//                             fontSize: 25,
//                             fontStyle: FontStyle.italic,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: double.infinity,
//                       height: 1000, // Adjust as necessary
//                       child: Image.asset("assets/57.webp"),
//                     ),
//                     Container(
//                       padding: const EdgeInsets.only(top: 10),
//                       height: 100,
//                       width: double.infinity,
//                       child: const Padding(
//                         padding: EdgeInsets.only(left: 10),
//                         child: Text(
//                           "Posts",
//                           style: TextStyle(
//                             fontSize: 25,
//                             fontStyle: FontStyle.italic,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: double.infinity,
//                       height: 1000, // Adjust as necessary
//                       child: Image.asset("assets/images.jpeg"),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
