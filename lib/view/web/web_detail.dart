import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vokahima/model/candidate.dart';
import 'package:vokahima/vote_page.dart';

var titleDetail = TextStyle(
    fontFamily: 'OpenSans',
    fontWeight: FontWeight.bold,
    fontSize: 24,
    color: Colors.black);

var titleSub = TextStyle(
    fontFamily: 'OpenSans',
    fontWeight: FontWeight.bold,
    fontSize: 22,
    color: Colors.black);

var regularText = TextStyle(
    fontFamily: 'OpenSans',
    fontSize: 18,
    color: Colors.black);

var buttonText = TextStyle(
    fontFamily: 'OpenSans', fontWeight: FontWeight.bold, color: Colors.white);

class DetailWeb extends StatelessWidget {
  final Candidate candidate;

  DetailWeb({required this.candidate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment:
            MainAxisAlignment.spaceEvenly,
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
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(candidate.nameKahim,style: regularText),
                        Text(candidate.gradeKahim,style: regularText),
                        Text(candidate.classKahim,style: regularText),
                        Text(candidate.divisionKahim,style: regularText),
                      ],
                    ),
                    Expanded(
                        child: Container(
                            height: 50,
                            child: VerticalDivider(
                                color: Colors.blueGrey))),
                    Column(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(candidate.nameWakahim,style: regularText),
                        Text(candidate.gradeWakahim,style: regularText),
                        Text(candidate.classWakahim,style: regularText),
                        Text(candidate.divisionWakahim,style: regularText),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "Visi",
                    textAlign: TextAlign.center,
                    style: titleSub,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      candidate.vision,
                      textAlign: TextAlign.justify,
                      style: regularText,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "Misi",
                    textAlign: TextAlign.center,
                    style: titleSub,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      candidate.mission,
                      textAlign: TextAlign.justify,
                      style: regularText,
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
          child: Text('Pilih Kandidat Ini', style: buttonText),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context)
                => VotePage()
                ));
          },
        ),
      ),
    );
  }
}

