import 'package:flutter/material.dart';
import 'view/mobile/mobile_candidate.dart';
import 'view/web/web_candidate.dart';

var nameText = TextStyle(
    fontFamily: 'OpenSans',
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: Colors.black);

class CandidatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kandidat Pemilihan',
          style: TextStyle(
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.white),
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return CandidateMobile();
          } else {
            return CandidateWeb(gridCount: 2);
          }
        },
      ),
    );
  }
}
