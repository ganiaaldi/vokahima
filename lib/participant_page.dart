import 'package:flutter/material.dart';
import 'view/mobile/mobile_participant.dart';
import 'view/web/web_participant.dart';

var nameText = TextStyle(
    fontFamily: 'OpenSans',
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: Colors.black);

class ParticipantPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Partisipan Voting',
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
            return ParticipantMobile();
          } else {
            return ParticipantWeb(gridCount: 2);
          }
        },
      ),
    );
  }
}