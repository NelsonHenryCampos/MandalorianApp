import 'package:flutter/cupertino.dart';
import 'package:mandalorian/components/cast_cube.dart';
import 'package:mandalorian/screens/about_page.dart';
import 'package:mandalorian/screens/cast_page.dart';
import 'package:mandalorian/screens/series_page.dart';
import 'package:mandalorian/screens/trailer_page.dart';

class MenuModel {
  String text;
  Widget page;

  MenuModel({this.text, this.page});
}



var menu = [
  MenuModel(text: "ABOUT", page: AboutPage()),
  MenuModel(text: "TRAILER", page: TrailerPage()),
  MenuModel(text: "SERIES", page: SeriesPage()),
  MenuModel(text: "CAST", page: CastMain()),
];