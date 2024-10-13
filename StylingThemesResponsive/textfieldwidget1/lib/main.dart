import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _TextAppState();
}

class _TextAppState extends State<MainApp> {
  TextEditingController namecontroller = TextEditingController();
  String? name;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 8, 11, 15),
        appBar: AppBar(
          title: const Text(
            "TextField Demo",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
                controller: namecontroller,
                style: const TextStyle(fontSize: 30, color: Colors.blue),
                obscureText: true,
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.visibility),
                    hintText: "name",
                    hintStyle: TextStyle(color: Colors.white, fontSize: 25),
                    border: OutlineInputBorder()),
                onChanged: (String val) {
                  print("value : $val");
                },
                onEditingComplete: () {
                  print("Editing complete");
                },
                onSubmitted: (value) {
                  print("value submitted : $value");
                }),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              print("ADD Data");
              name = namecontroller.text;
              print("myname : $name");
              namecontroller.clear();
              setState(() {});
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "Add Data ",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Myname: $name",
            style: TextStyle(color: Colors.white),
          )
        ]),
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
//     return MaterialApp();
    
//   }
// }

// class TextClass extends StatefulWidget{
//   const TextClass({super.key});

//   @override
//   State<TextClass> createState()=> _TextAppState();

// }
// class _TextAppState extends State<TextClass>{
//   TextEditingController namecontroller = TextEditingController();

//   String? myname;
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       home:Scaffold(),
//     );
//   }
// }

//   @override
//   Widget build(BuildContext context) {
//     return 
//        Scaffold(
//         body: Center(
//           child: Text('Hello World!'),
//         ),
//       );
    
//   }

