import 'package:flutter/material.dart';

void main() {
  runApp(const NetflixApp());
}

class NetflixApp extends StatelessWidget {
  const NetflixApp({super.key});

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
      debugShowCheckedModeBanner: false, 
    );
  }
}

class NetflixHomePage extends StatelessWidget {
  
  final List<String> trendingMovies = [
    'https://image.tmdb.org/t/p/w500/qNBAXBIQlnOThrVvA6mA2B5ggV6.jpg', 
    'https://image.tmdb.org/t/p/w500/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg', 
    'https://image.tmdb.org/t/p/w500/odJ4hx6g6vBt4lBWKFD1tI8WS4x.jpg', 
    'https://image.tmdb.org/t/p/w500/w2PMyoyLU22YvrGK3smVM9fW1jj.jpg', 
    'https://image.tmdb.org/t/p/w500/9Gtg2DzBhmYamXBS1hKAhiwbBKS.jpg', 
  ];

  final List<String> popularMovies = [
    'https://image.tmdb.org/t/p/w500/zEqyD0SBt6HL7W9JQoWwtd5Do1T.jpg', 
    'https://image.tmdb.org/t/p/w500/iZvzMpREGiqDQ5eYbx8z70qPgst.jpg',
    'https://image.tmdb.org/t/p/w500/sv1xJUazXeYqALzczSZ3O6nkH75.jpg', 
    'https://image.tmdb.org/t/p/w500/rktDFPbfHfUbArZ6OOOKsXcv0Bm.jpg', 
    'https://image.tmdb.org/t/p/w500/3GrRgt6CiLIUXUtoktcv1g2iwT5.jpg', 
  ];

  final List<String> newReleases = [
    'https://image.tmdb.org/t/p/w500/8I37NtDffNV7AZlDa7uDvvqhovU.jpg', 
    'https://image.tmdb.org/t/p/w500/r7Dfg9aRZ78gJsmDlCirIIlNH3d.jpg', 
    'https://image.tmdb.org/t/p/w500/5OtRrvblfsYHgGq8RZusC9CpO5Y.jpg', 
    'https://image.tmdb.org/t/p/w500/gPbM0MK8CP8A174rmUwGsADNYKD.jpg', 
    'https://image.tmdb.org/t/p/w500/A5P3vFu2xMl9TXOP0xQ97pKPpxH.jpg', 
  ];

   NetflixHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
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
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {
              
            },
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Stack(
              children: [
                Container(
                  height: 500,
                  decoration: const BoxDecoration(
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

           
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Trending Now',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            buildMovieList(trendingMovies),

            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Popular on Netflix',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            buildMovieList(popularMovies),

            const Padding(
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
    return SizedBox(
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
                    child: const Icon(Icons.error, color: Colors.white),
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
