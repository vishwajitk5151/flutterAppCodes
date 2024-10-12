import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DemoApp(),
    );
  }
}

class DemoApp extends StatefulWidget {
  const DemoApp({super.key});
  @override
  State createState() => _DemoAppState();
}

class _DemoAppState extends State {
  int count = 1;

  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    setState(() {
      if (count > 1) {
        count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          shape: const Border(bottom: BorderSide(color: Colors.black)),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
            ),
            onPressed: () {},
          ),
          title: const Center(
            child: Text(
              "Recommended",
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(0, 91, 135, 1),
              ),
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Start a new career",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 11,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 13,
                  ),
                  Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromRGBO(0, 91, 135, 1),
                    ),
                    child: const Center(
                      child: Text(
                        "Data Sciences",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 13,
                  ),
                  Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromRGBO(167, 220, 246, 1),
                    ),
                    child: const Center(
                      child: Text(
                        "Machine Learning",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(0, 91, 135, 1),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 13,
                  ),
                  Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromRGBO(167, 220, 246, 1),
                    ),
                    child: const Center(
                      child: Text(
                        "Apache space",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(0, 91, 135, 1),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 13,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    height: 140,
                    width: 370,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 236, 221, 221),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(children: [
                      Container(
                          height: 120,
                          width: 120,
                          margin: const EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          clipBehavior: Clip.antiAlias,
                          child: Image.asset("assets/image.jpg")),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: const Text("Data Science",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  )),
                            ),
                            Container(
                              child: const Text("Harvard University",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 103, 99, 99),
                                    fontWeight: FontWeight.w500,
                                  )),
                            ),
                            const SizedBox(
                              width: 200,
                              child: Text(
                                  "Data science is the study of data to extract meaningful insights for business",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  )),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                    height: 21,
                                    width: 80,
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromRGBO(167, 220, 246, 1)),
                                    child: const Center(
                                      child: Text("Data Science",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                0, 91, 135, 1),
                                            fontWeight: FontWeight.w500,
                                          )),
                                    )),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                    height: 21,
                                    width: 80,
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromRGBO(167, 220, 246, 1)),
                                    child: const Center(
                                      child: Text("Data Science",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                0, 91, 135, 1),
                                            fontWeight: FontWeight.w500,
                                          )),
                                    ))
                              ],
                            )
                          ],
                        ),
                      )
                    ]),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 140,
                    width: 370,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 236, 221, 221),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(children: [
                      Container(
                          height: 120,
                          width: 120,
                          margin: const EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          clipBehavior: Clip.antiAlias,
                          child: Image.asset("assets/image.jpg")),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: const Text("Data Science",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  )),
                            ),
                            Container(
                              child: const Text("Harvard University",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 103, 99, 99),
                                    fontWeight: FontWeight.w500,
                                  )),
                            ),
                            const SizedBox(
                              width: 200,
                              child: Text(
                                  "Data science is the study of data to extract meaningful insights for business",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  )),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                    height: 21,
                                    width: 80,
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromRGBO(167, 220, 246, 1)),
                                    child: const Center(
                                      child: Text("Data Science",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                0, 91, 135, 1),
                                            fontWeight: FontWeight.w500,
                                          )),
                                    )),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                    height: 21,
                                    width: 80,
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromRGBO(167, 220, 246, 1)),
                                    child: const Center(
                                      child: Text("Data Science",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                0, 91, 135, 1),
                                            fontWeight: FontWeight.w500,
                                          )),
                                    ))
                              ],
                            )
                          ],
                        ),
                      )
                    ]),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 140,
                    width: 370,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 236, 221, 221),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(children: [
                      Container(
                          height: 120,
                          width: 120,
                          margin: const EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          clipBehavior: Clip.antiAlias,
                          child: Image.asset("assets/image.jpg")),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: const Text("Data Science",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  )),
                            ),
                            Container(
                              child: const Text("Harvard University",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 103, 99, 99),
                                    fontWeight: FontWeight.w500,
                                  )),
                            ),
                            const SizedBox(
                              width: 200,
                              child: Text(
                                  "Data science is the study of data to extract meaningful insights for business",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  )),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                    height: 21,
                                    width: 80,
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromRGBO(167, 220, 246, 1)),
                                    child: const Center(
                                      child: Text("Data Science",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                0, 91, 135, 1),
                                            fontWeight: FontWeight.w500,
                                          )),
                                    )),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                    height: 21,
                                    width: 80,
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromRGBO(167, 220, 246, 1)),
                                    child: const Center(
                                      child: Text("Data Science",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                0, 91, 135, 1),
                                            fontWeight: FontWeight.w500,
                                          )),
                                    ))
                              ],
                            )
                          ],
                        ),
                      )
                    ]),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 140,
                    width: 370,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 236, 221, 221),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(children: [
                      Container(
                          height: 120,
                          width: 120,
                          margin: const EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          clipBehavior: Clip.antiAlias,
                          child: Image.asset("assets/image.jpg")),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: const Text("Data Science",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  )),
                            ),
                            Container(
                              child: const Text("Harvard University",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 103, 99, 99),
                                    fontWeight: FontWeight.w500,
                                  )),
                            ),
                            const SizedBox(
                              width: 200,
                              child: Text(
                                  "Data science is the study of data to extract meaningful insights for business",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  )),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                    height: 21,
                                    width: 80,
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromRGBO(167, 220, 246, 1)),
                                    child: const Center(
                                      child: Text("Data Science",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                0, 91, 135, 1),
                                            fontWeight: FontWeight.w500,
                                          )),
                                    )),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                    height: 21,
                                    width: 80,
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromRGBO(167, 220, 246, 1)),
                                    child: const Center(
                                      child: Text("Data Science",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                0, 91, 135, 1),
                                            fontWeight: FontWeight.w500,
                                          )),
                                    ))
                              ],
                            )
                          ],
                        ),
                      )
                    ]),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
