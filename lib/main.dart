import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'pages/Container_page.dart';
import 'pages/splash/SplashWidget.dart';

void main() {
  runApp(MyApp());
  if (Platform.isAndroid) {
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.green);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.white,
        ),
        home: Scaffold(
            resizeToAvoidBottomPadding: false, body: new Text('hhh')));
  }
}

