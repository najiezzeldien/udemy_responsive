import 'dart:io';

import 'package:flutter/material.dart';
import 'package:udemy_responsive/desktop.dart';
import 'package:udemy_responsive/mobile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Builder(
        builder: (BuildContext context) {
          if (MediaQuery.of(context).size.width.toInt() <= 560) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaleFactor: 0.7,
              ),
              child: MediaQuery(
                  data: MediaQuery.of(context).copyWith(textScaleFactor: 1.5),
                  child: MobileScreen()),
            );
          }
          return DesktopScreen();
        },
      ),

      /*LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          print(constraints.minWidth.toInt());
          if (constraints.minWidth.toInt() <= 560) {
            return MobileScreen();
          }
          return DesktopScreen();
        },
      ),*/
    );
  }
}
