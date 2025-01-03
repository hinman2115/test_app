import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class MovieDetailPage extends StatelessWidget {
  final Movie movie;

  // Constructor to receive the movie details
  MovieDetailPage({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              child: Image.network(
                movie.poster,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              movie.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(height: 8.0),
            // Add more details as needed
            Text(
              'Genre: ${movie.genre}',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'Released: ${movie.released}',
              style: TextStyle(color: Colors.white),
            ),
            // Add other fields here like plot, director, etc.
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
