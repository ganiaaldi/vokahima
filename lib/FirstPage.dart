import 'package:flutter/material.dart';

var titleText = TextStyle(fontFamily: 'OpenSans', fontWeight: FontWeight.bold, fontSize: 40, color: Colors.blue);
var buttonText = TextStyle(fontFamily: 'OpenSans', fontWeight: FontWeight.bold, color: Colors.white);

class FirstPage extends StatelessWidget {
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
                style:titleText,
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
                    ElevatedButton(
                      child: Text("Tentang Vokahima", style: buttonText,),
                      onPressed: () {},
                    ),
                    ElevatedButton(
                      child: Text("Kandidat Pemilihan", style: buttonText,),
                      onPressed: () {},
                    ),
                    ElevatedButton(
                      child: Text("Partisipan", style: buttonText,),
                      onPressed: () {},
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