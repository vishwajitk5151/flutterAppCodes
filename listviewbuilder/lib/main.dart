import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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
            "ListView with Random Images",
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24),
          ),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: const RandomImageList(),
      ),
    );
  }
}

class RandomImageList extends StatefulWidget {
  const RandomImageList({super.key});

  @override
  _RandomImageListState createState() => _RandomImageListState();
}

class _RandomImageListState extends State<RandomImageList> {
  List<String> imageUrls = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchRandomImages();
  }

  Future<void> fetchRandomImages() async {
    const url =
        'https://api.unsplash.com/photos/random?count=30&client_id=XkHWb6JOzvQsW4kkO1gXNBSTpFNCRyLCs51k4edKOcM'; // Replace with your Unsplash API key
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        setState(() {
          imageUrls =
              data.map((item) => item['urls']['small'] as String).toList();
          isLoading = false;
        });
      } else {
        throw Exception('Failed to load images');
      }
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(child: CircularProgressIndicator())
        : ListView.builder(
            itemCount: imageUrls.length,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Text(
                    "Index: $index",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 10),
                  FadeInImage.assetNetwork(
                    placeholder: 'assets/loading.jpg',
                    fadeInDuration: const Duration(milliseconds: 300),
                    image: imageUrls[index],
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 20),
                ],
              );
            },
          );
  }
}
