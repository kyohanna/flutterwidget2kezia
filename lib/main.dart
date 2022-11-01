import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutterwidget2kezia/halaman.dart';


void main() {
  runApp(const Main());
}

class Main extends StatefulWidget {
  const Main({ Key? key }) : super(key: key);

  // This widget is the root of your application.
 @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'widget2',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Hal1(),
        //Book.routeName: (context) => Book()
      },
    );
  }
}
