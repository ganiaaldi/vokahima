import 'package:flutter/material.dart';

import '../../candidate_page.dart';
import '../../participant_page.dart';

var titleText = TextStyle(
    fontFamily: 'OpenSans',
    fontWeight: FontWeight.bold,
    fontSize: 40,
    color: Colors.blue);
var buttonText = TextStyle(
    fontFamily: 'OpenSans', fontWeight: FontWeight.bold, color: Colors.white);

class HomeWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Flexible(
            child: Container(
              margin: EdgeInsets.only(top: 120.0),
              child: Text(
                'Vokahima',
                textAlign: TextAlign.center,
                style: titleText,
              ),
            ),
          ),
          Expanded(
            child: Image.asset('images/human_board.png'),
          ),
          Center(
            child: IntrinsicWidth(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    child: Text(
                      "Kandidat Pemilihan",
                      style: buttonText,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return CandidatePage();
                          }));
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    child: Text(
                      "Partisipan",
                      style: buttonText,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return ParticipantPage();
                          }));
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
