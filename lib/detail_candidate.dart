import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vokahima/model/candidate.dart';

import 'view/mobile/mobile_detail.dart';
import 'view/web/web_detail.dart';

var titleDetail = TextStyle(
    fontFamily: 'OpenSans',
    fontWeight: FontWeight.bold,
    fontSize: 24,
    color: Colors.black);

var titleSub = TextStyle(
    fontFamily: 'OpenSans',
    fontWeight: FontWeight.bold,
    fontSize: 18,
    color: Colors.black);

var buttonText = TextStyle(
    fontFamily: 'OpenSans', fontWeight: FontWeight.bold, color: Colors.white);

class DetailCandidate extends StatelessWidget {
  final Candidate candidate;

  DetailCandidate({required this.candidate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detail Kandidat',
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
            return DetailMobile(candidate: candidate);
          } else {
            return DetailWeb(candidate: candidate);
          }
        },
      ),
    );
  }
}

