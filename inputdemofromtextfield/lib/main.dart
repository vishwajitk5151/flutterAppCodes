import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Inputdemo(),
    );
  }
}

class Inputdemo extends StatefulWidget {
  const Inputdemo({super.key});
  @override
  State createState() => _InputdemoState();
}

class _InputdemoState extends State<Inputdemo> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController companycontroller = TextEditingController();
  List<Map<String, String>> datalist = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            "Info",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w800, fontSize: 30),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(border: Border.all()),
              child: TextField(
                controller: namecontroller,
                decoration: InputDecoration(
                    hintText: "Name",
                    hintStyle: TextStyle(
                      color: Colors.green,
                    )),
              ),
              width: 350,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(border: Border.all()),
              child: TextField(
                controller: companycontroller,
                decoration: const InputDecoration(
                    hintText: "Company",
                    hintStyle: TextStyle(
                      color: Colors.green,
                    )),
              ),
              width: 350,
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                String Name = namecontroller.text.trim();
                String Company = companycontroller.text.trim();
                if (Name.isNotEmpty && Company.isNotEmpty) {
                  datalist.add({'name': Name, 'company': Company});
                }
                namecontroller.clear();
                companycontroller.clear();

                setState(() {});
              },
              child: Container(
                width: 250,
                height: 50,
                child: const Center(
                  child: Text("Submit",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 22)),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: datalist.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Text("Name : ${datalist[index]['name']}"),
                      Text("Company : ${datalist[index]['company']}"),
                      const SizedBox(height: 10),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
