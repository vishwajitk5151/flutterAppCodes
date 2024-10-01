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
      home: PlayerImageChanger(),
    );
  }
}

class PlayerImageChanger extends StatefulWidget {
  const PlayerImageChanger({super.key});

  @override
  State<PlayerImageChanger> createState() => _PlayerImageChangerState();
}

class _PlayerImageChangerState extends State<PlayerImageChanger> {
  int _currentIndex = 0;

  final List<String> _playerImages = [
    'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRN_YLneDIMiLFQizeNOh3Y9bQs4a5nzAoD24ROXw-6zVQ7UZ-l', 
    'https://res.cloudinary.com/jerrick/image/upload/d_642250b563292b35f27461a7.png,f_jpg,fl_progressive,q_auto,w_1024/6434c7d58d3690001d7b54b9.jpg', 
    'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSe8q3dtNzKnEauf7_CPaiYgOQ0f27wn1OAGOiLOhhy1g_8HwpZGqV11wtgO0gs5kzTs-2pzWWr-wOSQcCsXmpIOaTQSs2NwX9nRJGCbwg',
    'https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcQGK7P0642sZXLHIc80Epyho1lAyzzNi-PED_skAV0QCEFN4wpVgYAJRk9JiA9QeVT0EVH6FAZbSC-nwR0', 
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4tXJ34llbmdJ0MBkuCdyfYoxtMRQQX5jbSg&s', 
  ];

  void _changeImage() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _playerImages.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cricket Player Images'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.image),
            onPressed: _changeImage,
            tooltip: 'Change Image',
          ),
        ],
      ),
      body: Center(
        child: Image.network(
          _playerImages[_currentIndex],
          height: 400,
          width: 400,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return const Text('Failed to load image');
          },
        ),
      ),
    );
  }
}
