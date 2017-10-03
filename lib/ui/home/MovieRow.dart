import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:favourite_movies/Routes.dart';
import 'package:favourite_movies/Theme.dart' as Theme;
import 'package:favourite_movies/models/Movie.dart';

class MovieRow extends StatelessWidget {
  final Movie movie;

  MovieRow(this.movie);

  @override
  Widget build(BuildContext context) {
    final movieCover = new Container(
      height: Theme.Dimens.coverHeight,
      width: Theme.Dimens.coverWidth,
      margin: const EdgeInsets.only(
        left: Theme.Dimens.coverMarginLeft,
        top: Theme.Dimens.cardMarginTop,
        bottom: Theme.Dimens.cardMarginBottom,
      ),
      child: new Hero(
        tag: 'movie-cover-${movie.id}',
        child: new Image(
          image: new AssetImage('assets/covers/${movie.cover}'),
          fit: BoxFit.contain,
          alignment: FractionalOffset.centerLeft,
        ),
      ),
    );

    final movieCard = new Container(
      height: Theme.Dimens.cardHeight,
      margin: const EdgeInsets.only(
        left: Theme.Dimens.cardMarginLeft,
        right: Theme.Dimens.cardMarginRight,
        top: Theme.Dimens.cardMarginTop,
        bottom: Theme.Dimens.cardMarginBottom,
      ),
      decoration: new BoxDecoration(
        color: Theme.Colors.primaryBackground,
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          new BoxShadow(
            color: Theme.Colors.shadowColor,
            blurRadius: 8.0,
            offset: new Offset(0.0, 0.0),
          ),
        ],
      ),
      child: new Container(
        margin: const EdgeInsets.only(
          top: 16.0,
          left: 12.0,
        ),
        constraints: new BoxConstraints.expand(),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Container(
              child: new Text(
                '${movie.title}',
                style: Theme.TextStyles.cardTitle,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              margin: const EdgeInsets.only(
                bottom: 4.0,
              ),
            ),
            new Container(
              child: new Text(
                '${movie.plot}',
                style: Theme.TextStyles.cardStaring,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              margin: const EdgeInsets.only(
                bottom: 6.0,
              ),
            ),
            new Container(
              child: new Text(
                '${movie.rating}%',
                style: Theme.TextStyles.cardRating,
              ),
              margin: const EdgeInsets.only(
                bottom: 6.0,
              ),
            ),
          ],
        ),
      ),
    );

    return new Container(
      child: new FlatButton(
        onPressed: () => _navigateTo(context, movie.id),
        child: new Stack(
          children: <Widget>[
            movieCard,
            movieCover,
          ],
        ),
      ),
    );
  }

  _navigateTo(context, String id) {
    Routes.navigateTo(
      context,
      '/detail/${movie.id}',
      transition: TransitionType.inFromRight,
    );
  }
}
