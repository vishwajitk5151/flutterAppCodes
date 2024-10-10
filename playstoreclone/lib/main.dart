import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyPlayStoreApp());
}

class MyPlayStoreApp extends StatelessWidget {
  const MyPlayStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Play Store',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: PlayStoreHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PlayStoreHomePage extends StatelessWidget {
  const PlayStoreHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(85),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 1,
            shape: const Border(bottom: BorderSide(color: Colors.grey, width: 1)),
            flexibleSpace: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(top: 25),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/playstoreicon.png',
                            width: 50,
                            height: 32,
                          ),
                          const Spacer(),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 3),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 2, 94, 170),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color:
                                        Color.fromARGB(255, 2, 94, 170),
                                  ),
                                  child: Image.asset(
                                    'assets/playpoint.webp',
                                    width: 20,
                                    height: 20,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                const Text(
                                  '2,175',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.notifications_none,
                                size: 26, color: Colors.grey),
                            onPressed: () {},
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              'assets/vsk.jpg',
                              width: 40,
                              height: 40,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _buildForYouTab("For you"),
                        const SizedBox(width: 30),
                        _buildForYouTab1("Top charts"),
                        const SizedBox(width: 30),
                        _buildForYouTab1("Categories"),
                        const SizedBox(width: 30),
                        _buildForYouTab1("Editor's choice"),
                        const SizedBox(width: 30),
                        _buildForYouTab1("Family"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildScrollableStack(
                        "assets/genshin1.webp",
                        "assets/genshinapk.webp",
                        "Forge powerful rhythms with Xilonen in Version 5.1",
                        "Genshin Impact",
                        "Install",
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      buildScrollableStack(
                          "assets/cocbg.jpg",
                          "assets/cocapk.jpeg",
                          "Join millions of players worldwide as you build your village",
                          "Clash of Clans",
                          "Play"),
                      const SizedBox(
                        width: 20,
                      ),
                      buildScrollableStack(
                          "assets/bgmibg1.jpeg",
                          "assets/bgmiapk.webp",
                          "a battle royale game, in which up to 100 players compete ",
                          "Battlegrounds M",
                          "Play"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(children: [
                  const Text(
                    "Sponsored",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      ".",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  const Text(
                    "Suggested for you",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
                ]),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          _buildScrollablegames(
                              "assets/shadowapk.webp",
                              "Shadow Fight 4",
                              "RolePlay Casual Action Fighting",
                              "4.5 ",
                              "106 MB",
                              "₹260.00"),
                          const SizedBox(
                            height: 15,
                          ),
                          _buildScrollablegames(
                              "assets/clashroyalapk.png",
                              "Clash Royale",
                              "Strategy Tactics Casual Royalty",
                              "4.2 ",
                              "682 MB",
                              ""),
                          const SizedBox(
                            height: 15,
                          ),
                          _buildScrollablegames(
                              "assets/carxstreetapk.jpeg",
                              "CarX Street",
                              "Carx Technologies LLC Racing",
                              "4.4 ",
                              "1.2 GB",
                              ""),
                        ],
                      ),
                      const SizedBox(
                        width: 35,
                      ),
                      Column(
                        children: [
                          _buildScrollablegames(
                              "assets/candycrushapk.png",
                              "Candy Crush Saga",
                              "RolePlay Casual Action Fighting",
                              "4.0 ",
                              "82 MB",
                              ""),
                          const SizedBox(
                            height: 15,
                          ),
                          _buildScrollablegames(
                              "assets/codapk.jpeg",
                              "Call of Duty:Mobile Season 9",
                              "Strategy Tactics Casual Royalty",
                              "4.2 ",
                              "2.7 GB",
                              ""),
                          const SizedBox(
                            height: 15,
                          ),
                          _buildScrollablegames(
                              "assets/minecraftapk.webp",
                              "Minecraft: Play with Friends",
                              "Mojang Arcade Simula Sandbox",
                              "4.4 ",
                              "1.2 GB",
                              ""),
                        ],
                      ),
                      const SizedBox(
                        width: 35,
                      ),
                      Column(
                        children: [
                          _buildScrollablegames(
                              "assets/shadowapk.webp",
                              "Shadow Fight 4",
                              "RolePlay Casual Action Fighting",
                              "4.5 ",
                              "106 MB",
                              "₹260.00"),
                          const SizedBox(
                            height: 15,
                          ),
                          _buildScrollablegames(
                              "assets/clashroyalapk.png",
                              "Clash Royale",
                              "Strategy Tactics Casual Royalty",
                              "4.2 ",
                              "682 MB",
                              ""),
                          const SizedBox(
                            height: 15,
                          ),
                          _buildScrollablegames(
                              "assets/carxstreetapk.jpeg",
                              "CarX Street",
                              "Carx Technologies LLC Racing",
                              "4.4 ",
                              "1.2 GB",
                              ""),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(children: [
                  const Text(
                    "",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      "",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  const Text(
                    "Mobile Apps",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    width: 170,
                  ),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.arrow_right_alt))
                ]),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          _buildScrollablegames(
                              "assets/whatappapk1.jpeg",
                              "WhatsApp Messenger",
                              "WhatsApp LLC Communication c",
                              "4.5 ",
                              "106 MB",
                              "₹260.00"),
                          const SizedBox(
                            height: 15,
                          ),
                          _buildScrollablegames(
                              "assets/instagramapk.jpeg",
                              "Instagram",
                              "Instagram Social Networking c",
                              "4.2 ",
                              "682 MB",
                              ""),
                          const SizedBox(
                            height: 15,
                          ),
                          _buildScrollablegames(
                              "assets/snapchatapk.png",
                              "SnapChat",
                              "Carx Technologies LLC Racing",
                              "4.4 ",
                              "1.2 GB",
                              ""),
                        ],
                      ),
                      const SizedBox(
                        width: 35,
                      ),
                      Column(
                        children: [
                          _buildScrollablegames(
                              "assets/candycrushapk.png",
                              "Candy Crush Saga",
                              "RolePlay Casual Action Fighting",
                              "4.0 ",
                              "82 MB",
                              ""),
                          const SizedBox(
                            height: 15,
                          ),
                          _buildScrollablegames(
                              "assets/codapk.jpeg",
                              "Call of Duty:Mobile Season 9",
                              "Strategy Tactics Casual Royalty",
                              "4.2 ",
                              "2.7 GB",
                              ""),
                          const SizedBox(
                            height: 15,
                          ),
                          _buildScrollablegames(
                              "assets/minecraftapk.webp",
                              "Minecraft: Play with Friends",
                              "Mojang Arcade Simula Sandbox",
                              "4.4 ",
                              "1.2 GB",
                              ""),
                        ],
                      ),
                      const SizedBox(
                        width: 35,
                      ),
                      Column(
                        children: [
                          _buildScrollablegames(
                              "assets/shadowapk.webp",
                              "Shadow Fight 4",
                              "RolePlay Casual Action Fighting",
                              "4.5 ",
                              "106 MB",
                              "₹260.00"),
                          const SizedBox(
                            height: 15,
                          ),
                          _buildScrollablegames(
                              "assets/clashroyalapk.png",
                              "Clash Royale",
                              "Strategy Tactics Casual Royalty",
                              "4.2 ",
                              "682 MB",
                              ""),
                          const SizedBox(
                            height: 15,
                          ),
                          _buildScrollablegames(
                              "assets/carxstreetapk.jpeg",
                              "CarX Street",
                              "Carx Technologies LLC Racing",
                              "4.4 ",
                              "1.2 GB",
                              ""),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Widget _buildForYouTab(String text) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color.fromARGB(255, 2, 80, 143),
            width: 3,
          ),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
            color: const Color.fromARGB(255, 2, 80, 143),
            fontWeight: FontWeight.w600,
            fontSize: 16),
      ),
    );
  }

  Widget _buildForYouTab1(String text) {
    return Container(
      child: Text(
        text,
        style: const TextStyle(
            color: Color.fromARGB(255, 37, 38, 39),
            fontWeight: FontWeight.w600,
            fontSize: 16),
      ),
    );
  }
}

Widget iconForStatuscheckdone() {
  return const Icon(Icons.download_done);
}

Widget iconForStauscheck() {
  return const Icon(Icons.download);
}

Widget buildScrollableStack(
  String imageAssetPath,
  String apkImageAsset,
  String description,
  String appName,
  String statusbutton,
) {
  return Stack(
    children: [
      Stack(
        children: [
          Container(
            height: 270,
            width: 386,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                imageAssetPath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 270,
            width: 386,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.6),
                  Colors.black.withOpacity(0.0),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 30,
            width: 103,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.7),
              borderRadius: const BorderRadius.only(bottomRight: Radius.circular(20)),
            ),
            child: const Center(
              child: Text(
                "Update Now",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 95),
                SizedBox(
                  width: 342,
                  child: Text(
                    description,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          apkImageAsset,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                appName,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.download,
                                  color: Colors.white,
                                  size: 17,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  statusbutton,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 14, right: 0),
                          child: Container(
                            height: 50,
                            width: 75,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                statusbutton,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ],
  );
}

Widget _buildScrollablegames(String apkimage, String apkname, String gamestats,
    String ratingmb, String sizemb, String price) {
  List<String> statsList = gamestats.split(" ");
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
          height: 85,
          width: 85,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(apkimage))),
      const SizedBox(
        width: 10,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              apkname,
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.black),
            ),
          ),
          Container(
            child: Row(
              children: [
                for (int i = 0; i < statsList.length; i++) ...[
                  Text(
                    statsList[i],
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  if (i != statsList.length - 1) ...[
                    Container(
                      margin: const EdgeInsets.only(bottom: 8),
                      child: const Center(
                        child: Text(
                          ".",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                  const SizedBox(
                    width: 5,
                  )
                ],
              ],
            ),
          ),
          const SizedBox(
            height: 0,
          ),
          Container(
            child: Row(
              children: [
                Text(
                  ratingmb,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.black),
                ),
                const Icon(
                  Icons.star,
                  size: 14,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  sizemb,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.black),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  price,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.black),
                )
              ],
            ),
          ),
        ],
      )
    ],
  );
}
