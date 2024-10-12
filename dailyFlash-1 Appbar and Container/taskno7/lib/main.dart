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
          title: const Text(
            "AppBar",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 24,
                color: Colors.black87),
          ),
          centerTitle: true,
          actions: const [
            Padding(
                padding: EdgeInsets.only(right: 10), child: Icon(Icons.search))
          ],
        ),
        body: const ImageScrollWidget(),
      ),
    );
  }
}

class ImageScrollWidget extends StatefulWidget {
  const ImageScrollWidget({super.key});

  @override
  _ImageScrollWidgetState createState() => _ImageScrollWidgetState();
}

class _ImageScrollWidgetState extends State<ImageScrollWidget> {
  final ScrollController _scrollController = ScrollController();

  void _scrollToNext() {
    _scrollController.animateTo(
      _scrollController.offset + MediaQuery.of(context).size.width,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  void _scrollToPrevious() {
    _scrollController.animateTo(
      _scrollController.offset - MediaQuery.of(context).size.width,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            controller: _scrollController,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: 180,
                      child: Image.network(
                        "https://img.freepik.com/free-photo/illustration-anime-character-rain_23-2151394666.jpg",
                        fit: BoxFit.cover,
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: 180,
                      child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdJPNnW5bWxP5P5iaR1K2YNsReK8EpUMcZzQ&s",
                        fit: BoxFit.cover,
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: 180,
                      child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJ_EBbXFzfE95zvP4MX_Wyg1XRi7FpEG7cfQ&s",
                        fit: BoxFit.cover,
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: 180,
                      child: Image.network(
                        "https://motionbgs.com/i/c/364x205/media/6372/blue-haired-blind-girl.jpg",
                        fit: BoxFit.cover,
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: 180,
                      child: Image.network(
                        "https://images6.alphacoders.com/133/thumb-350-1337289.webp",
                        fit: BoxFit.cover,
                      )),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: _scrollToPrevious,
                child: const Text("Scroll Left"),
              ),
              ElevatedButton(
                onPressed: _scrollToNext,
                child: const Text("Scroll Right"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
