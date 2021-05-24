import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vokahima/model/candidate.dart';

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
                child: Image.asset(candidate.imageAsset),
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                candidate.nameCandidate,
                textAlign: TextAlign.center,
               style: titleDetail,
                ),
              ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blueGrey,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(candidate.nameKahim),
                        Text(candidate.gradeKahim),
                        Text(candidate.classKahim),
                        Text(candidate.divisionKahim),
                      ],
                    ),
                    Expanded(
                        child: Container(
                            height: 50,
                            child: VerticalDivider(
                                color: Colors.blueGrey))),
                    Column(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(candidate.nameWakahim),
                        Text(candidate.gradeWakahim),
                        Text(candidate.classWakahim),
                        Text(candidate.divisionWakahim),
                      ],
                    ),
                  ],
                ),
              ),
            ),
      Container(
        margin: EdgeInsets.only(top: 16.0),
            child: Column(
              mainAxisAlignment:
              MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "Visi",
                  textAlign: TextAlign.justify,
                  style: titleSub,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                child: Text(
                  candidate.vision,
                  textAlign: TextAlign.justify,
                ),
                ),
              ],
            ),
          ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Column(
                mainAxisAlignment:
                MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "Misi",
                    textAlign: TextAlign.justify,
                    style: titleSub,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      candidate.mission,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {},
          child: Text('Pilih Kandidat Ini', style: buttonText),
        ),
      ),
    );
  }
}

