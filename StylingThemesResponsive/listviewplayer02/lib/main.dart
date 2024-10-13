import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController agecontroller = TextEditingController();
  TextEditingController teamcontroller = TextEditingController();

  String? name;
  String? age;
  String? team;

  List<Player> playerList = [];

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Textfield Listview Demo",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: namecontroller,
                decoration: InputDecoration(
                  hintText: "Name of Player",
                  contentPadding: EdgeInsets.only(left: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 162, 58, 148),
                      width: 5,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: agecontroller,
                decoration: InputDecoration(
                  hintText: "Age of the Player",
                  contentPadding: EdgeInsets.only(left: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 162, 58, 148),
                      width: 5,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: teamcontroller,
                decoration: InputDecoration(
                  hintText: "Team of the Player",
                  contentPadding: EdgeInsets.only(left: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 162, 58, 148),
                      width: 5,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                name = namecontroller.text.trim();
                age = agecontroller.text.trim();
                team = teamcontroller.text.trim();

                if (name != "" && age != "" && team != "") {
                  playerList.add(Player(name: name!, age: age!, team: team!));
                }

                namecontroller.clear();
                agecontroller.clear();
                teamcontroller.clear();

                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "Submit",
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: playerList.length,
                itemBuilder: (context, index) {
                  Player player = playerList[index];

                  return ListTile(
                    title: Text("Name: ${player.name}"),
                    subtitle: Text("Age: ${player.age}, Team: ${player.team}"),
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

class Player {
  String name;
  String age;
  String team;

  Player({required this.name, required this.age, required this.team});
}
