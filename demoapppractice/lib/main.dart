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
          title: const Text(
            "Shoes",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Color.fromARGB(255, 0, 0, 0)),
          ),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.shopping_cart,
              ),
              onPressed: () {},
              padding: const EdgeInsets.only(right: 10),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                  height: 500,
                  width: 1600,
                  child: Image.network(
                      "https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg")),
              Container(
                  margin: const EdgeInsets.only(right: 20),
                  padding: const EdgeInsets.only(left: 30),
                  height: 40,
                  width: 1600,
                  child: const Text(
                    "Nike Air Force 1'07",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                  )),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                      width: 200,
                      height: 55,
                      padding: const EdgeInsets.only(top: 7),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Text(
                        "Footeware",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.w900,
                        ),
                      )),
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                      width: 200,
                      height: 55,
                      padding: const EdgeInsets.only(top: 7),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        "Shoes",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.w900,
                        ),
                      )),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(children: [
                SizedBox(
                  width: 25,
                ),
                SizedBox(
                    width: 810,
                    height: 165,
                    child: Text(
                      "As of 2024, it employed 83,700 people worldwide.[11] In 2020, the brand alone was valued in excess of 32 billion, making it the most valuable brand among sports businesses.[12] Previously, in 2017, the Nike brand was valued at 29.6 billion.[13] Nike ranked 89th in the 2018 Fortune 500 list of the largest United States corporations by total revenue.[14] The company ranked 239th in the Forbes Global 2000 companies in 2024.",
                      style: TextStyle(
                        color: Color.fromARGB(255, 8, 8, 8),
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
              ]),
              const SizedBox(
                height: 30,
              ),
              Row(children: [
                const SizedBox(
                  width: 25,
                ),
                SizedBox(
                    width: 810,
                    height: 50,
                    child: Row(
                      children: [
                        const Text(
                          "Quantity :",
                          style: TextStyle(
                            color: Color.fromARGB(255, 8, 8, 8),
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        IconButton(
                          icon: const Icon(Icons.remove),
                          onPressed: decrement,
                        ),
                        Text(
                          '$count',
                          style: const TextStyle(fontSize: 24),
                        ),
                        IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: increment,
                        ),
                      ],
                    )),
              ]),
              const SizedBox(
                width: 10,
              ),
              Container(
                  padding: const EdgeInsets.only(top: 15),
                  margin: const EdgeInsets.only(bottom: 20),
                  width: 800,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    "Purchase",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                    ),
                  ))
            ],
          ),
        ));
  }
}
