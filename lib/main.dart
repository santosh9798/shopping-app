import 'package:flutter/material.dart';
import 'package:shopping/login.dart';
import 'package:shopping/splash.dart';
import 'package:shopping/signup.dart';
import 'package:shopping/home.dart';
import 'package:shopping/featured.dart';
import 'package:shopping/collection.dart';
import 'package:shopping/drawer.dart';
import 'package:shopping/gallery.dart';
import 'package:shopping/secondsplash.dart';
import 'package:shopping/sizeAnimation.dart';
import 'package:shopping/listview.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shopping/profile.dart';
import 'package:shopping/productdesc.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => splash(),
        '/login': (context) => login(),
        '/signup': (context) => signup(),
        '/home': (context) => home(),
        '/featured': (context) => featured(),
        '/collection': (context) => collection(),
        '/drawer': (context) => drawer(),
        '/gallery': (context) => gallery(),
        '/secondsplash': (context) => secondsplash(),
        '/sizeAnimation': (context) => SizeAnimation(),
        '/listview': (context) => listview(),
        '/profile': (context) => profile(),
        '/productdesc': (context) => productdesc(),
      }));
}

var animationTypeList = [
  SizeAnimation.routeName,
];
