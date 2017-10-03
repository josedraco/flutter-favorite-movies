import 'package:flutter/material.dart';
import 'package:favourite_movies/Theme.dart' as Theme;
import 'package:favourite_movies/models/Movie.dart';

class MovieDetailBody extends StatelessWidget {
  final Movie movie;

  MovieDetailBody(this.movie);

  @override
  Widget build(BuildContext context) {
    return new Stack(children: <Widget>[
      new Container(
        color: Theme.Colors.primaryBackground,
        child: new Center(
          child: new Hero(
            tag: 'movie-cover-${movie.id}',
            child: new Image(
              image: new AssetImage('assets/covers/${movie.cover}'),
              height: Theme.Dimens.cardHeight * 2,
              width: Theme.Dimens.coverWidth * 2,
            ),
          ),
        ),
      ),
    ]);
  }
}
