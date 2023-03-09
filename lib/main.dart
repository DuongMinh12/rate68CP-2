import 'package:flutter/material.dart';
import 'package:testappppp/routes.dart';
import 'package:testappppp/screen/final_page/final_page.dart';
import 'package:testappppp/screen/fliter_page/filter_page.dart';
import 'package:testappppp/screen/main_page/main_page.dart';
import 'package:testappppp/screen/total_page/total_page.dart';

void main()=> runApp(
   MaterialApp(
    initialRoute: TotalPage.routeName,
     routes: routes,
     debugShowCheckedModeBanner: false,
  )
);

