import 'package:flutter/material.dart';
import 'package:favourite_movies/models/Movie.dart';
import 'package:favourite_movies/models/Movies.dart';
import 'package:favourite_movies/ui/movie_detail/DetailAppBar.dart';
import 'package:favourite_movies/ui/movie_detail/MovieDetailBody.dart';

class MovieDetailPage extends StatelessWidget {
  final Movie movie;

  MovieDetailPage(String id) : movie = MovieDao.getPlanetById(id);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new MovieDetailBody(movie),
          new DetailAppBar(),
        ],
      ),
    );
  }
}
