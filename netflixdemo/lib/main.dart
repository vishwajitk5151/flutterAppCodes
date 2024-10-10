import 'package:flutter/material.dart';

void main() {
  runApp(NetflixApp());
}

class NetflixApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix Simple Layout',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: NetflixHomePage(),
      debugShowCheckedModeBanner: false, // Hide the debug banner
    );
  }
}

class NetflixHomePage extends StatelessWidget {
  // Fixed movie posters URLs
  final List<String> trendingMovies = [
    'https://image.tmdb.org/t/p/w500/qNBAXBIQlnOThrVvA6mA2B5ggV6.jpg', // Spider-Man: No Way Home
    'https://image.tmdb.org/t/p/w500/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg', // Avatar: The Way of Water
    'https://image.tmdb.org/t/p/w500/odJ4hx6g6vBt4lBWKFD1tI8WS4x.jpg', // Dune
    'https://image.tmdb.org/t/p/w500/w2PMyoyLU22YvrGK3smVM9fW1jj.jpg', // No Time to Die
    'https://image.tmdb.org/t/p/w500/9Gtg2DzBhmYamXBS1hKAhiwbBKS.jpg', // Free Guy
  ];

  final List<String> popularMovies = [
    'https://image.tmdb.org/t/p/w500/zEqyD0SBt6HL7W9JQoWwtd5Do1T.jpg', // John Wick 4
    'https://image.tmdb.org/t/p/w500/iZvzMpREGiqDQ5eYbx8z70qPgst.jpg', // Fast X
    'https://image.tmdb.org/t/p/w500/sv1xJUazXeYqALzczSZ3O6nkH75.jpg', // The Flash
    'https://image.tmdb.org/t/p/w500/rktDFPbfHfUbArZ6OOOKsXcv0Bm.jpg', // Guardians of the Galaxy Vol. 3
    'https://image.tmdb.org/t/p/w500/3GrRgt6CiLIUXUtoktcv1g2iwT5.jpg', // The Super Mario Bros. Movie
  ];

  final List<String> newReleases = [
    'https://image.tmdb.org/t/p/w500/8I37NtDffNV7AZlDa7uDvvqhovU.jpg', // Mission: Impossible - Dead Reckoning Part One
    'https://image.tmdb.org/t/p/w500/r7Dfg9aRZ78gJsmDlCirIIlNH3d.jpg', // Oppenheimer
    'https://image.tmdb.org/t/p/w500/5OtRrvblfsYHgGq8RZusC9CpO5Y.jpg', // Barbie
    'https://image.tmdb.org/t/p/w500/gPbM0MK8CP8A174rmUwGsADNYKD.jpg', // Blue Beetle
    'https://image.tmdb.org/t/p/w500/A5P3vFu2xMl9TXOP0xQ97pKPpxH.jpg', // The Equalizer 3
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Netflix',
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {
              // Search functionality can be implemented here
            },
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Banner with gradient overlay
            Stack(
              children: [
                Container(
                  height: 500,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://image.tmdb.org/t/p/original/5YZbUmjbMa3ClvSW1Wj3D6XGolb.jpg'), // Guardians of the Galaxy Vol. 3
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 500,
                  decoration: BoxDecoration(
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

            // Movie Categories
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Trending Now',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            buildMovieList(trendingMovies),

            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Popular on Netflix',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            buildMovieList(popularMovies),

            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'New Releases',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            buildMovieList(newReleases),
          ],
        ),
      ),
    );
  }

  Widget buildMovieList(List<String> movies) {
    return Container(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: FadeInImage.assetNetwork(
                placeholder: 'assets/image.jpg',
                image: movies[index],
                fit: BoxFit.cover,
                imageErrorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 160,
                    color: Colors.grey,
                    child: Icon(Icons.error, color: Colors.white),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
