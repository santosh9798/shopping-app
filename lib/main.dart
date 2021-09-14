import 'package:flutter/material.dart';
import 'package:shopping/login.dart';
import 'package:shopping/splash.dart';
import 'package:shopping/signup.dart';
import 'package:shopping/home.dart';
import 'package:shopping/featured.dart';
import 'package:shopping/collection.dart';
import 'package:shopping/drawer.dart';
import 'package:shopping/gallery.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/featured',
      routes: {
        '/splash': (context) => splash(),
        '/login': (context) => login(),
        '/signup': (context) => signup(),
        '/home': (context) => home(),
        '/featured': (context) => featured(),
        '/collection': (context) => collection(),
        '/drawer': (context) => drawer(),
        '/gallery': (context) => gallery(),
      }));
}
