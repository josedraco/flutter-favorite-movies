import 'package:favourite_movies/Theme.dart' as Theme;
import 'package:flutter/material.dart';

class DetailAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return new Container(
      padding: new EdgeInsets.only(
        top: statusBarHeight,
      ),
      height: statusBarHeight + Theme.Dimens.appBarHeight,
      child: new Row(
        children: <Widget>[
          new BackButton(color: Theme.Colors.textColor),
        ],
      ),
    );
  }
}
