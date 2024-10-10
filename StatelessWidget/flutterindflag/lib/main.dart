import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("hello"),
        ),
        body: DecoratedBox(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0"), // Direct URL to an image
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            margin: const EdgeInsets.only(),
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 100),
                          color: const Color.fromARGB(255, 103, 89, 89),
                          height: 350,
                          width: 10,
                        ),
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(),
                              color: Colors.orange,
                              width: 250,
                              height: 50,
                            ),
                            Container(
                              color: Colors.white,
                              width: 50,
                              height: 50,
                              child: Container(
                                height: 10,
                                width: 50,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "https://i.pinimg.com/564x/46/0f/8d/460f8de4addfb06ad93dd276d7d102f8.jpg"), // Direct URL to an image
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(bottom: 100),
                              color: Colors.green,
                              width: 250,
                              height: 50,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(right: 250),
                  child: Column(
                    children: [
                      Container(
                        color: const Color.fromARGB(255, 112, 101, 101),
                        height: 13,
                        width: 80,
                      ),
                      Container(
                        color: const Color.fromARGB(255, 85, 77, 77),
                        height: 16,
                        width: 120,
                      ),
                      Container(
                        color: const Color.fromARGB(255, 145, 141, 141),
                        height: 19,
                        width: 150,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Indian Flag"),
//           centerTitle: true,
//         ),
//         body: DecoratedBox(
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage("assets/abc.jpg"),
//               fit: BoxFit.cover,
//             ),
//           ),
//           child: Container(
//             margin: const EdgeInsets.only(),
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                       margin: const EdgeInsets.only(top: 230),
//                       color: Colors.black,
//                       height: 400,
//                       width: 10,
//                     ),
//                     Column(
//                       children: [
//                         Container(
//                           margin: const EdgeInsets.only(),
//                           color: Colors.orange,
//                           width: 250,
//                           height: 50,
//                         ),
//                         Container(
//                           color: Colors.white,
//                           width: 250,
//                           height: 50,
//                         ),
//                         Container(
//                           color: Colors.green,
//                           width: 250,
//                           height: 50,
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 Container(
//                   margin: const EdgeInsets.only(right: 250),
//                   child: Column(
//                     children: [
//                       Container(
//                         color: Colors.black,
//                         height: 13,
//                         width: 80,
//                       ),
//                       Container(
//                         color: Colors.black,
//                         height: 16,
//                         width: 120,
//                       ),
//                       Container(
//                         color: Colors.black,
//                         height: 19,
//                         width: 150,
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
