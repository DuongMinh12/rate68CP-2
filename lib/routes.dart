import 'package:flutter/material.dart';
import 'package:testappppp/screen/final_page/final_page.dart';
import 'package:testappppp/screen/fliter_page/filter_page.dart';
import 'package:testappppp/screen/total_page/total_page.dart';
import 'screen/main_page/main_page.dart';
import 'package:testappppp/add_images.dart';

final Map<String, WidgetBuilder> routes = {
  MainPage.routeName: (context) => MainPage(),
  TotalPage.routeName: (context) => TotalPage(),
  TestPage.routeName: (context) => TestPage(),
  FilterPage.routeName: (context) => FilterPage(),

};