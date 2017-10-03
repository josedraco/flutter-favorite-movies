import 'package:flutter/material.dart';
import 'package:favourite_movies/Theme.dart' as Theme;

class BetterAppBar extends StatelessWidget {
  final String title;

  BetterAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return new Container(
      padding: new EdgeInsets.only(
          top: statusBarHeight
      ),
      height: statusBarHeight + Theme.Dimens.appBarHeight,
      child: new Center(
        child: new Text(
          title,
          style: Theme.TextStyles.appBarTitle,
        ),
      ),
      decoration: new BoxDecoration(
        color: Theme.Colors.primaryBackground,
        border: new Border(
          bottom: new BorderSide(
            color: Colors.grey[100],
            width: 2.0,
          ),
        ),
      ),
    );
  }
}
