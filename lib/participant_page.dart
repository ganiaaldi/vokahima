import 'package:flutter/material.dart';

class ParticipantPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Partisipan',
          style: TextStyle(fontFamily: 'OpenSans', fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
        ),
        ),
      body:
      Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Image.asset('images/human_board.png'),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Farm House Lembang',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Lembang'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      );
  }
}