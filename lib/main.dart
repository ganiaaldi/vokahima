import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

import 'FirstPage.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setEnabledSystemUIOverlays([]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vokahima',
      theme: ThemeData(
          fontFamily: 'OpenSans',
          elevatedButtonTheme : ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(primary: Colors.blue),
        ),
      ),
      home: FirstPage(),
    );
  }
}

