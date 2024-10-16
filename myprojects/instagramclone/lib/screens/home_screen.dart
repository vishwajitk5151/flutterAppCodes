import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/post_card.dart';
import '../screens/search_screen.dart';  

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0; 

  final List<Widget> _screens = [

    Scaffold(

      appBar: AppBar(
        title: const Text(
          'Instagram',
          style: TextStyle(
            fontFamily: 'Billabong', 
            fontSize: 32,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(icon: const Icon(Icons.add_box_outlined), onPressed: () {}),
          IconButton(icon: const Icon(Icons.favorite_border), onPressed: () {}),
          IconButton(icon: const Icon(Icons.send_outlined), onPressed: () {}),
        ],
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          const Row(
            children: [],
          ),
          ListView(
            children: const [
              PostCard(
                profileImageUrl: 'https://randomuser.me/api/portraits/men/1.jpg',
                postImageUrl: 'https://static.vecteezy.com/system/resources/thumbnails/033/662/051/small/cartoon-lofi-young-manga-style-girl-while-listening-to-music-in-the-rain-ai-generative-photo.jpg',
                username: 'Virat Kholi',
                description: 'A beautiful sunset! #sunset #nature',
                timeAgo: '2 hours ago',
                comments: 35,
              ),
              PostCard(
                profileImageUrl: 'https://randomuser.me/api/portraits/women/2.jpg',
                postImageUrl: 'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDIwMHx8c3VubmV0JTIwYWR2ZW50dXJlJTIwdGF3fGVufDB8fHx8MTY4NTU3MTkzMQ&ixlib=rb-4.0.3&q=80&w=1080',
                username: 'Rohit Sharama',
                description: 'Exploring the mountains today. #adventure',
                timeAgo: '5 hours ago',
                comments: 20,
              ),
              PostCard(
                profileImageUrl: 'https://randomuser.me/api/portraits/men/3.jpg',
                postImageUrl: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDEwMHx8Y2l0eWxpaGV8ZW58MHx8fHwxNjg1NTcxOTM0&ixlib=rb-4.0.3&q=80&w=1080',
                username: 'Ms Dhoni',
                description: 'Loving the urban vibes in this city! #citylife',
                timeAgo: '1 day ago',
                comments: 100,
              ),
              PostCard(
                profileImageUrl: 'https://randomuser.me/api/portraits/women/4.jpg',
                postImageUrl: 'https://images.unsplash.com/photo-1511765224389-37f0e77cf0eb?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDUwfHxlYWxpbmF0ZSUyMHBhbmF8ZW58MHx8fHwxNjg1NTcyMDA0&ixlib=rb-4.0.3&q=80&w=1080',
                username: 'emily_rose',
                description: 'Bringing positive energy! #goodvibes',
                timeAgo: '3 days ago',
                comments: 50,
              ),
              PostCard(
                profileImageUrl: 'https://randomuser.me/api/portraits/men/5.jpg',
                postImageUrl: 'https://images.unsplash.com/photo-1503428593586-e225b39bddfe?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDUwfHxlYWxpbmF0ZSUyMHBhbmF8ZW58MHx8fHwxNjg1NTcyMDA0&ixlib=rb-4.0.3&q=80&w=1080',
                username: 'robert_brown',
                description: 'A peaceful retreat by the sea. #ocean #calm',
                timeAgo: '1 week ago',
                comments: 75,
              ),
            ],
          ),
        ],
      ),
    ),
    SearchScreen(), 
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex], 
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped, // Pass the callback
      ),
    );
  }
}
