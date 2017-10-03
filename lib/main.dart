import 'package:flutter/material.dart';
import 'package:favourite_movies/ui/home/HomePage.dart';
import 'package:favourite_movies/Routes.dart';

void main() {
  Routes.initRoutes();
  runApp(new MaterialApp(
    title: 'Favourite Movies',
    home: new HomePage(),
  ));
}
