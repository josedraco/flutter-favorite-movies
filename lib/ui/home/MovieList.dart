import 'package:flutter/material.dart';
import 'package:favourite_movies/ui/home/MovieRow.dart';
import 'package:favourite_movies/Theme.dart' as Theme;
import 'package:favourite_movies/models/Movies.dart';

class MovieList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Flexible(
      child: new Container(
        child: new ListView.builder(
          itemExtent: 160.0,
          itemCount: MovieDao.movies.length,
          itemBuilder: (_, index) => new MovieRow(MovieDao.movies[index]),
        ),
        decoration: new BoxDecoration(
          color: Theme.Colors.primaryBackground,
        ),
      ),
    );
  }
}
