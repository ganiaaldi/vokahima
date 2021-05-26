import 'package:flutter/material.dart';
import 'view/mobile/mobile_home.dart';
import 'view/web/web_home.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth <= 600) {
        return HomeMobile();
      } else {
        return HomeWeb();
      }
    },
    ),
    );
  }
}
